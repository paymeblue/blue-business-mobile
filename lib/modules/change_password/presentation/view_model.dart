import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/change_password/request/change_password_request.dart';
import 'package:blue_business/core/models/change_password/response/change_password_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RegExp letters = RegExp((r'[a-zA-Z]+?').toString());
  RegExp numbers = RegExp((r'[0-9]+?').toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  List<Map<String, dynamic>> conditions() => [
        {
          "isComplete": newPasswordController.text.length >= 9,
          "condition": "Must contain 9 characters"
        },
        {
          "isComplete": letters.hasMatch(newPasswordController.text),
          "condition": "Must contain a letter"
        },
        {
          "isComplete": special.hasMatch(newPasswordController.text),
          "condition": "Must contain a symbol"
        },
        {
          "isComplete": numbers.hasMatch(newPasswordController.text),
          "condition": "Must contain a number"
        },
      ];

  bool isActive() {
    return numbers.hasMatch(newPasswordController.text) &&
        special.hasMatch(newPasswordController.text) &&
        letters.hasMatch(newPasswordController.text) &&
        newPasswordController.text.length >= 9 &&
        newPasswordController.text == confirmPasswordController.text &&
        passwordController.text.isNotEmpty;
  }

  onChanged(String? v) {
    notifyListeners();
  }

  goToNext(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }

  changePassword(BuildContext context) async {
    AppLoader.start();

    ChangePasswordRequest request = ChangePasswordRequest(
      oldPassword: passwordController.text,
      newPassword: newPasswordController.text,
      passwordConfirmation: confirmPasswordController.text,
    );

    ChangePasswordResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .changePassword(request)
            .onError((error, stackTrace) {
      return ChangePasswordResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
      ));
    });

    if (resp.status == "success") {
      if (StorageValues.password.isNotEmpty) {
        await saveInStorage();
      }
      AppNotification.success(message: resp.message);
      Future.delayed(const Duration(seconds: 3), () {
        if (context.mounted) goToNext(context);
      });
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  saveInStorage() async {
    StorageValues.password = newPasswordController.text;

    await StorageHelpers.setVal(
        StorageKeys.passwordKey, newPasswordController.text);
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }
}
