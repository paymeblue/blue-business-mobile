import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class AddBusinessSizeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  List<String> sizes = ["Less than 10", "10 - 49", "50 - 249", "250 or more"];

  String _size = "";
  String get selectedSize => _size;
  set selectedSize(String s) {
    _size = s;
    notifyListeners();
  }

  int sizeMin() {
    switch (sizes.indexOf(selectedSize)) {
      case 0:
        return 0;
      case 1:
        return 10;
      case 2:
        return 50;
      case 3:
        return 250;
      default:
        return 0;
    }
  }

  int sizeMax() {
    switch (sizes.indexOf(selectedSize)) {
      case 0:
        return 9;
      case 1:
        return 49;
      case 2:
        return 249;
      case 3:
        return 3000;
      default:
        return 9;
    }
  }
}
