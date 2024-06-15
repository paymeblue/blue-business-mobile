import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPinViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  getSecurityQuestion(BuildContext context) async {}

  goToForgotPin(BuildContext context, SecurityQuestion? question) {
    context.go(RoutePaths.pinRecoveryPhonePath, extra: question);
  }

  resetPin(BuildContext context, String phone) async {}

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }
}
