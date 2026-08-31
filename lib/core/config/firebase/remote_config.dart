import 'dart:convert';

import 'package:blue_business/core/navigation/injection/locator.dart';
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

    Map<String, dynamic> states = {
      "states": [
        {"name": "Abia", "alt_name": ""},
        {"name": "Adamawa", "alt_name": ""},
        {"name": "Akwa Ibom", "alt_name": ""},
        {"name": "Anambra", "alt_name": ""},
        {"name": "Bauchi", "alt_name": ""},
        {"name": "Bayelsa", "alt_name": ""},
        {"name": "Benue", "alt_name": ""},
        {"name": "Borno", "alt_name": ""},
        {"name": "Cross River", "alt_name": ""},
        {"name": "Delta", "alt_name": ""},
        {"name": "Ebonyi", "alt_name": ""},
        {"name": "Edo", "alt_name": ""},
        {"name": "Ekiti", "alt_name": ""},
        {"name": "Enugu", "alt_name": ""},
        {"name": "Gombe", "alt_name": ""},
        {"name": "Imo", "alt_name": ""},
        {"name": "Jigawa", "alt_name": ""},
        {"name": "Kaduna", "alt_name": ""},
        {"name": "Kano", "alt_name": ""},
        {"name": "Katsina", "alt_name": ""},
        {"name": "Kebbi", "alt_name": ""},
        {"name": "Kogi", "alt_name": ""},
        {"name": "Kwara", "alt_name": ""},
        {"name": "Lagos", "alt_name": ""},
        {"name": "Nasarawa", "alt_name": ""},
        {"name": "Niger", "alt_name": ""},
        {"name": "Ogun", "alt_name": ""},
        {"name": "Ondo", "alt_name": ""},
        {"name": "Osun", "alt_name": ""},
        {"name": "Oyo", "alt_name": ""},
        {"name": "Plateau", "alt_name": ""},
        {"name": "Rivers", "alt_name": ""},
        {"name": "Sokoto", "alt_name": ""},
        {"name": "Taraba", "alt_name": ""},
        {"name": "Yobe", "alt_name": ""},
        {"name": "Zamfara", "alt_name": ""},
        {"name": "FCT(Abuja)", "alt_name": "Abuja"},
      ],
    };

    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 30),
        minimumFetchInterval: const Duration(seconds: 0),
      ),
    );

    await remoteConfig.setDefaults({
      'minimum_version': '1.0.5',
      'force_update': false,
      'use_voice': false,
      'locked_feature': jsonEncode({'features': []}),
      'nigerian_states': jsonEncode(states),
    });

    try {
      await remoteConfig.fetchAndActivate();
    } catch (e) {
      FirebaseCrashlytics.instance.recordError(e, null);
    }

    return RemoteConfigService._(remoteConfig);
  }

  Future<void> isFromTestflight() async {
    Source installationSource = await StoreChecker.getSource;

    locator<AppStateValues>().isTestApp =
        (installationSource != Source.IS_INSTALLED_FROM_APP_STORE) &&
        (installationSource != Source.IS_INSTALLED_FROM_PLAY_STORE);

    locator<AppStateValues>().lockedFeatures =
        (jsonDecode(_remoteConfig.getString('locked_feature'))['features']
                as List)
            .map<String>((e) => e)
            .toList();
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
