import 'dart:async';
import 'dart:developer';
// import 'package:blue_business/core/managers/app_state_manager.dart';
// import 'package:blue_business/core/managers/auth_state_manager.dart';
// import 'package:blue_business/core/managers/payment_state_manager.dart';
// import 'package:blue_business/core/services/auth/auth_service.dart';
// import 'package:blue_business/core/services/locator.dart';
// import 'package:blue_business/core/services/navigation_service.dart';
// import 'package:blue_business/utils/app_loader.dart';
// import 'package:blue_business/utils/app_notification.dart';
// import 'package:blue_business/utils/constants.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class Timeout {
  Timeout._();

  static Timer? timer;
  static Timer? refreshTimer;
  static DateTime? refreshTime;

  static resetTimer() async {
    if (timer != null) {
      log('timer canceled');
      timer!.cancel();
    }

    log(DateTime.now().toString());

    timer = Timer(const Duration(seconds: 300), () {
      log('timer expired at ${DateTime.now().toString()}');
      logout("App timed out due to inactivity. Please login again.",
          isWarning: true);
    });

    await setupRefresh();
  }

  static setupRefresh() async {
    refreshTimer ??= Timer(const Duration(seconds: 285), () async {
      log("Refreshing...");
      await refreshToken();
    });
  }

  static refreshToken() async {
    // AuthService authService = locator<AuthService>();
    // var resp = await authService.refreshToken();

    // if (!resp["status"]) {
    //   logout("Session timed out. Please login again", isWarning: true);
    // } else {
    //   var token = resp['data']['token'];
    //   AppConstants.accessToken = token['accessToken'];
    //   AppConstants.tokenType = token['type'];

    //   refreshTimer = null;
    //   setupRefresh();
    // }
  }

  static logout(String? message, {bool isWarning = false}) async {
    // AuthService authService = locator<AuthService>();

    // var resp = await authService.logout();

    // if (resp["status"]) {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     clearData(locator<NavigationService>().navigatorKey.currentContext!);
    //   });
    //   if (isWarning) {
    //     AppNotification.warning(
    //         message: message,
    //         context: locator<NavigationService>().navigatorKey.currentContext!);
    //   } else {
    //     AppNotification.success(
    //         message: message,
    //         context: locator<NavigationService>().navigatorKey.currentContext!);
    //   }
    // }
  }

  static clearData(BuildContext context) {
    // AppStateManager appStateManager =
    //     Provider.of<AppStateManager>(context, listen: false);
    // AuthStateManager authStateManager =
    //     Provider.of<AuthStateManager>(context, listen: false);

    // PaymentStateManager paymentStateManager =
    //     Provider.of(context, listen: false);

    // appStateManager.dashboard = false;
    // appStateManager.homeIndex = 0;
    // authStateManager.setIsRegistration(false);
    // appStateManager.accountRecovery = false;
    // appStateManager.beneficiaries = false;
    // appStateManager.blueRecipient = null;
    // appStateManager.changePass = false;
    // appStateManager.conversation = false;
    // appStateManager.dashboard = false;
    // appStateManager.error = false;
    // appStateManager.kyc = false;
    // appStateManager.passcode = false;
    // appStateManager.paymentMethod = false;
    // appStateManager.personalInfo = false;
    // appStateManager.quickPay = false;
    // appStateManager.recoveryCode = false;
    // appStateManager.sendMoney = false;
    // appStateManager.shareQr = false;
    // appStateManager.startChat = false;
    // appStateManager.success = false;
    // appStateManager.fundWallet = false;
    // appStateManager.walletId = false;
    // appStateManager.transactionHistory = false;
    // appStateManager.login = true;
    // AppConstants.accessToken = "";
    // AppConstants.tokenType = "";
    // AppConstants.fcmToken = "";
    // AppConstants.refreshToken = "";
    // appStateManager.addPayoutAccount = false;
    // paymentStateManager.method = null;
    // paymentStateManager.amount = "";
    // paymentStateManager.recipient = null;
    // appStateManager.confirmPayment = false;
    // AppLoader.hide();
    // refreshTimer!.cancel();
    // timer!.cancel();
    // refreshTimer = null;
  }

  static dispose() {
    if (timer != null) {
      // log("****************************DISPOSE****************************");
      timer!.cancel();
    }
  }
}
