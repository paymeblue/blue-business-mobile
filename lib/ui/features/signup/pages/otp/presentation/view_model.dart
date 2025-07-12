import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class VerifySignupOtpViewModel extends BaseViewModel {
  late Size size;
  late String phone;

  init(BuildContext context, String p) {
    size = context.mediaQuery.size;
    phone = p;
    startCountdown();
  }

  bool _continue = false;
  bool get canContinue => _continue;
  set canContinue(bool v) {
    _continue = v;
    notifyListeners();
  }

  bool _canResend = false;
  bool get canResend => _canResend;
  set canResend(bool val) {
    _canResend = val;
    notifyListeners();
  }

  onChanged(String v) {
    canContinue = false;
  }

  onSubmit(String otp) {
    canContinue = true;
    pin = otp;
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  int _timeLeft = 120;
  int get timeLeft => _timeLeft;

  set timeLeft(int n) {
    _timeLeft = n;
    notifyListeners();
  }

  String timeString() {
    return "${timeLeft ~/ 60 > 0 ? "${timeLeft ~/ 60}m" : ""}${timeLeft % 60}s";
  }

  late Timer timer;

  startCountdown() {
    timeLeft = 120;
    canResend = false;
    timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (timeLeft > 0) {
        timeLeft = 120 - timer.tick;
      } else {
        stopTimer();
        canResend = true;
      }
    });
  }

  stopTimer() {
    timer.cancel();
  }

  resendOtp() async {
    AppLoader.start();
    SignupResponse response = await AuthService()
        .resendSignupOtp(phone: phone)
        .onError((error, stackTrace) => SignupResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "resend_signup_otp",
                "response_model": "SignupResponse"
              },
            )));

    if (response.status == "success") {
      AppNotification.success(message: response.message);
      startCountdown();
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }

  verifyOtp(BuildContext context) async {
    AppLoader.start();
    SignupResponse response = await AuthService()
        .verifySignupOtp(phone: phone.replaceAll("+", ""), otp: pin)
        .onError((error, stackTrace) => SignupResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "verify_signup_otp",
                "response_model": "SignupResponse"
              },
            )));

    if (response.status == "success") {
      if (context.mounted) goToNext(context, response.data!);
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }

  goToNext(BuildContext context, SignupData data) {
    context.router.replace(SignupProgressRoute(data: data));
  }

  goBack(BuildContext context) {
    context.router.maybePop();
  }
}
