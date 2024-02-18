import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/models/signup/user/signup_user_data.dart';
import 'package:blue_business/core/models/signup_otp/response/signup_otp_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyRegistrationOtpViewModel extends BaseViewModel {
  late Size size;
  AuthService authService = AuthService();

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

  resendOtp() async {
    AppLoader.start();

    SignupOtpResponse resp =
        await authService.resendOtp(phone).onError((error, stackTrace) {
      return SignupOtpResponse(message: AppErrorHandler.getErrorMessage(error));
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

    SignupResponse resp =
        await authService.verifyOtp(pin, phone).onError((error, stackTrace) {
      return SignupResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      StorageValues.username = phone;
      if (context.mounted) goToNext(context, resp.data!);
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  stopTimer() {
    timer.cancel();
  }

  goToNext(BuildContext context, SignupUserData user) {
    context.go("/${user.id}${RoutePaths.addPersonalInfoPath}");
  }
}
