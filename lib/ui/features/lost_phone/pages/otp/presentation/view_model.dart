import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/models/recover_phone/verify/request/verify_new_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/verify/response/verify_new_phone_response.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class VerifyPhoneOtpViewModel extends BaseViewModel {
  late Size size;
  late SendNewPhoneData data;

  init(BuildContext context, SendNewPhoneData d) {
    size = context.mediaQuery.size;
    data = d;
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

    SendNewPhoneResponse resp = await AuthService()
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

  verifyOtp(BuildContext context) async {
    AppLoader.start();

    VerifyNewPhoneRequest request =
        VerifyNewPhoneRequest(reference: data.reference, otp: pin);

    VerifyNewPhoneResponse resp = await AuthService()
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
      StorageValues.username = "+${data.newPhone}";
      if (context.mounted) goToNext(context);
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  goToNext(BuildContext context) {
    context.popUntilRoute(HomeRoute(), true);
  }

  goBack(BuildContext context) {
    context.router.back();
  }
}
