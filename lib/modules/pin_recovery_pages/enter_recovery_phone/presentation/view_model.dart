import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/forgot_pin/response/forgot_pin_response.dart';
import 'package:blue_business/core/models/recover_pin/request/recover_phone_request.dart';
import 'package:blue_business/core/models/security_question/get/data/get_question_data.dart';
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

  init(BuildContext context, GetQuestionData? q) {
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

  GetQuestionData? _q;
  GetQuestionData? get question => _q;
  set question(GetQuestionData? q) {
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
    sendRecoveryPhone(context);
  }

  bool isActive() {
    if (!useQuestion) {
      return phoneController.text.isNotEmpty &&
          phoneController.text.length >= 10;
    } else {
      return answerController.text.isNotEmpty;
    }
  }

  sendRecoveryPhone(BuildContext context) async {
    AppLoader.start();
    late SendRecoverPinRequest request;
    if (useQuestion) {
      request = SendRecoverPinRequest(
          validationMode: "security-answer",
          securityAnswer: answerController.text);
    } else {
      request = SendRecoverPinRequest(
          recoveryPhone: formatPhone(), validationMode: "recovery-phone");
    }

    ForgotPinResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .forgotPinWithPhone(request)
            .onError((error, stackTrace) => ForgotPinResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "forgot_[in_with_phone",
                    "request": request.toString(),
                    "response_model": "ForgotPinResponse"
                  },
                )));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);

      if (context.mounted) {
        if (useQuestion) {
          goToSetPin(context, resp.data!.phone);
        } else {
          goToOtp(context);
        }
      }
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  goToSetPin(BuildContext context, String phone) {
    context.go("${RoutePaths.recoverPinPath}/$phone");
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
