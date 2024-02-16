import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/login/request/login_request.dart';
import 'package:blue_business/core/models/login/response/login_response.dart';
import 'package:blue_business/core/models/token/token.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmPasswordViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  TextEditingController passwordController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  bool _useBiometrics = false;
  bool get useBiometrics => _useBiometrics;
  set useBiometrics(bool v) {
    _useBiometrics = v;
    notifyListeners();
  }

  login(BuildContext context, String phone) async {
    AppLoader.start();

    LoginRequest request = LoginRequest(
      phone: phone,
      password: passwordController.text,
      fcmToken: locator<AppStateValues>().fcmToken,
    );

    LoginResponse resp =
        await AuthService().login(request).onError((error, stackTrace) {
      return LoginResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    AppLoader.stop();
    if (resp.success) {
      await setNameInStorage(resp.data!.user.firstName, phone);
      saveTokens(resp.data!.token);
      locator<AppStateValues>().currentUser = resp.data!.user;

      if (context.mounted) await checkBiometric(context);
    } else {
      AppNotification.error(message: resp.message);
    }
  }

  checkBiometric(
    BuildContext context,
  ) async {
    if (StorageValues.hasRequestedBiometrics != "true") {
      await BlueBottomSheet.biometrics(
        onContinue: () async {
          await allowBiometrics();
          if (context.mounted) {
            goToNext(context);
          }
        },
        onCancel: () async {
          await denyBiometrics();
          if (context.mounted) {
            goToNext(context);
          }
        },
      );
    } else if (StorageValues.enableBiometrics == "true") {
      await allowBiometrics();
      if (context.mounted) {
        goToNext(context);
      }
    } else if (context.mounted) {
      goToNext(context);
    }
  }

  allowBiometrics() async {
    await StorageHelpers.setVal(
        StorageKeys.hasRequestedBiometricsKey, true.toString());
    await StorageHelpers.setVal(
        StorageKeys.enableBiometricsKey, true.toString());
    await StorageHelpers.setVal(
        StorageKeys.passwordKey, passwordController.text);

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "true";
    StorageValues.password = passwordController.text;

    useBiometrics = true;
  }

  denyBiometrics() async {
    await StorageHelpers.setVal(
        StorageKeys.hasRequestedBiometricsKey, true.toString());
    await StorageHelpers.setVal(
        StorageKeys.enableBiometricsKey, false.toString());

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "false";

    useBiometrics = false;
  }

  saveTokens(Token token) {
    locator<AppStateValues>().accessToken = token.accessToken;
    locator<AppStateValues>().refreshToken = token.refreshToken;
  }

  setNameInStorage(String name, String phone) async {
    await StorageHelpers.setVal(StorageKeys.nameKey, name);
    await StorageHelpers.setVal(StorageKeys.usernameKey, phone);

    StorageValues.name = name;
    StorageValues.username = phone;
  }

  goToNext(BuildContext context) {
    context.go(RoutePaths.registerSuccessPath);
  }
}
