import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
  }

  goToOtpScreen(BuildContext context) async {
    authStateManager.onSendOtp = () async {
      appStateManager.resetPassword = true;
      appStateManager.otp = false;
      appStateManager.forgotPassword = false;
    };
    appStateManager.otp = true;
  }
}
