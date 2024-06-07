import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EnterRecoveryCodeViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  TextEditingController recoveryCodeController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  sendRecoveryCode(BuildContext context) async {}

  goToNext(BuildContext context, int id) {
    context.push("${RoutePaths.recoverPhoneNumberPath}/$id");
  }
}
