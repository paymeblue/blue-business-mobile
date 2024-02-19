import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/security_question/send/request/send_question_request.dart';
import 'package:blue_business/core/models/security_question/send/response/send_question_request.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterPinRecoveryPhoneViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();
  late TransactionService transactionService = TransactionService();
  late AuthService authService = AuthService();

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
      sendSecurityQuestion(context);
    } else {
      sendRecoveryPhone(context);
    }
  }

  bool isActive() {
    if (!useQuestion) {
      return phoneController.text.isNotEmpty &&
          phoneController.text.length >= 10;
    } else {
      return answerController.text.isNotEmpty;
    }
  }

  sendSecurityQuestion(BuildContext context) async {
    AppLoader.start();

    SendQuestionRequest request = SendQuestionRequest(
        phone: "+${stateValues.currentUser!.phone}",
        answer: answerController.text);

    SendQuestionResponse resp = await transactionService
        .sendSecurityAnswer(request)
        .onError((error, stackTrace) => SendQuestionResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      if (context.mounted) goToPin(context);
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  sendRecoveryPhone(BuildContext context) async {
    // AppLoader.start();
    // SendNewPhoneRequest request = SendNewPhoneRequest(phone: formatPhone());

    // SendNewPhoneResponse resp = await authService
    //     .forgotPinWithPhone(request)
    //     .onError((error, stackTrace) => SendNewPhoneResponse(
    //         message: AppErrorHandler.getErrorMessage(error)));

    // if (resp.status == "success") {
    //   AppNotification.success(message: resp.message);
    //   if (context.mounted) goToOtp(context);
    // } else {
    //   AppNotification.error(message: resp.message);
    // }
    // AppLoader.stop();
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
