import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/recover_phone/add/request/recover_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterNewPhoneViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context, int i) {
    size = context.mediaQuery.size;
    setSelectedCountry();
    id = i;
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
    context.pop();
  }

  late int id;

  sendNewPhone(BuildContext context) async {
    AppLoader.start();

    SendNewPhoneRequest request =
        SendNewPhoneRequest(phone: formatPhone(), userId: id.toString());

    SendNewPhoneResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .updatePhone(request)
            .onError((error, stackTrace) => SendNewPhoneResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) goToNext(context, formatPhone());
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
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

  goToNext(BuildContext context, String phone) {
    context.push("${RoutePaths.phoneRecoveryOtpPath}/$phone");
  }
}
