import 'dart:async';

import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/register_self/pages/enter_name.dart';
import 'package:blue_business/ui/views/register_self/pages/enter_otp.dart';
import 'package:blue_business/ui/views/register_self/pages/enter_password.dart';
import 'package:blue_business/ui/views/register_self/pages/enter_phone.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterSelfViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
  }

  bool _focused = false;
  bool get focused => _focused;

  set focused(bool v) {
    _focused = v;
    notifyListeners();
  }

  FocusNode node = FocusNode(), node2 = FocusNode();

  String? confirmPasswordValidator(String? value) {
    if (confPassword != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  String _firstName = "",
      _middleName = "",
      _lastName = "",
      _password = "",
      _confPassword = "";

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

  String get firstName => _firstName;

  set firstName(String e) {
    _firstName = e;
    notifyListeners();
  }

  String get middleName => _middleName;

  set middleName(String e) {
    _middleName = e;
    notifyListeners();
  }

  String get lastName => _lastName;

  set lastName(String e) {
    _lastName = e;
    notifyListeners();
  }

  String? onFirstNameChanged(String? v) {
    firstName = v ?? "";
    setActive();
    return v;
  }

  String? onFirstNameSaved(String? v) {
    firstName = v ?? "";
    return v;
  }

  String? onMiddleNameChanged(String? v) {
    middleName = v ?? "";
    setActive();
    return v;
  }

  String? onMiddleNameSaved(String? v) {
    middleName = v ?? "";
    return v;
  }

  String? onLastNameChanged(String? v) {
    lastName = v ?? "";
    setActive();
    return v;
  }

  String? onLastNameSaved(String? v) {
    lastName = v ?? "";
    return v;
  }

  String? onPasswordChanged(String? v) {
    password = v ?? "";
    setActive();
    return v;
  }

  String? onPasswordSaved(String? v) {
    password = v ?? "";
    return v;
  }

  String? onConfPasswordChanged(String? v) {
    confPassword = v ?? "";
    setActive();
    return v;
  }

  String? onConfPasswordSaved(String? v) {
    confPassword = v ?? "";
    return v;
  }

  List<Widget> pages = [
    const EnterPhoneView(),
    const EnterOtpView(),
    const EnterNameView(),
    const EnterPasswordView()
  ];

  handleBackTap() {
    if (authStateManager.signupIndex == 0) {
      appStateManager.registerSelf = false;
    } else {
      // if (authStateManager.signupIndex == 1) {
      //   stopTimer();
      // }
      authStateManager.signupIndex--;
    }
  }

  bool _isActive = false;
  bool get isActive => _isActive;

  set isActive(bool v) {
    _isActive = v;
    notifyListeners();
  }

  setActive() {
    switch (authStateManager.signupIndex) {
      case 0:
        isActive = authStateManager.username.isNotEmpty;
        break;
      case 1:
        isActive = canContinue;
        break;
      case 2:
        isActive = firstName.isNotEmpty && lastName.isNotEmpty;
        break;
      case 3:
        isActive = password.isNotEmpty &&
            confPassword == password &&
            password.length >= 9 &&
            letters.hasMatch(password) &&
            numbers.hasMatch(password) &&
            special.hasMatch(password);
        break;
      default:
        isActive = false;
    }
  }

  List<GlobalKey<FormState>> formKeys =
      List.generate(4, (index) => GlobalKey<FormState>());

  bool _canContinue = false;
  bool get canContinue => _canContinue;

  set canContinue(bool val) {
    _canContinue = val;
    notifyListeners();
  }

  bool _canResend = false;
  bool get canResend => _canResend;

  set canResend(bool val) {
    _canResend = val;
    notifyListeners();
  }

  String _otp = "";
  String get otp => _otp;

  set otp(String v) {
    _otp = v;
    notifyListeners();
  }

  onCodeSubmit(String? val) {
    if (val != null) {
      otp = val;
      canContinue = true;
    } else {
      canContinue = false;
    }
    setActive();
  }

  onCodeChanged(String? val) {
    canContinue = false;
    setActive();
  }

  int _timeLeft = 60;
  int get timeLeft => _timeLeft;

  set timeLeft(int n) {
    _timeLeft = n;
    notifyListeners();
  }

  String timeString() {
    return "${timeLeft ~/ 60}m${timeLeft % 60}s";
  }

  late Timer timer;

  startCountdown() {
    timeLeft = 300;
    canResend = false;
    timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (timeLeft > 0) {
        timeLeft = 300 - timer.tick;
      } else {
        stopTimer();
        canResend = true;
      }
    });
  }

  stopTimer() {
    timer.cancel();
  }

  RegExp letters = RegExp((r'[a-zA-Z]+?').toString());
  RegExp numbers = RegExp((r'[0-9]+?').toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  handleTap() {
    if (authStateManager.signupIndex < pages.length - 1) {
      authStateManager.signupIndex++;
      isActive = false;
      authStateManager.username = "";
    }
  }
}
