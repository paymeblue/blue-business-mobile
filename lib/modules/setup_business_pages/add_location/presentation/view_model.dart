import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class AddBusinessLocationViewModel extends BaseViewModel {
  late Size size;
  AuthService authService = AuthService();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }
}
