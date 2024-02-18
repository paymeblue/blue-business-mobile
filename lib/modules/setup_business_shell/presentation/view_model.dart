import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';

class SetupBusinessShellViewModel extends BaseViewModel {
  late Size size;

  init() {
    size = MediaQuery.sizeOf(globalContext!);
  }

  PageController pageController = PageController();

  goBack(BuildContext context, int i) {
    switch (i) {
      case 0:
      case 1:
      case 2:
      default:
    }
  }
}
