import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/models/recover_phone/response/recover_phone_response.dart';
import 'package:blue_business/core/models/reset/password/request/reset_password_request.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddNewPasswordViewModel extends BaseViewModel {
  late Size size;
  late String phone;
  AppStateValues stateValues = locator<AppStateValues>();
  late AuthService authService = AuthService();

  init(BuildContext context, String p) {
    size = context.mediaQuery.size;
    phone = p;
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
      newPassword: passwordController.text,
      passwordConfirmation: confirmPasswordController.text,
    );
    SendNewPhoneResponse resp = await authService
        .resetPassword(request)
        .onError((error, stackTrace) => SendNewPhoneResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (resp.success) {
      AppNotification.success(message: resp.message);
      Future.delayed(const Duration(milliseconds: 3500), () {
        if (context.mounted) {
          goToNext(context);
        }
      });
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  goToNext(BuildContext context) {
    context.go(RoutePaths.loginPath);
  }
}
