import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetPasswordViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  init() async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
  }

  RegExp letters = RegExp((r"[a-zA-Z]+?").toString());
  RegExp numbers = RegExp((r"[0-9]+?").toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  String _password = "", _confPassword = "";

  String get password => _password;

  set password(String e) {
    _password = e;
    notifyListeners();
  }

  String get confPassword => _confPassword;

  set confPassword(String e) {
    _confPassword = e;
    notifyListeners();
  }

  String? onPasswordChanged(String? v) {
    password = v ?? "";
    return v;
  }

  String? onPasswordSaved(String? v) {
    password = v ?? "";
    return v;
  }

  String? onConfPasswordChanged(String? v) {
    confPassword = v ?? "";
    return v;
  }

  String? onConfPasswordSaved(String? v) {
    confPassword = v ?? "";
    return v;
  }

  resetPassword(BuildContext context) async {
    AppNotification.success(
        message: "Password updated successfully.", context: appContext!);
    authStateManager.password = password;
    goToPasscodeScreen();
  }

  goToPasscodeScreen() {
    appStateManager.resetPassword = false;
    appStateManager.login = true;
  }
}
