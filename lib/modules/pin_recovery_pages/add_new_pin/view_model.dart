import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/reset/pin/request/reset_pin_request.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/models/security_question/send/response/send_question_request.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPinViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();
  late TransactionService transactionService =
      TransactionService(DioConfig.dio(stateValues.accessToken));

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp = await transactionService
        .getSecurityQuestion(stateValues.currentUser!.phone)
        .onError((error, stackTrace) => GetQuestionResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (context.mounted) goToForgotPin(context, resp.data?.question);
    AppLoader.stop();
  }

  goToForgotPin(BuildContext context, SecurityQuestion? question) {
    context.go(RoutePaths.pinRecoveryPhonePath, extra: question);
  }

  resetPin(BuildContext context, String phone) async {
    AppLoader.start();

    ResetPinRequest request = ResetPinRequest(phone: phone, newPasscode: pin);
    SendQuestionResponse resp = await transactionService
        .resetPin(request)
        .onError((error, stackTrace) => SendQuestionResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) {
        context.go(stateValues.resetPath, extra: stateValues.extra);
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }
}
