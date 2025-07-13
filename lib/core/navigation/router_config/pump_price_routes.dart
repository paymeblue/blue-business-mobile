import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';

List<AutoRoute> pumpPriceRoutes = [
  AutoRoute(page: PumpPriceShellRoute.page, children: [
    AutoRoute(page: PumpPriceBranchRoute.page),
    AutoRoute(page: PumpPriceBranchRoute.page),
  ], guards: [
    AuthGuards.logout()
  ])
];
