import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/dash_service/dash_service.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/kyc_status/response/kyc_status_response.dart';
import 'package:blue_business/core/models/todo/response/todo_response.dart';
import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/transaction_history/response/transaction_history_response.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/dashboard_pages/home/models/transaction_option/transaction_option.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = context.mediaQuery.size;

    await getDashData();
  }

  getDashData() async {
    getWalletBalance();
    getKyc();
    if (!locator<AppStateValues>().loadedTodo) {
      getTodos();
    }
    transactionController.addPageRequestListener((pageKey) {
      getTransactions(pageKey);
    });
  }

  copyWalletId() {
    Clipboard.setData(
            ClipboardData(text: locator<AppStateValues>().wallet!.walletCode))
        .then((value) {
      BlueToast.primaryWithcon("Copied to clipboard");
    });
  }

  bool _hideBalance = false;
  bool get hideBalance => _hideBalance;
  set hideBalance(bool v) {
    _hideBalance = v;
    notifyListeners();
  }

  onHideStateChanged(bool v) {
    hideBalance = v;
  }

  bool _todoLoading = false;
  bool get isTodoLoading => _todoLoading;
  set isTodoLoading(bool v) {
    _todoLoading = v;
    notifyListeners();
  }

  bool _kycLoading = false;
  bool get isKycLoading => _kycLoading;
  set isKycLoading(bool v) {
    _kycLoading = v;
    notifyListeners();
  }

  bool _loading = true;
  bool get isLoading => _loading;
  set isLoading(bool v) {
    _loading = v;
    notifyListeners();
  }

  bool showEmptyState() {
    return (locator<AppStateValues>().wallet == null) &&
        (!isKycLoading && !isLoading);
  }

  refreshWalletContainer() {
    getWalletBalance();
    getKyc();
    getTodos();
  }

  getWalletBalance() async {
    isLoading = true;
    WalletResponse resp =
        await DashService().getWalletBalance().onError((error, stackTrace) {
      return WalletResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      locator<AppStateValues>().wallet = resp.data!;
    } else {
      AppNotification.error(message: resp.message);
    }
    isLoading = false;
  }

  getTodos() async {
    isTodoLoading = true;

    TodoResponse resp =
        await DashService().getTodos().onError((error, stackTrace) {
      return TodoResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      locator<AppStateValues>().todos = resp.data!;
      locator<AppStateValues>().loadedTodo = true;
    } else {
      AppNotification.error(message: resp.message);
    }
    isTodoLoading = false;
  }

  int limit = 6;

  PagingController<int, TransactionHistory> transactionController =
      PagingController<int, TransactionHistory>(firstPageKey: 1);

  getTransactions(int page) async {
    try {
      TransactionResponse resp =
          await TransactionService().getTransactions(page, limit);
      if (resp.status == "success") {
        List<TransactionHistory> t = resp.data!.data;

        transactionController.appendLastPage(t);
      } else {
        transactionController.error = resp.message;
      }
    } catch (e) {
      transactionController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  getKyc() async {
    isKycLoading = true;

    KycStatusResponse resp =
        await DashService().getKycStatus().onError((error, stackTrace) {
      return KycStatusResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      locator<AppStateValues>().kycLevel = resp.data!.kyc;
    } else {
      AppNotification.error(message: resp.message);
    }

    isKycLoading = false;
  }

  getTopupAccount() async {
    AppLoader.start();
    TopupResponse resp =
        await DashService().getTopupAccount().onError((error, stackTrace) {
      return TopupResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      locator<AppStateValues>().account = resp.data!.account;
      BlueBottomSheet.topup();
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  showTopupModal() {
    if (locator<AppStateValues>().account != null) {
      BlueBottomSheet.topup();
    } else {
      getTopupAccount();
    }
  }

  List<TransactionOption> transactionOptions(BuildContext context) => [
        TransactionOption(
          buttonColor: AppColors.primary,
          icon: const Icon(
            Icons.arrow_outward_rounded,
            color: AppColors.white,
            size: 24,
          ),
          title: "Send",
          onTap: () {
            goToInitiatePayment(context);
          },
        ),
        TransactionOption(
          buttonColor: AppColors.otherBlue,
          icon: const RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.arrow_outward_rounded,
              color: AppColors.white,
              size: 24,
            ),
          ),
          title: "Receive",
          onTap: () {
            if (isLoading && locator<AppStateValues>().wallet == null) {
              BlueToast.primaryWithcon("Please wait...");
            } else {
              goToReceiveMoney(context);
            }
          },
        ),
        TransactionOption(
          buttonColor: AppColors.textColor,
          icon: const Icon(
            Icons.add,
            color: AppColors.white,
            size: 24,
          ),
          title: "Top up",
          onTap: showTopupModal,
        ),
        TransactionOption(
          buttonColor: AppColors.success,
          icon: Align(
            alignment: Alignment.center,
            child: Text(
              "-",
              style: AppTextStyles.header
                  .copyWith(color: AppColors.white, fontSize: 30.5),
            ),
          ),
          title: "Withdraw",
          onTap: () {
            goToInitiateWithdrawal(context);
          },
        )
      ];

  goToReceiveMoney(BuildContext context) {
    context.go(RoutePaths.receiveMoneyPath);
  }

  goToTransactionHistory(BuildContext context) {
    context.go(RoutePaths.transactionHistoryPath);
  }

  goToInitiatePayment(BuildContext context) {
    context.go("${RoutePaths.initiateTransactionPath}/pay");
  }

  goToInitiateWithdrawal(BuildContext context) {
    context.go("${RoutePaths.initiateTransactionPath}/withdraw");
  }
}
