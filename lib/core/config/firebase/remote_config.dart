import 'dart:convert';

import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:store_checker/store_checker.dart';

class RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig;

  RemoteConfigService._(this._remoteConfig);

  static Future<RemoteConfigService> initialize() async {
    final remoteConfig = FirebaseRemoteConfig.instance;

    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 30),
      minimumFetchInterval: const Duration(seconds: 0),
    ));

    await remoteConfig.setDefaults({
      'minimum_version': '0.0.0',
      'force_update': false,
      'use_voice': false,
      'locked_feature': RoutePaths.bills,
      'nigerian_states': jsonEncode({'states': []}),
    });

    try {
      await remoteConfig.fetchAndActivate();
    } catch (e) {
      FirebaseCrashlytics.instance.recordError(e, null);
    }

    return RemoteConfigService._(remoteConfig);
  }

  isFromTestflight() async {
    Source installationSource = await StoreChecker.getSource;

    locator<AppStateValues>().isTestApp =
        (installationSource != Source.IS_INSTALLED_FROM_APP_STORE) &&
            (installationSource != Source.IS_INSTALLED_FROM_PLAY_STORE);

    locator<AppStateValues>().lockedFeature =
        _remoteConfig.getString('locked_feature');
  }

  String get minimumVersion => _remoteConfig.getString('minimum_version');

  Map<String, dynamic> get nigerianStates =>
      jsonDecode(_remoteConfig.getString('nigerian_states'));

  bool get forceUpdate => _remoteConfig.getBool('force_update');

  bool get useVoice => _remoteConfig.getBool('use_voice');

  Future<bool> isUpdateRequired() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final currentVersion = packageInfo.version;

    return _isVersionLower(currentVersion, minimumVersion);
  }

  bool _isVersionLower(String current, String minimum) {
    final currentParts = current.split('.').map(int.parse).toList();
    final minimumParts = minimum.split('.').map(int.parse).toList();

    for (var i = 0; i < minimumParts.length; i++) {
      final currentPart = i < currentParts.length ? currentParts[i] : 0;
      if (currentPart < minimumParts[i]) return true;
      if (currentPart > minimumParts[i]) return false;
    }

    return false; // Versions are equal or higher
  }
}
