import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupShellViewModel extends BaseViewModel {
  late Size size;

  init() {
    size = MediaQuery.sizeOf(globalContext!);
  }

  PageController pageController = PageController();

  goBack(BuildContext context) {
    GoRouterState state = GoRouterState.of(context);
    if (state.path!.startsWith(RoutePaths.addAccountPhonePath) ||
        state.path!.startsWith(RoutePaths.registerProgressPath)) {
      if (context.canPop()) {
        context.pop();
      } else {
        context.go(RoutePaths.welcomePath);
      }
    } else if (state.path!.startsWith(RoutePaths.registerOtpPath)) {
      context.go(RoutePaths.addAccountPhonePath);
    } else {
      context.go(RoutePaths.registerProgressPath);
    }
  }
}
