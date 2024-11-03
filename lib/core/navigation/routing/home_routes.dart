part of 'route_imports/home.dart';

List<GoRoute> homeRoutes = [
  GoRoute(
    path: RoutePaths.homeToBranches.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const BranchHomeView().slide(),
    routes: [
      GoRoute(
        path: RoutePaths.homeToBranchesToDetails.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => EnterBranchDetailsView(
          branch: state.extra as Branch?,
        ).slide(),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.homeToStaff.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const StaffHomeView().slide(),
    routes: [
      GoRoute(
        path: RoutePaths.homeToStaffToDetails.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => EnterStaffDetailsView(
          staff: state.extra as Staff?,
        ).slide(),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.homeToRecive.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const ReceiveMoneyView().slide(),
  ),
  GoRoute(
    path: RoutePaths.transactionHistory.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) =>
        const TransactionHistoryView().slide(dir: SlideDirections.btt),
    routes: [
      GoRoute(
        path: RoutePaths.transactionDetails(method: ":method").routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) {
          final method = state.pathParameters['method'];
          if (method == "airtime") {
            return AirtimeDetailsView(detail: state.extra as AirtimeDetails)
                .slide();
          } else if (method == "tv") {
            return CableDetailsView(detail: state.extra as CableDetails)
                .slide();
          } else if (method == "data") {
            return DataDetailsView(detail: state.extra as DataDetails).slide();
          } else if (method == "power") {
            return PowerDetailsView(detail: state.extra as PowerDetails)
                .slide();
          } else {
            return PaymentDetailsView(detail: state.extra as PaymentDetail)
                .slide();
          }
        },
      ),
    ],
  ),
];
