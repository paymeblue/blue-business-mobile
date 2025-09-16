import 'dart:async';

import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/forgot/pin/verify/request/verify_forgot_pin_request.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/models/reset/password/response/reset_password_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

class VerifyPinOtpViewModel extends BaseViewModel {
  late Size size;
  late String phone;

  void init(BuildContext context, String p) {
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

  void onChanged(String v) {
    canContinue = false;
  }

  void onSubmit(String otp) {
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

  void startCountdown() {
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

  void stopTimer() {
    timer.cancel();
  }

  Future<void> resendOtp() async {
    AppLoader.start();

    SendNewPhoneResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .resendPinOtp(phone: phone)
            .onError(
              (error, stackTrace) => SendNewPhoneResponse(
                message: AppErrorHandler.getErrorMessage(error, {
                  "request_name": "forgot_pin_with_phone",
                  "response_model": "SendNewPhoneResponse",
                }),
              ),
            );

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      startCountdown();
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  Future<void> verifyOtp(BuildContext context) async {
    AppLoader.start();
    VerifyForgotPinRequest request = VerifyForgotPinRequest(
      otp: pin,
      recoveryPhone: phone,
    );

    ResetPasswordResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .verifyPinOtp(request: request)
            .onError(
              (error, stackTrace) => ResetPasswordResponse(
                message: AppErrorHandler.getErrorMessage(error, {
                  "request_name": "verify_otp",
                  "request": request.toString(),
                  "response_model": "ResetPasswordResponse",
                }),
              ),
            );

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) goToNext(context);
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  void goToNext(BuildContext context) {
    locator<AppRouter>().replace(ResetPinRoute(phone: phone));
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }
}
