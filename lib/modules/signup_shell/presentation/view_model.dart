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

  goBack(BuildContext context, int i) {
    switch (i) {
      case 0:
        if (context.canPop()) {
          context.pop();
        } else {
          context.go(RoutePaths.splashPath);
        }
      case 1:
      case 2:
        context.go(RoutePaths.addAccountPhonePath);
      case 3:
        GoRouterState state = GoRouterState.of(context);
        if (state.matchedLocation.startsWith(RoutePaths.confirmPasswordPath)) {
          context.go(RoutePaths.addAccountPhonePath);
        } else {
          String id = state.pathParameters["id"] as String;
          context.go("/$id${RoutePaths.addPersonalInfoPath}");
        }
      default:
    }
  }
}
