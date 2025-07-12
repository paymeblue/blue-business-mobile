import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/ui/features/bottom_navigation/widgets/navbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardShellView extends StatefulWidget {
  const DashboardShellView({super.key});

  @override
  State<DashboardShellView> createState() => _DashboardShellViewState();
}

class _DashboardShellViewState extends State<DashboardShellView> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AutoTabsScaffold(
        routes: const [HomeRoute(), InsightsRoute(), SettingsRoute()],
        bottomNavigationBuilder: (context, tabsRouter) {
          return BlueNavBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          );
        },
      ),
    );
  }
}
