import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterPinRecoveryPhoneViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context, SecurityQuestion? q) {
    size = context.mediaQuery.size;
    setSelectedCountry();

    question = q;
  }

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController answerController = TextEditingController();
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

  SecurityQuestion? _q;
  SecurityQuestion? get question => _q;
  set question(SecurityQuestion? q) {
    _q = q;
    notifyListeners();
  }

  bool _question = false;
  bool get useQuestion => _question;
  set useQuestion(bool v) {
    _question = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    context.go(stateValues.resetPath, extra: stateValues.extra);
  }

  onButtonTap(BuildContext context) {
    if (useQuestion) {
    } else {}
  }

  bool isActive() {
    if (!useQuestion) {
      return phoneController.text.isNotEmpty &&
          phoneController.text.length >= 10;
    } else {
      return answerController.text.isNotEmpty;
    }
  }

  goToOtp(BuildContext context) {
    context.push("${RoutePaths.pinRecoveryOtpPath}/${formatPhone()}");
  }

  goToPin(BuildContext context) {
    context
        .go("${RoutePaths.recoverPinPath}/${stateValues.currentUser!.phone}");
  }

  String formatPhone() {
    String number = phoneController.text.replaceAll(" ", "");

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
    }
    if (number.startsWith(selectedCountry!.dialCode)) {
      number = number.replaceFirst(selectedCountry!.dialCode, "");
    }

    return selectedCountry!.dialCode + number;
  }
}
