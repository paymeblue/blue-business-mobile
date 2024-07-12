import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/bills/cable/vend/request/vend_cable_request.dart';
import 'package:blue_business/core/models/bills/cable/vend/response/vend_cable_response.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmCablePinViewModel extends BaseViewModel {
  late Size size;
  late String id;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  goBack(BuildContext context) {
    context.pop();
  }

  onButtonTap(BuildContext context, VerifyCableData data) async {
    AppLoader.start();

    VendCableRequest request = VendCableRequest(
      transactionId: data.transactionId,
      passcode: pin,
    );

    VendCableResponse response = await BillsService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .vendCable(request)
        .onError((error, stackTrace) =>
            VendCableResponse(message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (context.mounted) {
        context.go(RoutePaths.cableSuccessPath, extra: response.data!);
      }
    } else {
      if (context.mounted) {
        context.go(RoutePaths.transactionErrorPath, extra: response.message!);
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

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getSecurityQuestion(stateValues.currentUser!.phone)
            .onError((error, stackTrace) => GetQuestionResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (context.mounted) goToForgotPin(context, resp.data?.question);
    AppLoader.stop();
  }

  goToForgotPin(BuildContext context, SecurityQuestion? question) {
    GoRouterState state = GoRouterState.of(context);
    stateValues.resetPath = state.matchedLocation;
    stateValues.extra = state.extra;
    context.go(RoutePaths.pinRecoveryPhonePath, extra: question);
  }

  savePin() {
    StorageValues.pin = pin;
    StorageHelpers.setVal(StorageKeys.pinKey, pin);
  }
}
