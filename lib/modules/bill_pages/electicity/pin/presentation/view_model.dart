import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/bills/electricity/vend/request/vend_electricity_request.dart';
import 'package:blue_business/core/models/bills/electricity/vend/response/vend_electricity_response.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmElectricityPinViewModel extends BaseViewModel {
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

  goBack(BuildContext context, VerifyElectricityData data, double amount) {
    context.pop();
  }

  onButtonTap(
      BuildContext context, VerifyElectricityData data, double amount) async {
    AppLoader.start();

    VendElectricityRequest request = VendElectricityRequest(
        transactionId: data.transactionId,
        passcode: pin,
        amount: amount.toString());

    VendElectricityResponse response = await BillsService(DioConfig.dio())
        .vendElectricity(request)
        .onError((error, stackTrace) => VendElectricityResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (context.mounted) {
        context.go(RoutePaths.electricitySuccessPath, extra: response.data!);
      }
    } else {
      AppNotification.error(message: response.message);
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

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp = await TransactionService()
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
