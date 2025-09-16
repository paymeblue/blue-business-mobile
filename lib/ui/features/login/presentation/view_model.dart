import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/api/profile_service/profile_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/login/data/login_data.dart';
import 'package:blue_business/core/models/login/request/login_request.dart';
import 'package:blue_business/core/models/login/response/login_response.dart';
import 'package:blue_business/core/models/notification/get/response/get_notification_response.dart';
import 'package:blue_business/core/models/token/token.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends BaseViewModel {
  late Size size;
  VoidCallback? onSuccess;

  void init(BuildContext context, VoidCallback? callback) {
    size = context.mediaQuery.size;

    onSuccess = callback;

    setSelectedCountry();
    getDataFromStorage();

    Future.delayed(const Duration(milliseconds: 500), () {
      if (locator<AppStateValues>().notificationState != null) {
        locator<AppStateValues>().clear();
        showNotification();
      } else if (useBiometrics &&
          StorageValues.password.isNotEmpty &&
          context.mounted) {
        completeWithBiometrics(context);
      }
    });
  }

  Future<void> goBack() async {
    await StorageHelpers.setVal(StorageKeys.skipWelcomeKey, false.toString());

    globalContext!.router.maybePop().then((v) {
      if (!v) {
        globalContext!.router.replace(WelcomeRoute());
      }
    });
  }

  void showNotification() {
    switch (locator<AppStateValues>().notificationState!) {
      case NotificationState.logoutSuccess:
        AppNotification.success(
          message: "You have been logged out successfully. See you soon",
        );
      case NotificationState.error:
        AppNotification.error(message: "Session timed out. Please login again");
      case NotificationState.warning:
        AppNotification.warning(
          message: "Session timed out due toinactivity. Please login again",
        );
      case NotificationState.signupSuccess:
        AppNotification.success(
          message: "You have successfully signed up. Login to continue.",
        );
    }
    locator<AppStateValues>().notificationState = null;
  }

  void setSelectedCountry() {
    selectedCountry =
        countryCodes[countryCodes.indexOf(
          const CountryCode(
            countryCode: "NG",
            name: "Nigeria",
            dialCode: "+234",
          ),
        )];
  }

  void onCountryChanged(CountryCode? value) {
    if (value != null) selectedCountry = value;
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

  void getDataFromStorage() {
    phoneController.text = StorageValues.username.validPhone(selectedCountry);

    useBiometrics = StorageValues.enableBiometrics == "true";
  }

  Future<void> setNameInStorage(String name, String phone) async {
    await StorageHelpers.setVal(StorageKeys.nameKey, name);
    await StorageHelpers.setVal(StorageKeys.usernameKey, phone);

    StorageValues.name = name;
    StorageValues.username = phone;
  }

  Future<void> completeWithBiometrics(BuildContext context) async {
    bool canContinue = await Biometrics.biometrics();
    if (canContinue) {
      passwordController.text = StorageValues.password;
      if (context.mounted) login(context);
    }
  }

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onChanged(String? v) {
    notifyListeners();
  }

  Future<void> login(BuildContext context) async {
    AppLoader.start();
    String p = phoneController.text.validPhone(selectedCountry);

    LoginRequest request = LoginRequest(
      phone: p,
      password: passwordController.text,
      fcmToken: locator<AppStateValues>().fcmToken.isEmpty
          ? null
          : locator<AppStateValues>().fcmToken,
    );

    LoginResponse resp =
        await AuthService(
          DioConfig.dio(locator<AppStateValues>().accessToken),
        ).login(request: request).onError((error, stackTrace) {
          return LoginResponse(
            message: AppErrorHandler.getErrorMessage(error, {
              "request_name": "login",
              "request": request.toString(),
              "response_model": "LoginResponse",
            }),
          );
        });

    AppLoader.stop();

    if (resp.status == "success") {
      await setNameInStorage(resp.data!.business.name, p);
      saveTokens(resp.data!.token);
      getNotificationStatus();
      locator<AppStateValues>().currentUser = resp.data!;

      if (context.mounted) {
        await checkBiometric(context, resp.data!);
      }
    } else {
      AppNotification.error(message: resp.message);
    }
  }

  Future<void> getNotificationStatus() async {
    GetNotificationResponse resp = await ProfileService()
        .getNotificationStatus()
        .onError((error, stackTrace) {
          return GetNotificationResponse(
            message: AppErrorHandler.getErrorMessage(error, {
              "request_name": "get_notification_status",
              "response_model": "GetNotificationResponse",
            }),
          );
        });

    if (resp.status == "success") {
      locator<AppStateValues>().notificationStatus =
          resp.data!.notificationStatus;
    } else {}
  }

  Future<void> checkBiometric(BuildContext context, LoginData user) async {
    if (StorageValues.hasRequestedBiometrics != "true") {
      await BlueBottomSheet.biometrics(
        onContinue: () async {
          await allowBiometrics();
          if (context.mounted) {
            goToNext(context, user);
          }
        },
        onCancel: () async {
          await denyBiometrics();
          if (context.mounted) {
            goToNext(context, user);
          }
        },
      );
    } else if (StorageValues.enableBiometrics == "true") {
      await allowBiometrics();
      if (context.mounted) {
        goToNext(context, user);
      }
    } else if (context.mounted) {
      goToNext(context, user);
    }
  }

  Future<void> allowBiometrics() async {
    await StorageHelpers.setVal(
      StorageKeys.hasRequestedBiometricsKey,
      true.toString(),
    );
    await StorageHelpers.setVal(
      StorageKeys.enableBiometricsKey,
      true.toString(),
    );
    await StorageHelpers.setVal(
      StorageKeys.passwordKey,
      passwordController.text,
    );

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "true";
    StorageValues.password = passwordController.text;

    useBiometrics = true;
  }

  Future<void> denyBiometrics() async {
    await StorageHelpers.setVal(
      StorageKeys.hasRequestedBiometricsKey,
      true.toString(),
    );
    await StorageHelpers.setVal(
      StorageKeys.enableBiometricsKey,
      false.toString(),
    );

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "false";

    useBiometrics = false;
  }

  void saveTokens(Token token) {
    locator<AppStateValues>().accessToken = token.accessToken;
    locator<AppStateValues>().refreshToken = token.refreshToken;
  }

  void goToNext(BuildContext context, LoginData user) {
    RefreshTimer().resetTimer();
    onSuccess ?? locator<AppRouter>().replaceAll([HomeRoute()]);
  }

  Future<void> deleteStorageItems() async {
    StorageValues.deleteLoginValues();
    await StorageHelpers.deleteAll();
    phoneController.clear();
    useBiometrics = false;
  }

  void goToRecoverPassword(BuildContext context) {
    locator<AppRouter>().push<bool>(InitiatePasswordResetRoute()).then((val) {
      if (val == true) {
        AppNotification.success(message: "Password reset successfully");
      }
    });
  }

  void goToenterRecoveryCode(BuildContext context) {
    locator<AppRouter>().push<bool>(InitiatePhoneResetRoute()).then((val) {
      if (val == true) {
        AppNotification.success(message: "Phone number reset successfully");
      }
    });
  }

  void goToSignup(BuildContext context) {
    locator<AppRouter>().replace(InitiateSignupRoute());
  }
}
