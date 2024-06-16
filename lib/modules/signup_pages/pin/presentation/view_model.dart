import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/timed_refresh.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/complete_registration/request/complete_registration_request.dart';
import 'package:blue_business/core/models/complete_registration/response/complete_registration_response.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PinViewModel extends BaseViewModel {
  late Size size;
  late String id;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context, SignupData data) {
    context.go(RoutePaths.registerProgressPath, extra: data);
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  completeRegistration(SignupData data, BuildContext context) async {
    AppLoader.start();

    CompleteRegistrationRequest request =
        CompleteRegistrationRequest(pin: pin, userId: data.id);

    CompleteRegistrationResponse response = await AuthService(DioConfig.dio())
        .completeRegistration(request: request)
        .onError((error, stackTrace) => CompleteRegistrationResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      StorageValues.deleteLoginValues();
      await StorageHelpers.deleteAll();
      locator<AppStateValues>().notificationState =
          NotificationState.signupSuccess;
      if (context.mounted) {
        goToNext(context);
      }
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  goToNext(BuildContext context) {
    context.go(RoutePaths.loginPath);
  }
}
