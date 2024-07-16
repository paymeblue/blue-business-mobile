import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/recovery_code/send/response/recovery_code_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterRecoveryCodeViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  TextEditingController recoveryCodeController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  sendRecoveryCode(BuildContext context) async {
    AppLoader.start();

    SendRecoveryCodeResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .verifyRecoveryCode(recoveryCodeController.text)
            .onError((error, stackTrace) {
      return SendRecoveryCodeResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "verify_recovery_code",
          "response_model": "SendRecoveryCodeResponse"
        },
      ));
    });

    if (resp.status == "success") {
      if (context.mounted) goToNext(context, resp.data!.userId);
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  goToNext(BuildContext context, int id) {
    context.go("${RoutePaths.recoverPhoneNumberPath}/$id");
  }
}
