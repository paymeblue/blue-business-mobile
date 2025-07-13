import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/ui/features/pump_price/bottom_navigation/widgets/navbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PumpPriceShellView extends StatefulWidget {
  const PumpPriceShellView({super.key});

  @override
  State<PumpPriceShellView> createState() => _PumpPriceShellViewState();
}

class _PumpPriceShellViewState extends State<PumpPriceShellView> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: AutoTabsScaffold(
        routes: const [PumpPriceBranchRoute(), PumpPriceAttendantRoute()],
        bottomNavigationBuilder: (context, tabsRouter) {
          return PumpPriceNavBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          );
        },
      ),
    );
  }
}
