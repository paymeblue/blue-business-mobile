import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/models/reset/password/request/reset_password_request.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class ResetPasswordViewModel extends BaseViewModel {
  late Size size;
  late String phone;

  init(BuildContext context, String p) {
    size = context.mediaQuery.size;
    phone = p;
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RegExp letters = RegExp((r'[a-zA-Z]+?').toString());
  RegExp numbers = RegExp((r'[0-9]+?').toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  List<Map<String, dynamic>> conditions() => [
        {
          "isComplete": passwordController.text.length >= 9,
          "condition": "Must contain 9 characters"
        },
        {
          "isComplete": letters.hasMatch(passwordController.text),
          "condition": "Must contain a letter"
        },
        {
          "isComplete": special.hasMatch(passwordController.text),
          "condition": "Must contain a symbol"
        },
        {
          "isComplete": numbers.hasMatch(passwordController.text),
          "condition": "Must contain a number"
        },
      ];

  bool isActive() {
    return numbers.hasMatch(passwordController.text) &&
        special.hasMatch(passwordController.text) &&
        letters.hasMatch(passwordController.text) &&
        passwordController.text.length >= 9 &&
        passwordController.text == confirmPasswordController.text;
  }

  onChanged(String? v) {
    notifyListeners();
  }

  resetPassword(BuildContext context) async {
    AppLoader.start();

    ResetPasswordRequest request = ResetPasswordRequest(
      phone: phone,
      password: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
    );
    SendNewPhoneResponse resp = await AuthService()
        .resetPassword(request)
        .onError((error, stackTrace) => SendNewPhoneResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "reset_password",
                "request": request.toString(),
                "response_model": "SendNewPhoneResponse"
              },
            )));

    if (resp.status == "success") {
      locator<AppRouter>().replaceAll([LoginRoute()]);
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }
}
