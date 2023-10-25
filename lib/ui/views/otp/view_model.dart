import 'dart:async';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SendOtpViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);

    Future.delayed(const Duration(seconds: 300), () {
      canResend = true;
    });
    startCountdown();
  }

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

  onCodeSubmit(String? val) {
    if (val != null) {
      authStateManager.otp = val;
      canContinue = true;
    } else {
      canContinue = false;
    }
  }

  onCodeChanged(String? val) {
    canContinue = false;
  }

  onTapResend(BuildContext context) async {
    if (appStateManager.resetPin) {
      resetPinResend(context);
    } else if (appStateManager.resetPassword) {
      resetPasswordResend(context);
    } else {
      resetPhoneResend(context);
    }
  }

  resetPhoneResend(BuildContext context) async {
    startCountdown();
  }

  resetPasswordResend(BuildContext context) async {
    startCountdown();
  }

  resetPinResend(BuildContext context) async {
    startCountdown();
    AppNotification.success(
        message: "OTP sent successfully. Check your inbox.",
        context: appContext!);
  }

  int _timeLeft = 300;
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
}
