import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class Biometrics {
  Biometrics._();

  static LocalAuthentication localAuth = LocalAuthentication();
  static BuildContext context =
      locator<NavigationService>().navigatorKey.currentContext!;

  static Future<bool> biometrics() async {
    final bool canAuthenticateWithBiometrics =
        await localAuth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await localAuth.isDeviceSupported();

    if (canAuthenticate) {
      return _useBiometrics();
    } else {
      if (context.mounted) {
        AppNotification.error(
            message:
                "You cannot authenticate with biometrics, type pin instead",
            context: context);
      }
      return false;
    }
  }

  static Future<bool> _useBiometrics() async {
    try {
      bool didAuthenticate =
          await localAuth.authenticate(localizedReason: 'Login');

      return didAuthenticate;
    } on PlatformException catch (e) {
      if (context.mounted) {
        AppNotification.error(message: e.message, context: context);
      }
      return false;
    }
  }
}
