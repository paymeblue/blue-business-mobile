import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SetupBusinessShellViewModel extends BaseViewModel {
  late Size size;

  init() {
    size = MediaQuery.sizeOf(globalContext!);
  }

  PageController pageController = PageController();

  goBack(BuildContext context, int i) {
    GoRouterState state = GoRouterState.of(context);
    switch (i) {
      case 0:
        context.go(RoutePaths.registerSuccessPath);
      case 1:
        context.go(RoutePaths.businessNamePath);
      case 2:
        context
            .go("${RoutePaths.businessNamePath}/${state.pathParameters["id"]}");
    }
  }
}
