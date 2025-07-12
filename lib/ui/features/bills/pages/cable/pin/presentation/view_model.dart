import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/api/bills_service/bills_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/bills/cable/vend/request/vend_cable_request.dart';
import 'package:blue_business/core/models/bills/cable/vend/response/vend_cable_response.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
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

class ConfirmCablePinViewModel extends BaseViewModel {
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
    context.router.back();
  }

  onButtonTap(BuildContext context, VerifyCableData data) async {
    AppLoader.start();

    VendCableRequest request = VendCableRequest(
      transactionId: data.transactionId,
      passcode: pin,
    );

    VendCableResponse response =
        await BillsService().vendCable(request).onError(
              (error, stackTrace) => VendCableResponse(
                message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "vend_cable",
                    "request": request.toString(),
                    "response_model": "VendCableResponse"
                  },
                ),
              ),
            );

    if (response.status == "success") {
      if (StorageValues.pin.isEmpty) {
        savePin();
      }
      if (context.mounted) {
        context.router.push(VendCableSuccessRoute(data: response.data!));
      }
    } else {
      if (context.mounted) {
        context.router.push(TransactionErrorRoute(error: response.message!));
      }
    }

    AppLoader.stop();
  }

  completeWithBiometrics(BuildContext context, VerifyCableData data) async {
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
      context.router
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
