import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/forgot/pin/verify/request/verify_forgot_pin_request.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/models/reset/password/response/reset_password_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyPinRecoveryOtpViewModel extends BaseViewModel {
  late Size size;
  late String phone;
  AppStateValues stateValues = locator<AppStateValues>();

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

  goBack(BuildContext context) {
    context.pop();
  }

  resendOtp() async {
    AppLoader.start();

    SendNewPhoneResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .resendPinOtp(phone: phone)
            .onError((error, stackTrace) => SendNewPhoneResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "forgot_pin_with_phone",
                    "response_model": "SendNewPhoneResponse"
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
    VerifyForgotPinRequest request =
        VerifyForgotPinRequest(otp: pin, recoveryPhone: phone);

    ResetPasswordResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .verifyPinOtp(request: request)
            .onError((error, stackTrace) => ResetPasswordResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "verify_otp",
                    "request": request.toString(),
                    "response_model": "ResetPasswordResponse"
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
    context.go("${RoutePaths.recoverPinPath}/$phone");
  }
}
