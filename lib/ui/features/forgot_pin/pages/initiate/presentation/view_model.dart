import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/forgot_pin/response/forgot_pin_response.dart';
import 'package:blue_business/core/models/recover_pin/request/recover_phone_request.dart';
import 'package:blue_business/core/models/security_question/get/data/get_question_data.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/signup/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitiatePinResetViewModel extends BaseViewModel {
  late Size size;
  late GetQuestionData? question;

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

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  bool _question = false;
  bool get useQuestion => _question;
  set useQuestion(bool v) {
    _question = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    context.pop();
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
          recoveryPhone: phoneController.text.validPhone(selectedCountry),
          validationMode: "recovery-phone");
    }

    ForgotPinResponse resp = await AuthService()
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
          context.push(RoutePaths.resetPin, extra: resp.data!.phone);
        } else {
          context.push(
            RoutePaths.verifyPinOtp,
            extra: VerifySignupOtpArgs(phone: resp.data!.phone),
          );
        }
      }
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  bool isActive() {
    if (!useQuestion) {
      return phoneController.text.isNotEmpty &&
          phoneController.text.length >= 10;
    } else {
      return answerController.text.isNotEmpty;
    }
  }
}
