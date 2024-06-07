import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/signup_profile/request/signup_profile_request.dart';
import 'package:blue_business/core/models/token/token.dart';
import 'package:blue_business/core/models/user/user.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PinViewModel extends BaseViewModel {
  late Size size;
  late String id;

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

  checkBiometric(BuildContext context, User user) async {
    if (StorageValues.hasRequestedBiometrics != "true") {
      await BlueBottomSheet.biometrics(onContinue: () async {
        await allowBiometrics();
        if (context.mounted) {
          goToNext(context, user);
        }
      }, onCancel: () async {
        await denyBiometrics();
        if (context.mounted) {
          goToNext(context, user);
        }
      });
    } else if (StorageValues.enableBiometrics == "true") {
      await allowBiometrics();
      if (context.mounted) {
        goToNext(context, user);
      }
    } else if (context.mounted) {
      goToNext(context, user);
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

  goToNext(BuildContext context, User user) {
    if (user.businessProfile == null || user.businessProfile!.level == 0) {
      context.go(RoutePaths.registerSuccessPath);
    } else if (user.businessProfile!.level == 1) {
      context.go("${RoutePaths.businessSizePath}/${user.businessProfile!.id}");
    } else if (user.businessProfile!.level == 2) {
      context.go("${RoutePaths.businessLocation}/${user.businessProfile!.id}");
    } else {
      context.go(RoutePaths.homePath);
    }
  }
}
