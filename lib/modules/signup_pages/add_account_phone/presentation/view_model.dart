import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterAccountPhoneViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    setSelectedCountry();

    size = context.mediaQuery.size;
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

  goToLogin(BuildContext context) {
    context.go(RoutePaths.loginPath);
  }

  signup(BuildContext context) async {
    String number = phoneController.text;
    if (number.startsWith(selectedCountry!.dialCode)) {
      number.replaceFirst(selectedCountry!.dialCode, "");
    }
    if (number.startsWith("0")) {
      number.replaceFirst("0", "");
    }
    String phone = selectedCountry!.dialCode + number;

    if (context.mounted) goToNext(context, phone);
  }

  goToNext(BuildContext context, String phone) {
    context.go("${RoutePaths.registerOtpPath}/$phone");
  }

  goToPassword(BuildContext context) {
    context.go(RoutePaths.confirmPasswordPath);
  }
}
