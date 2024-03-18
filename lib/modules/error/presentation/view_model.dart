import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MissingRouteViewModel extends BaseViewModel {
  late Size size;

  init() {
    size = MediaQuery.sizeOf(globalContext!);
  }

  close(String? newRoute) {
    if (globalContext!.canPop()) {
      globalContext!.pop();
    } else {
      globalContext!.go(newRoute ?? RoutePaths.splashPath);
    }
  }
}
