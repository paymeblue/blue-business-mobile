import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/signup/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class InitiatePasswordResetViewModel extends BaseViewModel {
  late Size size;

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

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  sendRecoveryPhone(BuildContext context) async {
    AppLoader.start();

    SendNewPhoneResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .forgotPassword(phoneController.text.validPhone(selectedCountry))
            .onError((error, stackTrace) => SendNewPhoneResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "forgot_[in_with_phone",
                    "response_model": "ForgotPinResponse"
                  },
                )));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);

      if (context.mounted) {
        locator<AppRouter>().push(VerifyPasswordOtpRoute(
            args: VerifySignupOtpArgs(
                phone: phoneController.text.validPhone(selectedCountry))));
      }
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  bool isActive() {
    return phoneController.text.isNotEmpty && phoneController.text.length >= 10;
  }
}
