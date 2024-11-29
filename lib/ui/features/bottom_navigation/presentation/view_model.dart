import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardShellViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, StatefulNavigationShell c) {
    size = context.mediaQuery.size;

    currentIndex = c.currentIndex;
  }

  startLogout(BuildContext context) async {
    BlueDialog.primary(
      title: "Logout",
      subtitle: "Are you sure you want to logout",
      onDelete: () async {
        await logout(context, true);
      },
      confirmText: "Confirm",
    );
  }

  logout(BuildContext context, [bool logout = false]) async {
    AppLoader.start();

    if (context.mounted) {
      context.go(RoutePaths.login);
    }
    locator<AppStateValues>().notificationState =
        NotificationState.logoutSuccess;
    RefreshTimer().cancelTimer();

    AppLoader.stop();
  }

  int _index = 0;
  int get currentIndex => _index;
  set currentIndex(int i) {
    _index = i;
    notifyListeners();
  }

  goToPage(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.pushReplacement(RoutePaths.home);
      case 1:
        context.push(RoutePaths.insights);
      case 2:
        //   context.push(RoutePaths.loansPath);
        // case 3:
        context.push(RoutePaths.settings);
    }
    currentIndex = index;
  }
}
