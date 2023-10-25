import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetPhoneViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  init() async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
  }

  sendPhone(BuildContext context) async {
    AppNotification.success(
        message: "Please enter the OTP sent to your registered number.",
        context: appContext!);
    if (context.mounted) goToOtpScreen(context);
  }

  verifyOtp(BuildContext context, String otp) async {
    AppNotification.success(
        message: "OTP verified successfully. Account verified.",
        context: appContext!);
    appStateManager.recoveryCode = false;
    authStateManager.username = "";
    authStateManager.phoneCotroller.text = "+234";
    appStateManager.otp = false;
    appStateManager.resetPhone = false;
  }

  goToOtpScreen(BuildContext context) {
    authStateManager.onSendOtp = () {
      verifyOtp(context, authStateManager.otp);
    };
    appStateManager.otp = true;
  }
}
