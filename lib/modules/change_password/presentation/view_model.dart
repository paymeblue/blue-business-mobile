import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  TextEditingController passwordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RegExp letters = RegExp((r'[a-zA-Z]+?').toString());
  RegExp numbers = RegExp((r'[0-9]+?').toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  List<Map<String, dynamic>> conditions() => [
        {
          "isComplete": newPasswordController.text.length >= 9,
          "condition": "Must contain 9 characters"
        },
        {
          "isComplete": letters.hasMatch(newPasswordController.text),
          "condition": "Must contain a letter"
        },
        {
          "isComplete": special.hasMatch(newPasswordController.text),
          "condition": "Must contain a symbol"
        },
        {
          "isComplete": numbers.hasMatch(newPasswordController.text),
          "condition": "Must contain a number"
        },
      ];

  bool isActive() {
    return numbers.hasMatch(newPasswordController.text) &&
        special.hasMatch(newPasswordController.text) &&
        letters.hasMatch(newPasswordController.text) &&
        newPasswordController.text.length >= 9 &&
        newPasswordController.text == confirmPasswordController.text &&
        passwordController.text.isNotEmpty;
  }

  onChanged(String? v) {
    notifyListeners();
  }

  goToNext(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }

  changePassword(BuildContext context) async {}

  saveInStorage() async {
    StorageValues.password = newPasswordController.text;

    await StorageHelpers.setVal(
        StorageKeys.passwordKey, newPasswordController.text);
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }
}
