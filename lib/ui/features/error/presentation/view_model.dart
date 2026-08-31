import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:flutter/material.dart';

class MissingRouteViewModel extends BaseViewModel {
  late Size size;

  void init() {
    size = MediaQuery.sizeOf(globalContext!);
  }

  void close(PageRouteInfo? newRoute) {
    globalContext!.maybePop().then((v) {
      if (!v) {
        globalContext!.router.replaceAll([newRoute ?? SplashRoute()]);
      }
    });
  }
}
