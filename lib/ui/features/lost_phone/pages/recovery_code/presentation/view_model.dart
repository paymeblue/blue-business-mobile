import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/recovery_code/send/response/recovery_code_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class InitiatePhoneResetViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  TextEditingController recoveryCodeController = TextEditingController();

  void onChanged(String? v) {
    notifyListeners();
  }

  Future<void> sendRecoveryCode(BuildContext context) async {
    AppLoader.start();

    SendRecoveryCodeResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .verifyRecoveryCode(recoveryCodeController.text)
            .onError((error, stackTrace) {
              return SendRecoveryCodeResponse(
                message: AppErrorHandler.getErrorMessage(error, {
                  "request_name": "verify_recovery_code",
                  "response_model": "SendRecoveryCodeResponse",
                }),
              );
            });

    if (resp.status == "success") {
      if (context.mounted) goToNext(context, resp.data!.userId);
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  void goToNext(BuildContext context, int id) {
    locator<AppRouter>().replace(ResetPhoneRoute(id: id));
  }
}
