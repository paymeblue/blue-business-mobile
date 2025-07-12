import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/recovery_code/send/response/recovery_code_response.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class InitiatePhoneResetViewModel extends BaseViewModel {
  late Size size;

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

    SendRecoveryCodeResponse resp = await AuthService()
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
    context.pushReplacement(RoutePaths.resetPhone, extra: id);
  }
}
