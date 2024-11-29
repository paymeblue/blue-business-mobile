import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class Biometrics {
  Biometrics._();

  static LocalAuthentication localAuth = LocalAuthentication();

  static Future<bool> biometrics() async {
    final bool canAuthenticateWithBiometrics =
        await localAuth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await localAuth.isDeviceSupported();

    if (canAuthenticate) {
      return _useBiometrics();
    } else {
      AppNotification.error(
        message: "You cannot authenticate with biometrics, type pin instead",
      );

      return false;
    }
  }

  static Future<List<BiometricType>> getAuthType() async {
    List<BiometricType> types = await localAuth.getAvailableBiometrics();

    return types;
  }

  static Future<bool> _useBiometrics() async {
    try {
      bool didAuthenticate =
          await localAuth.authenticate(localizedReason: 'Login');

      return didAuthenticate;
    } on PlatformException catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));

      return false;
    } catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
      return false;
    }
  }
}
