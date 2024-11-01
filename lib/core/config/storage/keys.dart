import 'dart:convert';

import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/models/country/country_code.dart';

class StorageKeys {
  StorageKeys._();

  static String nameKey = "name";
  static String usernameKey = "username";
  static String selectedCountryCode = "selected_country_code";
  static String pinKey = "pin";
  static String passwordKey = "password";
  static String enableBiometricsKey = "enable_biometrics";
  static String hasRequestedBiometricsKey = "hasAsked";
  static String skipWelcomeKey = "skipWelcome";
}

class StorageValues {
  static String name = "";
  static String username = "";
  static String pin = "";
  static String password = "";
  static String enableBiometrics = "";
  static String hasRequestedBiometrics = "";
  static CountryCode? selectedCountryCode;
  static String skipWelcome = "";

  static getLoginValues() async {
    name = await StorageHelpers.getVal(StorageKeys.nameKey);
    username = (await StorageHelpers.getVal(StorageKeys.usernameKey));

    String countryCodeString =
        await StorageHelpers.getVal(StorageKeys.selectedCountryCode);
    if (countryCodeString.isNotEmpty) {
      selectedCountryCode = CountryCode.fromJson(jsonDecode(countryCodeString));
    }

    skipWelcome = await StorageHelpers.getVal(StorageKeys.skipWelcomeKey);

    password = await StorageHelpers.getVal(StorageKeys.passwordKey);
    pin = await StorageHelpers.getVal(StorageKeys.pinKey);
    enableBiometrics =
        await StorageHelpers.getVal(StorageKeys.enableBiometricsKey);

    hasRequestedBiometrics =
        await StorageHelpers.getVal(StorageKeys.hasRequestedBiometricsKey);
  }

  static deleteLoginValues() async {
    name = "";
    username = "";

    selectedCountryCode = null;

    password = "";
    enableBiometrics = "";

    hasRequestedBiometrics = "";
  }
}
