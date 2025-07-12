import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:flutter/material.dart';

class MissingRouteViewModel extends BaseViewModel {
  late Size size;

  init() {
    size = MediaQuery.sizeOf(globalContext!);
  }

  close(String? newRoute) {
    if (globalContext!.canPop()) {
      globalContext!.pop();
    } else {
      globalContext!.go(newRoute ?? RoutePaths.initial);
    }
  }
}
