import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/login/request/login_request.dart';
import 'package:blue_business/core/models/login/response/login_response.dart';
import 'package:blue_business/core/models/signup_profile/request/signup_profile_request.dart';
import 'package:blue_business/core/models/signup_profile/response/signup_profile_response.dart';
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

class PinViewModel extends BaseViewModel {
  late Size size;
  late String id;
  AuthService authService = AuthService();

  init(BuildContext context, String i, SignupProfileRequest r) {
    size = context.mediaQuery.size;
    id = i;
    request = r;
  }

  goBack(BuildContext context) {
    context.go("/$id${RoutePaths.addPersonalInfoPath}");
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  late SignupProfileRequest _request;
  SignupProfileRequest get request => _request;
  set request(SignupProfileRequest r) {
    _request = r;
    notifyListeners();
  }

  setupProfile(BuildContext context) async {
    request = request.copyWith(passcode: pin, userId: int.parse(id));
    AppLoader.start();
    SignupProfileResponse resp = await authService
        .setupProfile(
      request,
    )
        .onError((error, stackTrace) {
      return SignupProfileResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      String phone = StorageValues.username;
      StorageValues.name = request.firstName;
      await StorageHelpers.deleteAll();
      locator<AppStateValues>().clear();
      if (context.mounted) await login(context, phone);
    } else {
      AppLoader.stop();
      AppNotification.error(message: resp.message);
    }
  }

  login(BuildContext context, String phone) async {
    LoginRequest loginRequest = LoginRequest(
      phone: phone,
      password: request.password,
      fcmToken: locator<AppStateValues>().fcmToken,
    );

    LoginResponse resp =
        await AuthService().login(loginRequest).onError((error, stackTrace) {
      return LoginResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    AppLoader.stop();
    if (resp.status == "success") {
      await setNameInStorage(resp.data!.user.firstName, StorageValues.username);
      saveTokens(resp.data!.token);
      locator<AppStateValues>().currentUser = resp.data!.user;
      if (context.mounted) await checkBiometric(context);
    } else {
      if (context.mounted) context.go(RoutePaths.loginPath);
    }
  }

  checkBiometric(BuildContext context) async {
    if (StorageValues.hasRequestedBiometrics != "true") {
      await BlueBottomSheet.biometrics(onContinue: () async {
        await allowBiometrics();
        if (context.mounted) {
          goToNext(context);
        }
      }, onCancel: () async {
        await denyBiometrics();
        if (context.mounted) {
          goToNext(context);
        }
      });
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
    await StorageHelpers.setVal(StorageKeys.passwordKey, request.password);

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "true";
    StorageValues.password = request.password;
  }

  denyBiometrics() async {
    await StorageHelpers.setVal(
        StorageKeys.hasRequestedBiometricsKey, true.toString());
    await StorageHelpers.setVal(
        StorageKeys.enableBiometricsKey, false.toString());

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "false";
  }

  setNameInStorage(String name, String phone) async {
    await StorageHelpers.setVal(StorageKeys.nameKey, name);
    await StorageHelpers.setVal(StorageKeys.usernameKey, phone);

    StorageValues.name = name;
    StorageValues.username = phone;
  }

  saveTokens(Token token) {
    locator<AppStateValues>().accessToken = token.accessToken;
    locator<AppStateValues>().refreshToken = token.refreshToken;
  }

  goToNext(BuildContext context) {
    context.go(RoutePaths.registerSuccessPath);
  }
}
