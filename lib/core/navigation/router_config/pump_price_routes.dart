import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';

List<AutoRoute> pumpPriceRoutes = [
  AutoRoute(page: PumpPriceShellRoute.page, children: [
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: HomeRoute.page),
  ], guards: [
    AuthGuards.logout()
  ])
];
