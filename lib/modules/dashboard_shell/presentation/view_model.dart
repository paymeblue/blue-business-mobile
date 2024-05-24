import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/timed_refresh.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardShellViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, StatefulNavigationShell c) {
    size = context.mediaQuery.size;

    currentIndex = c.currentIndex;
    GoRouterState state = GoRouterState.of(context);
    if (state.matchedLocation.contains("/dash")) {
      RefreshTimer().resetTimer();
    }
  }

  int _index = 0;
  int get currentIndex => _index;
  set currentIndex(int i) {
    _index = i;
    notifyListeners();
  }

  goToPage(BuildContext context, int index) {
    // child.goBranch(index);
    switch (index) {
      case 0:
        context.push(RoutePaths.homePath);
      case 1:
        context.push(RoutePaths.insightsPath);

      case 3:
        context.push(RoutePaths.billsPath);
      case 4:
        context.push(RoutePaths.settingsPath);
    }
    currentIndex = index;
  }
}
