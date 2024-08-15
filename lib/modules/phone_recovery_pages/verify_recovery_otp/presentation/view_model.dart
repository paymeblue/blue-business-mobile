import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/models/recover_phone/verify/request/verify_new_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/verify/response/verify_new_phone_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyRecoveryOtpViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
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

  resendOtp(SendNewPhoneData data) async {
    AppLoader.start();

    SendNewPhoneResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .resendRecoveryOtp(phone: data.newPhone)
            .onError((error, stackTrace) {
      return SendNewPhoneResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "resend_recovery_otp",
          "response_model": "SendNewPhoneResponse"
        },
      ));
    });

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      startCountdown();
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  verifyOtp(BuildContext context, SendNewPhoneData data) async {
    AppLoader.start();

    VerifyNewPhoneRequest request =
        VerifyNewPhoneRequest(reference: data.reference, otp: pin);

    VerifyNewPhoneResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .verifyRecoveryOtp(reguest: request)
            .onError((error, stackTrace) {
      return VerifyNewPhoneResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "verify_recovery_otp",
          "request": request.toString(),
          "response_model": "VerifyNewPhoneResponse"
        },
      ));
    });

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      StorageValues.username = "+${data.newPhone}";
      if (context.mounted) goToNext(context);
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  stopTimer() {
    timer.cancel();
  }

  goBack(BuildContext context) {
    context.pop();
  }

  goToNext(BuildContext context) {
    context.push(RoutePaths.loginPath);
  }
}
