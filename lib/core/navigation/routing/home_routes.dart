import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/branch/pages/enter_details/view.dart';
import 'package:blue_business/ui/features/branch/pages/home/presentation/view.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> homeRoutes = [
  GoRoute(
      path: RoutePaths.homeToBranches.routeSplitter,
      name: RoutePaths.homeToBranches.routeSplitter,
      parentNavigatorKey: locator<NavigationService>().navigatorKey,
      pageBuilder: (context, state) => const BranchHomeView().slide(),
      routes: [
        GoRoute(
          path: RoutePaths.homeToBranchesToDetails.routeSplitter,
          name: RoutePaths.homeToBranchesToDetails.routeSplitter,
          parentNavigatorKey: locator<NavigationService>().navigatorKey,
          pageBuilder: (context, state) => EnterBranchDetailsView(
            branch: state.extra as Branch?,
          ).slide(),
        ),
      ]),
];
