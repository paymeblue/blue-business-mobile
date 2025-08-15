import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/change_pin/request/change_pin_request.dart';
import 'package:blue_business/core/models/change_pin/response/change_pin_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class ChangePinViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBaack(BuildContext context) {
    if (newPin.isNotEmpty) {
      tempPin = newPin;
      newPin = "";
    } else if (pin.isNotEmpty) {
      tempPin = pin;
      pin = "";
    } else if (pin.isEmpty) {
      locator<AppRouter>().maybePop();
    }
  }

  String _pin = "", _newPin = "", _confirmPin = "", _tempPin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  String get newPin => _newPin;
  set newPin(String p) {
    _newPin = p;
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

  setPinAndNext(BuildContext context) {
    if (pin.isEmpty) {
      pin = tempPin;
      tempPin = "";
    } else if (newPin.isEmpty) {
      if (tempPin == pin) {
        AppNotification.error(message: "New pin cannot be the same as old pin");
      } else {
        newPin = tempPin;
        tempPin = "";
      }
    } else {
      if (tempPin == newPin) {
        confirmPin = tempPin;
        changePin(context);
      } else {
        AppNotification.error(message: "Pins do not match");
      }
    }
  }

  changePin(BuildContext context) async {
    AppLoader.start();

    ChangePinRequest request =
        ChangePinRequest(confirmPin: confirmPin, oldPin: pin, newPin: newPin);

    ChangePinResponse resp =
        await AuthService().changePin(request).onError((error, stackTrace) {
      return ChangePinResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "change_pin",
          "request": request.toString(),
          "response_model": "ChangePinResponse"
        },
      ));
    });

    if (resp.status == "success") {
      if (StorageValues.pin.isNotEmpty) {
        await saveInStorage();
      }
      AppNotification.success(message: resp.message);
    } else {
      confirmPin = "";
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  saveInStorage() async {
    StorageValues.password = newPin;

    await StorageHelpers.setVal(StorageKeys.passwordKey, newPin);
  }
}
