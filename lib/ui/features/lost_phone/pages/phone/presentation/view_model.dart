import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/core/models/recover_phone/add/request/recover_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPhoneViewModel extends BaseViewModel {
  late Size size;

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

    SendNewPhoneResponse resp = await AuthService()
        .updatePhone(request)
        .onError((error, stackTrace) => SendNewPhoneResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "update_phone",
                "request": request.toString(),
                "response_model": "SendNewPhoneResponse"
              },
            )));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) goToNext(context, resp.data!);
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
    if (number
        .replaceFirst("+", "")
        .startsWith(selectedCountry!.dialCode.replaceFirst("+", ""))) {
      number = number
          .replaceFirst("+", "")
          .replaceFirst(selectedCountry!.dialCode.replaceFirst("+", ""), "");
    }

    return selectedCountry!.dialCode + number;
  }

  goToNext(BuildContext context, SendNewPhoneData data) {
    context.push(RoutePaths.verifyPhoneOtp, extra: data);
  }
}
