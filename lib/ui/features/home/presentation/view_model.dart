import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/api/dash_service/dash_service.dart';
import 'package:blue_business/core/api/insights_service/insights_service.dart';
import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/models/analytics/data/analytics_data.dart';
import 'package:blue_business/core/models/analytics/response/analytics_response.dart';
import 'package:blue_business/core/models/business_dash/data/business_dash_data.dart';
import 'package:blue_business/core/models/business_dash/response/business_dash_response.dart';
import 'package:blue_business/core/models/login/data/login_data.dart';
import 'package:blue_business/core/models/profile/get_profile.dart';
import 'package:blue_business/core/models/transaction_detail/airtime/airtime_details.dart';
import 'package:blue_business/core/models/transaction_detail/cable/cable_details.dart';
import 'package:blue_business/core/models/transaction_detail/data/data_details.dart';
import 'package:blue_business/core/models/transaction_detail/payment/payment_detail.dart';
import 'package:blue_business/core/models/transaction_detail/power/power_details.dart';
import 'package:blue_business/core/models/transaction_detail/response/transaction_detail_response.dart';
import 'package:blue_business/core/models/transaction_history/response/transaction_history_response.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/models/transaction_option/transaction_option.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getDashData();
  }

  getDashData() async {
    unawaited(getProfile());
    getWalletBalance();
    getBusinessData();

    getAnalytics();
    transactionController.addPageRequestListener((pageKey) {
      getTransactions(pageKey);
    });
  }

  refreshDashData() async {
    unawaited(getProfile());
    getWalletBalance();
    getBusinessData();

    getAnalytics();
    transactionController.refresh();
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

  bool showEmptyState() {
    return (locator<AppStateValues>().wallet == null) ||
        (walletState == FetchState.error);
  }

  refreshWalletContainer() {
    getBusinessData();
  }

  FetchState _walletState = FetchState.complete;
  FetchState get walletState => _walletState;
  set walletState(FetchState s) {
    _walletState = s;
    notifyListeners();
  }

  FetchState _businessDataState = FetchState.complete;
  FetchState get businessDataState => _businessDataState;
  set businessDataState(FetchState s) {
    _businessDataState = s;
    notifyListeners();
  }

  BusinessDashData? _businessDash;
  BusinessDashData? get businessDash => _businessDash;
  set businessDash(BusinessDashData? v) {
    _businessDash = v;
    notifyListeners();
  }

  getWalletBalance() async {
    walletState = FetchState.loading;

    WalletResponse resp = await DashService()
        .getWalletDetails()
        .onError((error, stackTrace) => WalletResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_wallet_details",
                "response_model": "WalletResponse"
              },
            )));

    if (resp.status == "success") {
      walletState = FetchState.complete;
      locator<AppStateValues>().wallet = resp.data;
    } else {
      walletState = FetchState.error;
    }
  }

  getBusinessData() async {
    businessDataState = FetchState.loading;

    BusinessDashResponse resp = await DashService()
        .getDashDetails()
        .onError((error, stackTrace) => BusinessDashResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_dash_details",
                "response_model": "BusinessDashResponse"
              },
            )));

    if (resp.status == "success") {
      businessDataState = FetchState.complete;
      businessDash = resp.data;
    } else {
      businessDataState = FetchState.error;
    }
  }

  FetchState _analyticsState = FetchState.complete;
  FetchState get analyticsState => _analyticsState;
  set analyticsState(FetchState s) {
    _analyticsState = s;
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

  getProfile() async {
    GetProfileResponse resp =
        await AuthService().getProfile().onError((e, stackTrace) {
      log("The error is ${e.toString()}");
      return GetProfileResponse(message: AppErrorHandler.getErrorMessage(e));
    });

    // log("The error is ${resp.status == "success"}");

    if (resp.status == "success") {
      LoginData user = locator<AppStateValues>().currentUser!;
      locator<AppStateValues>().currentUser = user.copyWith(
        proofOfAddressVerified: resp.data!.proofOfAddressVerified,
      );

      locator<AppStateValues>().isAutoWithdrawalEnabled =
          resp.data!.autoWithdrawalEnabled;

      notifyListeners();
    }
  }

  getAnalytics() async {
    analyticsState = FetchState.loading;
    AnalyticsResponse response = await InsightsService()
        .getAnalytics("weekly")
        .onError((error, stackTrace) => AnalyticsResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_analytics",
                "response_model": "AnalyticsResponse"
              },
            )));

    if (response.status == "success") {
      analyticsState = FetchState.complete;
      analyticsData = response.data;
      calculateIncrease();
    } else {
      analyticsState = FetchState.error;
      AppNotification.error(message: response.message);
    }
  }

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
        mobileIncrease = mChange;
      } else {
        mobileIncrease = mChange / previousMobile;
      }
    }

    if (dChange == 0) {
      desktopIncrease = 0;
    } else {
      if (previousDesktop == 0) {
        desktopIncrease = dChange;
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
          onTap: () {
            goToBranchManagementHome(context);
          },
        ),
        TransactionOption(
          icon: Padding(
            padding: const EdgeInsets.all(18),
            child: AppAssets.images.icons.staff.svg(),
          ),
          title: "Staff",
          onTap: () {
            goToStaffManagementHome(context);
          },
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

  getTransactionDetails(
      TransactionHistory transaction, BuildContext context) async {
    AppLoader.start();

    TransactionDetailResponse response = await TransactionService()
        .getTransactionDetails(
      transactionReference: transaction.transactionId.toString(),
      service: getService(transaction.paymentMode),
    )
        .onError((error, stackTrace) {
      return TransactionDetailResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "get_transaction_details",
          "response_model": "TransactionDetailResponse"
        },
      ));
    });

    if (response.status == "success") {
      if (context.mounted) {
        handleDetailResponse(getService(transaction.paymentMode),
            transaction.transactionType, response, context);
      }
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  handleDetailResponse(String mode, String type,
      TransactionDetailResponse response, BuildContext context) {
    dynamic extra;
    if (mode == "payment") {
      extra = PaymentDetail.fromJson(response.data);
      context.router.push(PaymentDetailsRoute(detail: extra));
    } else if (mode == "airtime") {
      extra = AirtimeDetails.fromJson(response.data);
      context.router.push(AirtimeDetailsRoute(detail: extra));
    } else if (mode == "power") {
      extra = PowerDetails.fromJson(response.data);
      context.router.push(PowerDetailsRoute(detail: extra));
    } else if (mode == "data") {
      extra = DataDetails.fromJson(response.data);
      context.router.push(DataDetailsRoute(detail: extra));
    } else if (mode == "tv") {
      extra = CableDetails.fromJson(response.data);
      context.router.push(CableDetailsRoute(detail: extra));
    }
  }

  String getService(String mode) {
    switch (mode) {
      case "airtime":
      case "power":
      case "data":
        return mode;
      case "cable-tv":
        return "tv";
      default:
        return "payment";
    }
  }

  goToBranchManagementHome(BuildContext context) {
    context.router.push(BranchHomeRoute());
  }

  goToStaffManagementHome(BuildContext context) {
    context.router.push(StaffHomeRoute());
  }

  void goToReceiveMoney(BuildContext context) {
    context.router.push(ReceiveMoneyRoute());
  }

  goToTransactionHistory(BuildContext context) {
    context.router.push(TransactionHistoryRoute());
  }

  goToWallet(BuildContext context) {
    context.router.push<bool>(WalletRoute()).then((val) {
      if (val == true) {
        getWalletBalance();
        transactionController.refresh();
      }
    });
  }
}
