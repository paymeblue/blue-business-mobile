import 'dart:developer';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/change_pin/request/change_pin_request.dart';
import 'package:blue_business/core/models/change_pin/response/change_pin_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangePinViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  onNewPinSet(String v, int i, BuildContext context) {
    switch (i) {
      case 0:
        setCurrentPinAndNavigate(v, i);
      case 1:
        setNewPinAndNavigate(v, i);
      default:
        setConfirmPinAndNavigate(v, context);
    }
  }

  setCurrentPinAndNavigate(String v, int i) {
    pin = v;
    pageController.animateToPage(1,
        duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
  }

  setNewPinAndNavigate(String v, int i) {
    if (v == pin) {
      newPin = v;
      pageController.animateToPage(2,
          duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
    } else {
      AppNotification.error(message: "New pin cannot be the same as old pin");
    }
  }

  setConfirmPinAndNavigate(String v, BuildContext context) {
    if (v == newPin) {
      confirmPin = v;
      changePin(context);
    } else {
      log("MISMATCHED PINS");
    }
  }

  int _index = 0;
  int get pageIndex => _index;
  set pageIndex(int i) {
    _index = i;
    notifyListeners();
  }

  PageController pageController = PageController();

  onPageChanged(int i) {
    pageIndex = i;
  }

  onBackTap(BuildContext context) {
    if (pageIndex == 0) {
      if (context.canPop()) {
        context.pop();
      } else {
        context.go(RoutePaths.settingsPath);
      }
    } else if (pageIndex == 1) {
      pageController.jumpToPage(0);
    } else {
      pageController.jumpToPage(1);
    }
  }

  String _pin = "", _newPin = "", _confirmPin = "";
  String get pin => _pin;
  String get newPin => _newPin;
  String get confirmPin => _confirmPin;

  set pin(String v) {
    _pin = v;
    notifyListeners();
  }

  set newPin(String v) {
    _newPin = v;
    notifyListeners();
  }

  set confirmPin(String v) {
    _confirmPin = v;
    notifyListeners();
  }

  changePin(BuildContext context) async {
    AppLoader.start();

    ChangePinRequest request =
        ChangePinRequest(confirmPin: confirmPin, oldPin: pin, newPin: newPin);

    ChangePinResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .changePin(request)
            .onError((error, stackTrace) {
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
      Future.delayed(const Duration(seconds: 3), () {
        if (context.mounted) context.go(RoutePaths.settingsPath);
      });
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  saveInStorage() async {
    StorageValues.password = newPin;

    await StorageHelpers.setVal(StorageKeys.passwordKey, newPin);
  }
}
