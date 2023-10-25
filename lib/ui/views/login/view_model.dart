import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:provider/provider.dart';

class LoginViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);

    if (authStateManager.name.isNotEmpty &&
        authStateManager.username.isNotEmpty) {
      newLogin = false;
    } else {
      newLogin = true;
    }
    size = MediaQuery.of(appContext!).size;
  }

  bool _focused = false;
  bool get focused => _focused;

  set focused(bool v) {
    _focused = v;
    notifyListeners();
  }

  late String _loginHeader;
  String get loginHeader => _loginHeader;

  set loginHeader(String v) {
    _loginHeader = v;
    notifyListeners();
  }

  FocusNode node = FocusNode(), node2 = FocusNode();

  late String _loginSubtext;
  String get loginSubtext => _loginSubtext;

  set loginSubtext(String v) {
    _loginSubtext = v;
    notifyListeners();
  }

  onPhoneChanged(PhoneNumber n) {
    String rest = n.number;
    if (rest.isNotEmpty) {
      if (rest[0] == "0") {
        rest = rest.substring(1);
      }
      authStateManager.username = n.completeNumber;
    }
  }

  onPhoneSaved(PhoneNumber? n) {
    String rest = n!.number;
    if (rest.isNotEmpty) {
      if (rest[0] == "0") {
        rest = rest.substring(1);
      }
      authStateManager.username = n.completeNumber;
    }
  }

  handleSubTextClick() {
    if (!newLogin) {
      newLogin = true;
      authStateManager.password = "";
      authStateManager.loginFormKey.currentState!.reset();
    } else {
      authStateManager.loginFormKey.currentState!.reset();
      appStateManager.openSignup(appContext!);
    }
  }

  handleButtonTap() {
    if (authStateManager.isRegistration) {
      appStateManager.registerBusiness = true;
    } else {
      goToDash();
    }
  }

  goToForgotPassword() {
    appStateManager.forgotPassword = true;
  }

  goToResetPhone() {
    appStateManager.recoveryCode = true;
  }

  goToDash() {
    appStateManager.goToDashboard();
  }

  TextEditingController passC = TextEditingController();

  String? onPasswordChanged(String? v) {
    authStateManager.password = v ?? "";
    return v;
  }

  String? onPasswordSaved(String? v) {
    authStateManager.password = v ?? "";
    return v;
  }

  bool _newLogin = false;
  bool get newLogin => _newLogin;

  set newLogin(bool v) {
    _newLogin = v;
    notifyListeners();
  }
}
