import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class SignupProgressViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }
}
