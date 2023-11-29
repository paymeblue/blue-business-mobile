import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChnagePinViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  init() {
    appStateManager = Provider.of(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
    Timeout.resetTimer();
  }

  String _pin = "", _newPin = "", _confPin = "", _tempPin = "";

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

  String get confPin => _confPin;
  set confPin(String p) {
    _confPin = p;
    notifyListeners();
  }

  String get tempPin => _tempPin;
  set tempPin(String p) {
    _tempPin = p;
    notifyListeners();
  }

  bool _showError = false;
  bool get showError => _showError;
  set showError(bool b) {
    _showError = b;
    notifyListeners();
  }

  confPinValidator(String value) {
    if (value != newPin) {
      showError = true;
    } else {
      showError = false;
    }
  }

  handleOnTap(BuildContext context) {
    if (pin.isEmpty) {
      pin = tempPin;
      tempPin = "";
    } else if (newPin.isEmpty) {
      newPin = tempPin;
      tempPin = "";
    } else {
      confPin = tempPin;
      changePin(context);
    }
  }

  changePin(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var response = await profileService.updatePin(
    //     pin: pin, newPin: newPin, confirmPin: confPin);
    // AppLoader.hide();
    // if (!response['status']) {
    //   AppNotification.error(message: response['message'], context: appContext!);
    // } else {
    AppNotification.success(
        message: "PIN updated successfully. Don't share it with anyone.",
        context: appContext!);
    pin = "";
    newPin = "";
    confPin = "";
    tempPin = "";
    appStateManager.changePin = false;
    authStateManager.newPasscode = false;
    // }
  }
}
