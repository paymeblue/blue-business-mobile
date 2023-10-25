import 'package:blue_business/core/helpers/auth/timeout.dart';
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

    Timeout.resetTimer();
  }

  String _recoveryCode = "";
  String get recoveryCode => _recoveryCode;

  set recoveryCode(String v) {
    _recoveryCode = v;
    notifyListeners();
  }

  String? onCodeChanged(String? val) {
    recoveryCode = val ?? "";
    return val;
  }

  sendRecoveryCode(BuildContext context) async {
    AppNotification.success(
        message: "Recovery Code verified successfully.", context: appContext!);

    goToResetPhone();
  }

  String? onCodeSaved(String? val) {
    recoveryCode = val ?? "";
    return val;
  }

  goToResetPhone() {
    appStateManager.recoveryCode = false;
    appStateManager.resetPhone = true;
  }
}
