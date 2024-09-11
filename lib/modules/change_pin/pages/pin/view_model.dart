import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class ChangePinContentViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }
}
