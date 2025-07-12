import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/ui/features/bottom_navigation/widgets/navbar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

@RoutePage()
class DashboardShellView extends StatefulWidget {
  const DashboardShellView({super.key});

  @override
  State<DashboardShellView> createState() => _DashboardShellViewState();
}

class _DashboardShellViewState extends State<DashboardShellView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<DashboardShellViewModel>(
      onModelReady: (model) => model.init(context),
      model: DashboardShellViewModel(),
      builder: (context, model, _) {
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
      },
    );
  }
}
