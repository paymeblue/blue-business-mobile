import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/io/api/dash_service/dash_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/analytics/data/analytics_data.dart';
import 'package:blue_business/core/models/push_payment_request/push_payment.dart';
import 'package:blue_business/core/models/todo/todo.dart';
import 'package:blue_business/core/models/transaction_history/response/transaction_history_response.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/modules/dashboard_pages/home/models/transaction_option/transaction_option.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
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
    if (locator<AppStateValues>().todoState != FetchState.complete) {
      getTodos();
    }
    getAnalytics();
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

  bool showEmptyState() {
    return (locator<AppStateValues>().wallet == null) ||
        (walletState == FetchState.error);
  }

  refreshWalletContainer() {
    getWalletBalance();

    getTodos();
  }

  FetchState _walletState = FetchState.complete;
  FetchState get walletState => _walletState;
  set walletState(FetchState s) {
    _walletState = s;
    notifyListeners();
  }

  getWalletBalance() async {
    walletState = FetchState.loading;

    WalletResponse resp = await DashService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getWalletDetails()
        .onError((error, stackTrace) =>
            WalletResponse(message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      walletState = FetchState.complete;
      locator<AppStateValues>().wallet = resp.data;
    } else {
      walletState = FetchState.error;
    }
  }

  getTodos() async {}

  onTapTodo(TodoOption todo, BuildContext context) {
    if (todo.route != null) {
      context.go("${RoutePaths.settingsPath}/${todo.route}");
    } else if (todo.data != null) {
      if (todo.data!["type"] == "payment") {
        PushPayment payment = PushPayment.fromJson(todo.data!);
        BlueBottomSheet.paymentRequest(payment).then((value) {
          if (value) {
            context.go("/${payment.transactionId}${RoutePaths.pushPaymentPin}");
          }
        });
      }
    }
  }

  bool _saleL = false;
  bool get salesLoading => _saleL;
  set salesLoading(bool v) {
    _saleL = v;
    notifyListeners();
  }

  AnalyticsData? _d;
  AnalyticsData? get analyticsData => _d;
  set analyticsData(AnalyticsData? d) {
    _d = d;
    notifyListeners();
  }

  double _mIncrease = 0;
  double get mobileIncrease => _mIncrease;
  set mobileIncrease(double v) {
    _mIncrease = v;
    notifyListeners();
  }

  double _dIncrease = 0;
  double get desktopIncrease => _dIncrease;
  set desktopIncrease(double v) {
    _dIncrease = v;
    notifyListeners();
  }

  getAnalytics() async {}

  calculateIncrease() {
    double currentMobile = double.parse(analyticsData?.mobile.current ?? "0.0");
    double previousMobile =
        double.parse(analyticsData?.mobile.previous ?? "0.0");
    double currentDesktop =
        double.parse(analyticsData?.desktop.current ?? "0.0");
    double previousDesktop =
        double.parse(analyticsData?.desktop.previous ?? "0.0");

    double mChange = currentMobile - previousMobile;
    double dChange = currentDesktop - previousDesktop;

    if (mChange == 0) {
      mobileIncrease = 0;
    } else {
      if (previousMobile == 0) {
        mobileIncrease = mChange / 100;
      } else {
        mobileIncrease = mChange / previousMobile;
      }
    }

    if (dChange == 0) {
      desktopIncrease = 0;
    } else {
      if (previousDesktop == 0) {
        desktopIncrease = dChange / 100;
      } else {
        desktopIncrease = dChange / previousDesktop;
      }
    }
  }

  int limit = 6;

  PagingController<int, TransactionHistory> transactionController =
      PagingController<int, TransactionHistory>(firstPageKey: 1);

  getTransactions(int page) async {
    try {
      TransactionResponse resp = await TransactionService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .getTransactions(page, limit);
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

  List<TransactionOption> transactionOptions(BuildContext context) => [
        TransactionOption(
          icon: Padding(
            padding: const EdgeInsets.all(10),
            child: AppAssets.images.icons.receive.svg(),
          ),
          title: "Receive",
          onTap: () {
            if (walletState == FetchState.loading &&
                locator<AppStateValues>().wallet == null) {
              BlueToast.primaryWithcon("Please wait...");
            } else {
              goToReceiveMoney(context);
            }
          },
        ),
        TransactionOption(
          icon: Padding(
            padding: const EdgeInsets.all(18),
            child: AppAssets.images.icons.branches.svg(),
          ),
          title: "Branches",
          onTap: () => goToBranchManagementHome(context),
        ),
        TransactionOption(
          icon: Padding(
            padding: const EdgeInsets.all(18),
            child: AppAssets.images.icons.staff.svg(),
          ),
          title: "Staff",
          onTap: () => goToStaffManagementHome(context),
        ),
        TransactionOption(
          icon: Padding(
            padding: const EdgeInsets.all(18),
            child: AppAssets.images.icons.wallet.svg(),
          ),
          title: "Wallet",
          onTap: () {
            goToWallet(context);
          },
        )
      ];

  goToStaffManagementHome(BuildContext context) {
    context.go(RoutePaths.staffManagementPath);
  }

  goToBranchManagementHome(BuildContext context) {
    context.go(RoutePaths.branchManagementPath);
  }

  goToReceiveMoney(BuildContext context) {
    context.go(RoutePaths.receiveMoneyPath);
  }

  goToWallet(BuildContext context) {
    context.go(RoutePaths.walletPath);
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
