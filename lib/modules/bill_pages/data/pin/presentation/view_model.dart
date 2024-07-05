import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/bills/data/vend/request/vend_data_request.dart';
import 'package:blue_business/core/models/bills/data/vend/response/vend_data_response.dart';
import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
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

class ConfirmDataPinViewModel extends BaseViewModel {
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

  onButtonTap(BuildContext context, VerifyDataData data) async {
    AppLoader.start();

    VendDataRequest request = VendDataRequest(
      transactionId: data.transactionId,
      passcode: pin,
    );

    VendDataResponse response = await BillsService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .vendData(request)
        .onError((error, stackTrace) =>
            VendDataResponse(message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (context.mounted) {
        context.go(RoutePaths.dataSuccessPath, extra: response.data!);
      }
    } else {
      if (context.mounted) {
        context.go(RoutePaths.transactionErrorPath, extra: response.message!);
      }
    }

    AppLoader.stop();
  }

  completeWithBiometrics(BuildContext context, VerifyDataData data) async {
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
