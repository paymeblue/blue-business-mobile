import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class SignupShellViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = MediaQuery.of(context).size;
  }
}
