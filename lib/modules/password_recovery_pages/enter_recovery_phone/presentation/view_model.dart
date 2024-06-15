import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterPasswordRecoveryPhoneViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
    setSelectedCountry();
  }

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  CountryCode? _country;
  CountryCode? get selectedCountry => _country;
  set selectedCountry(CountryCode? v) {
    _country = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.loginPath);
  }

  sendRecoveryPhone(BuildContext context) async {}

  goToOtp(BuildContext context) {
    context.push("${RoutePaths.passwordRecoveryOtpPath}/${formatPhone()}");
  }

  String formatPhone() {
    String number = phoneController.text.replaceAll(" ", "");

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
    }
    if (number.startsWith(selectedCountry!.dialCode)) {
      number = number.replaceFirst(selectedCountry!.dialCode, "");
    }

    return (selectedCountry!.dialCode + number).replaceFirst("+", "");
  }
}
