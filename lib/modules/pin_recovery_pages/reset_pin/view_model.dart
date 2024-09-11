import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/reset/pin/request/reset_pin_request.dart';
import 'package:blue_business/core/models/security_question/get/data/get_question_data.dart';
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

class ResetPinViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getSecurityQuestion(stateValues.currentUser!.phone)
            .onError((error, stackTrace) => GetQuestionResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "get_security_question",
                    "response_model": "GetQuestionResponse"
                  },
                )));

    if (context.mounted) goToForgotPin(context, resp.data);
    AppLoader.stop();
  }

  goToForgotPin(BuildContext context, GetQuestionData? question) {
    context.go(RoutePaths.pinRecoveryPhonePath, extra: question);
  }

  resetPin(BuildContext context, String phone) async {
    AppLoader.start();

    ResetPinRequest request = ResetPinRequest(newPin: pin);
    SendQuestionResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .resetPin(request)
            .onError((error, stackTrace) => SendQuestionResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "reset_pin",
                    "request": request.toString(),
                    "response_model": "SendQuestionResponse"
                  },
                )));

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

  onNewPinSet(String v, int i, BuildContext context, String phone) {
    switch (i) {
      case 0:
        setNewPinAndNavigate(v, i);
      default:
        setConfirmPinAndNavigate(v, context, phone);
    }
  }

  goBack(BuildContext context) {
    if (pageIndex == 0) {
      if (context.canPop()) {
        context.pop();
      } else {
        getSecurityQuestion(context);
      }
    } else {
      pageController.jumpToPage(0);
    }
  }

  String _pin = "", _confirmPin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  String get confirmPin => _confirmPin;
  set confirmPin(String p) {
    _confirmPin = p;
    notifyListeners();
  }

  setNewPinAndNavigate(String v, int i) {
    pin = v;
    pageController.animateToPage(2,
        duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
  }

  int _index = 0;
  int get pageIndex => _index;
  set pageIndex(int i) {
    _index = i;
    notifyListeners();
  }

  PageController pageController = PageController();

  onPageChanged(int i) {
    pageIndex = i;
  }

  setConfirmPinAndNavigate(String v, BuildContext context, String phone) {
    if (v == pin) {
      confirmPin = v;
      resetPin(context, phone);
    } else {
      AppNotification.error(message: "Pins do not match");
    }
  }
}
