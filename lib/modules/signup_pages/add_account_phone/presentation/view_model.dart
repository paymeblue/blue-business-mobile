import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/signup/request/signup_request.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/models/signup/user/signup_user_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterAccountPhoneViewModel extends BaseViewModel {
  late Size size;
  AuthService authService =
      AuthService(DioConfig.dio(locator<AppStateValues>().accessToken));

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
    AppLoader.start();

    SignupRequest request = SignupRequest(phone: phone);
    SignupResponse resp =
        await authService.signup(request).onError((error, stackTrace) {
      return SignupResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) {
        if (resp.data!.user.level == 3) {
          goToPassword(context, phone);
        } else {
          goToNext(context, phone, resp.data!.user);
        }
      }
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  goToNext(BuildContext context, String phone, SignupUserData user) {
    context.go("${RoutePaths.registerOtpPath}/$phone");
  }

  goToPassword(BuildContext context, String phone) {
    context.go("${RoutePaths.confirmPasswordPath}/$phone");
  }
}
