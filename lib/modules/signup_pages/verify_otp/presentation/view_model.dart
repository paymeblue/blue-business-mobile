import 'dart:async';
import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyRegistrationOtpViewModel extends BaseViewModel {
  late Size size;

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

  late String phone;

  stopTimer() {
    timer.cancel();
  }

  resendOtp() async {
    AppLoader.start();
    SignupResponse response = await AuthService(DioConfig.dio())
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
    SignupResponse response = await AuthService(DioConfig.dio())
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
    context.pushReplacement(RoutePaths.registerProgressPath, extra: data);
  }

  goBack(BuildContext context) {
    context.pop();
  }
}
