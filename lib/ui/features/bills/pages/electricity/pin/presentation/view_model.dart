import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/api/bills_service/bills_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/bills/electricity/vend/request/vend_electricity_request.dart';
import 'package:blue_business/core/models/bills/electricity/vend/response/vend_electricity_response.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
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
    context.pop();
  }

  onButtonTap(
      BuildContext context, VerifyElectricityData data, double amount) async {
    AppLoader.start();

    VendElectricityRequest request = VendElectricityRequest(
        transactionId: data.transactionId,
        passcode: pin,
        amount: amount.toString());

    VendElectricityResponse response = await BillsService()
        .vendElectricity(request)
        .onError((error, stackTrace) => VendElectricityResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "vend_electricity",
                "request": request.toString(),
                "response_model": "VendElectricityResponse"
              },
            )));

    if (response.status == "success") {
      if (StorageValues.pin.isEmpty) {
        savePin();
      }
      if (context.mounted) {
        context.push(RoutePaths.powerSuccess, extra: response.data!);
      }
    } else {
      if (context.mounted) {
        context.push(RoutePaths.walletPaymentFailure, extra: response.message!);
      }
    }

    AppLoader.stop();
  }

  completeWithBiometrics(
      BuildContext context, VerifyElectricityData data, double amount) async {
    bool canContinue = await Biometrics.biometrics();
    if (canContinue) {
      pin = StorageValues.pin;
      if (context.mounted) {
        onButtonTap(context, data, amount);
      }
    }
  }

  savePin() {
    StorageValues.pin = pin;
    StorageHelpers.setVal(StorageKeys.pinKey, pin);
  }

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp = await AuthService()
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
      context
          .push<bool>(RoutePaths.initiateResetPin, extra: resp.data)
          .then((val) {
        if (val == true) {
          AppNotification.success(message: resp.message);
        }
      });
    }
    AppLoader.stop();
  }
}
