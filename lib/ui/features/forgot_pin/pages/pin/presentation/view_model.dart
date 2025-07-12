import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/reset/pin/request/reset_pin_request.dart';
import 'package:blue_business/core/models/security_question/send/response/send_question_request.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class ResetPinViewModel extends BaseViewModel {
  late Size size;
  late String phone;

  init(BuildContext context, String p) {
    size = context.mediaQuery.size;

    phone = p;
  }

  String _pin = "", _confirmPin = "", _tempPin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  String get confirmPin => _confirmPin;
  set confirmPin(String p) {
    _confirmPin = p;
    notifyListeners();
  }

  String get tempPin => _tempPin;
  set tempPin(String p) {
    _tempPin = p;
    notifyListeners();
  }

  bool _isConfirm = false;
  bool get isConfirm => _isConfirm;
  set isConfirm(bool v) {
    _isConfirm = v;
    notifyListeners();
  }

  setPinAndNext(BuildContext context) {
    if (isConfirm) {
      if (pin == tempPin) {
        confirmPin = tempPin;
        resetPin(context);
      } else {
        AppNotification.error(message: "Pins do not match");
      }
    } else {
      pin = tempPin;
      tempPin = "";
      isConfirm = true;
    }
  }

  resetPin(BuildContext context) async {
    AppLoader.start();

    ResetPinRequest request = ResetPinRequest(newPin: pin);
    SendQuestionResponse resp = await AuthService()
        .resetPin(request)
        .onError((error, stackTrace) => SendQuestionResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "reset_pin",
                "request": request.toString(),
                "response_model": "SendQuestionResponse"
              },
            )));

    if (resp.status == "success") {
      if (context.mounted) {
        context.popUntilRoute(RoutePaths.initiateResetPin, true);
        context.pop(true);
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  reconcileStoredData() async {
    StorageValues.deleteLoginValues();
    await StorageHelpers.deleteAll();
    StorageValues.pin = pin;
    await StorageHelpers.setVal(StorageKeys.pinKey, pin);
    locator<AppStateValues>().notificationState =
        NotificationState.signupSuccess;
  }
}
