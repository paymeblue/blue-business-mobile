import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';

List<AutoRoute> pumpPriceRoutes = [
  AutoRoute(page: PumpPriceShellRoute.page, children: [
    AutoRoute(page: PumpPriceBranchRoute.page),
    AutoRoute(page: PumpPriceAttendantRoute.page),
  ], guards: [
    AuthGuards.logout()
  ]),
  AutoRoute(
    page: AddPumpPriceBranchRoute.page,
    guards: [AuthGuards.logout()],
  ),
  AutoRoute(
    page: AddPumpPriceAttendantRoute.page,
    guards: [AuthGuards.logout()],
  ),
  AutoRoute(
    page: PumpPriceBranchInsightsRoute.page,
    guards: [AuthGuards.logout()],
  )
];
