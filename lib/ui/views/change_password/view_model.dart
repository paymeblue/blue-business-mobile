import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangePasswordViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  init() {
    appStateManager = Provider.of(appContext!, listen: false);
    Timeout.resetTimer();
  }

  String _password = "", _newPassword = "", _confPassword = "";

  String get password => _password;
  set password(String p) {
    _password = p;
    notifyListeners();
  }

  String get newPass => _newPassword;
  set newPass(String p) {
    _newPassword = p;
    notifyListeners();
  }

  String get confPass => _confPassword;
  set confPass(String p) {
    _confPassword = p;
    notifyListeners();
  }

  String? onCurrentPassChanged(String? v) {
    password = v ?? "";
    return v;
  }

  String? onCurrentPassSaved(String? v) {
    password = v ?? "";
    return v;
  }

  String? onNewPassChanged(String? v) {
    newPass = v ?? "";
    return v;
  }

  String? onNewPassSaved(String? v) {
    newPass = v ?? "";
    return v;
  }

  String? onConfirmPassChanged(String? v) {
    confPass = v ?? "";
    return v;
  }

  String? onConfirmPassSaved(String? v) {
    confPass = v ?? "";
    return v;
  }

  String? confPassValidator(String? value) {
    if (confPass != newPass) {
      return "PINs do not match";
    }

    return null;
  }

  RegExp letters = RegExp((r"[a-zA-Z]+?").toString());
  RegExp numbers = RegExp((r"[0-9]+?").toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  changePassword(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var response = await profileService.updatePassword(
    //     password: password, newPassword: newPass, confirmPassword: confPass);
    // AppLoader.hide();
    // if (!response['status']) {
    //   AppNotification.error(message: response['message'], context: appContext!);
    // } else {
    AppNotification.success(
        message: "Password updated successfully.", context: appContext!);
    formKey.currentState!.reset();
    appStateManager.changePass = false;
    // }
  }
}
