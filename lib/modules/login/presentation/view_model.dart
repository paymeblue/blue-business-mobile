import 'dart:developer';

import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/timed_refresh.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/login/request/login_request.dart';
import 'package:blue_business/core/models/login/response/login_response.dart';
import 'package:blue_business/core/models/token/token.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewModel extends BaseViewModel {
  late Size size;

  init() {
    size = MediaQuery.sizeOf(globalContext!);

    setSelectedCountry();
    getDataFromStorage();

    Future.delayed(const Duration(milliseconds: 500), () {
      if (locator<AppStateValues>().notificationState != null) {
        locator<AppStateValues>().clear();
        showNotification();
      }
    });
  }

  showNotification() {
    switch (locator<AppStateValues>().notificationState!) {
      case NotificationState.success:
        AppNotification.success(
            message: "You have been logged out successfully. See you soon");
      case NotificationState.error:
        AppNotification.error(message: "Session timed out. Please login again");
      case NotificationState.warning:
        AppNotification.warning(
            message: "Session timed out due toinactivity. Please login again");
    }
  }

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  onCountryChanged(CountryCode? value) {
    selectedCountry = value;
  }

  String _phone = "";
  String get phone => _phone;
  set phone(String phone) {
    _phone = phone;
    notifyListeners();
  }

  bool _useBiometrics = false;
  bool get useBiometrics => _useBiometrics;
  set useBiometrics(bool v) {
    _useBiometrics = v;
    notifyListeners();
  }

  getDataFromStorage() {
    phoneController.text =
        StorageValues.username.replaceFirst(selectedCountry!.dialCode, "");

    useBiometrics = StorageValues.enableBiometrics == "true";
  }

  setNameInStorage(String name, String phone) async {
    await StorageHelpers.setVal(StorageKeys.nameKey, name);
    await StorageHelpers.setVal(StorageKeys.usernameKey, phone);

    StorageValues.name = name;
    StorageValues.username = phone;
  }

  completeWithBiometrics(BuildContext context,
      {VoidCallback? onComplete}) async {
    bool canContinue = await Biometrics.biometrics();
    if (canContinue) {
      passwordController.text = StorageValues.password;
      if (context.mounted) login(context, onComplete: onComplete);
    }
  }

  CountryCode? _country;
  CountryCode? get selectedCountry => _country;
  set selectedCountry(CountryCode? v) {
    _country = v;
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  goBack() {
    if (globalContext!.canPop()) {
      globalContext!.pop();
    } else {
      globalContext!.go(RoutePaths.splashPath);
    }
  }

  onChanged(String? v) {
    notifyListeners();
  }

  login(BuildContext context, {VoidCallback? onComplete}) async {
    AppLoader.start();
    String p = formatPhone();

    LoginRequest request = LoginRequest(
      phone: p,
      password: passwordController.text,
      fcmToken: locator<AppStateValues>().fcmToken,
    );

    LoginResponse resp =
        await AuthService().login(request).onError((error, stackTrace) {
      return LoginResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    AppLoader.stop();
    if (resp.status == "success") {
      await setNameInStorage(resp.data!.user.firstName, p);
      saveTokens(resp.data!.token);
      locator<AppStateValues>().currentUser = resp.data!.user;

      if (context.mounted) {
        await checkBiometric(context, 0, onComplete: onComplete);
      }
    } else {
      AppNotification.error(message: resp.message);
    }
  }

  checkBiometric(BuildContext context, int level,
      {VoidCallback? onComplete}) async {
    if (StorageValues.hasRequestedBiometrics != "true") {
      await BlueBottomSheet.biometrics(
        onContinue: () async {
          await allowBiometrics();
          if (context.mounted) {
            onComplete ?? goToNext(context, level);
          }
        },
        onCancel: () async {
          await denyBiometrics();
          if (context.mounted) {
            onComplete ?? goToNext(context, level);
          }
        },
      );
    } else if (StorageValues.enableBiometrics == "true") {
      await allowBiometrics();
      if (context.mounted) {
        onComplete ?? goToNext(context, level);
      }
    } else if (context.mounted) {
      onComplete ?? goToNext(context, level);
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

  String formatPhone() {
    String number = phoneController.text.replaceAll(" ", "");

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
      log(number);
    }
    if (number.startsWith(selectedCountry!.dialCode)) {
      number = number.replaceFirst(selectedCountry!.dialCode, "");
    }

    return selectedCountry!.dialCode + number;
  }

  goToNext(BuildContext context, int level) {
    if (level == 0) {
      context.go(RoutePaths.registerSuccessPath);
    } else {
      context.go(RoutePaths.homePath);
    }
  }

  deleteStorageItems() async {
    StorageValues.deleteLoginValues();
    await StorageHelpers.deleteAll();
    phoneController.clear();
    useBiometrics = false;
  }

  goToRecoverPassword(BuildContext context) {
    context.go(RoutePaths.passwordRecoveryPhonePath);
  }

  goToenterRecoveryCode(BuildContext context) {
    context.push(RoutePaths.enterRecoveryCodePath);
  }

  goToSignup(BuildContext context) {
    context.go(RoutePaths.addAccountPhonePath);
  }
}
