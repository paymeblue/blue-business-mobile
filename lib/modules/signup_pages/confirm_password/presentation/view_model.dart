import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmPasswordViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  TextEditingController passwordController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  goToSuccess(BuildContext context) {
    context.go(RoutePaths.registerSuccessPath);
  }
}
