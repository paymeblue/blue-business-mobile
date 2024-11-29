import 'dart:async';

import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/forgot/password/verify/request/verify_forgot_password_request.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyPasswordOtpViewModel extends BaseViewModel {
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

  int _timeLeft = 300;
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

  resendOtp() async {
    AppLoader.start();

    SignupResponse resp = await AuthService()
        .resendSignupOtp(phone: phone)
        .onError((error, stackTrace) => SignupResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "resend_signup_otp",
                "response_model": "SignupResponse"
              },
            )));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      startCountdown();
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  verifyOtp(BuildContext context) async {
    AppLoader.start();

    VerifyForgotPasswordRequest request =
        VerifyForgotPasswordRequest(otp: pin, phone: phone);

    SendNewPhoneResponse resp = await AuthService()
        .verifyForgotPasswordOtp(request: request)
        .onError((error, stackTrace) => SendNewPhoneResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "verify_forgot_password",
                "request": request.toString(),
                "response_model": "SendNewPhoneResponse"
              },
            )));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) goToNext(context);
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  goToNext(BuildContext context) {
    context.pushReplacement(RoutePaths.resetPassword, extra: phone);
  }

  goBack(BuildContext context) {
    context.pop();
  }
}
