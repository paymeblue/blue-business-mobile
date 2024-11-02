import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/complete_registration/request/complete_registration_request.dart';
import 'package:blue_business/core/models/complete_registration/response/complete_registration_response.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreatePinViewModel extends BaseViewModel {
  late Size size;
  late SignupData data;

  init(BuildContext context, SignupData d) {
    size = context.mediaQuery.size;

    data = d;
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
      confirmPin = tempPin;
      completeRegistration(context);
    } else {
      pin = tempPin;
      tempPin = "";
      isConfirm = true;
    }
  }

  completeRegistration(BuildContext context) async {
    AppLoader.start();

    CompleteRegistrationRequest request =
        CompleteRegistrationRequest(pin: pin, userId: data.id);

    CompleteRegistrationResponse response = await AuthService()
        .completeRegistration(request: request)
        .onError((error, stackTrace) => CompleteRegistrationResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "complete_registration",
                "request": request.toString(),
                "response_model": "CompleteRegistrationResponse"
              },
            )));

    if (response.status == "success") {
      reconcileStoredData();
      if (context.mounted) {
        goToNext(context);
      }
    } else {
      AppNotification.error(message: response.message);
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

  goToNext(BuildContext context) {
    context.go(RoutePaths.login);
  }
}
