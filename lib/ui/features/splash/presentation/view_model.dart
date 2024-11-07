import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/connection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = MediaQuery.sizeOf(globalContext!);

    ConnectionHelper.initialiseNetworkCheck(context);

    await StorageValues.getLoginValues();

    if (StorageValues.username.isNotEmpty) {
      if (StorageValues.skipWelcome == "true") {
        if (context.mounted) context.go(RoutePaths.login);
      } else {
        await StorageHelpers.setVal(
            StorageKeys.skipWelcomeKey, true.toString());
        if (context.mounted) context.go(RoutePaths.welcome);
      }
    } else {
      if (context.mounted) context.go(RoutePaths.welcome);
    }
  }
}
