import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/models/bills/airtime/vend/request/vend_airtime_request.dart';
import 'package:blue_business/core/models/bills/airtime/vend/response/vend_airtime_response.dart';
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

  goBack(BuildContext context) {
    context.pop();
  }

  onButtonTap(BuildContext context, ReviewAirtimeData data) async {
    AppLoader.start();

    VendAirtimeRequest request = VendAirtimeRequest(
        receiver: data.phone,
        providerId: data.provider.id.toString(),
        passcode: pin,
        amount: data.amount.toString());

    VendAirtimeResponse response = await BillsService(DioConfig.dio())
        .vendAirtime(request)
        .onError((error, stackTrace) => VendAirtimeResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (context.mounted) {
        context.go(RoutePaths.airtimeSuccessPath, extra: response.data!);
      }
    } else {
      AppNotification.error(message: response.message);
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

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
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
