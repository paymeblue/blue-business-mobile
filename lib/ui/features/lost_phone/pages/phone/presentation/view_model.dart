import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/core/models/recover_phone/add/request/recover_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class ResetPhoneViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context, int i) {
    size = context.mediaQuery.size;
    setSelectedCountry();
    id = i;
  }

  void setSelectedCountry() {
    selectedCountry =
        countryCodes[countryCodes.indexOf(
          const CountryCode(
            countryCode: "NG",
            name: "Nigeria",
            dialCode: "+234",
          ),
        )];
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void onChanged(String? v) {
    notifyListeners();
  }

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  late int id;

  Future<void> sendNewPhone(BuildContext context) async {
    AppLoader.start();

    SendNewPhoneRequest request = SendNewPhoneRequest(
      phone: phoneController.text.validPhone(selectedCountry),
      userId: id.toString(),
    );

    SendNewPhoneResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .updatePhone(request)
            .onError(
              (error, stackTrace) => SendNewPhoneResponse(
                message: AppErrorHandler.getErrorMessage(error, {
                  "request_name": "update_phone",
                  "request": request.toString(),
                  "response_model": "SendNewPhoneResponse",
                }),
              ),
            );

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) goToNext(context, resp.data!);
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  void goToNext(BuildContext context, SendNewPhoneData data) {
    locator<AppRouter>().push(VerifyPhoneOtpRoute(data: data));
  }
}
