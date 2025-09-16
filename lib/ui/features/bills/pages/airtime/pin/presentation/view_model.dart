import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/api/bills_service/bills_service.dart';
import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/models/bills/airtime/vend/request/vend_airtime_request.dart';
import 'package:blue_business/core/models/bills/airtime/vend/response/vend_airtime_response.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class ConfirmElectricityPinViewModel extends BaseViewModel {
  late Size size;
  late String id;

  init(BuildContext context) {
    size = context.mediaQuery.size;
    useBiometrics = StorageValues.enableBiometrics == "true";
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  bool _useBiometrics = false;
  bool get useBiometrics => _useBiometrics;
  set useBiometrics(bool v) {
    _useBiometrics = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  onButtonTap(BuildContext context, ReviewAirtimeData data) async {
    AppLoader.start();

    VendAirtimeRequest request = VendAirtimeRequest(
        receiver: data.phone,
        providerId: data.provider.id.toString(),
        passcode: pin,
        amount: data.amount.toString());

    VendAirtimeResponse response = await BillsService()
        .vendAirtime(request)
        .onError((error, stackTrace) => VendAirtimeResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "vend_airtime",
                "request": request.toString(),
                "response_model": "VendAirtimeResponse"
              },
            )));

    if (response.status == "success") {
      if (StorageValues.pin.isEmpty) {
        savePin();
      }
      locator<AppRouter>()
          .replaceAll([VendAirtimeSuccessRoute(data: response.data!)]);
    } else {
      locator<AppRouter>()
          .push(TransactionErrorRoute(error: response.message!));
    }

    AppLoader.stop();
  }

  completeWithBiometrics(BuildContext context, ReviewAirtimeData data) async {
    bool canContinue = await Biometrics.biometrics();
    if (canContinue) {
      pin = StorageValues.pin;
      if (context.mounted) {
        onButtonTap(context, data);
      }
    }
  }

  savePin() {
    StorageValues.pin = pin;
    StorageHelpers.setVal(StorageKeys.pinKey, pin);
  }

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getSecurityQuestion(locator<AppStateValues>().currentUser!.phone)
            .onError((error, stackTrace) => GetQuestionResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "get_security_question",
                    "response_model": "GetQuestionResponse"
                  },
                )));

    if (context.mounted) {
      locator<AppRouter>()
          .push<bool>(InitiatePinResetRoute(securityQuestion: resp.data))
          .then((val) {
        if (val == true) {
          AppNotification.success(message: resp.message);
        }
      });
    }
    AppLoader.stop();
  }
}
