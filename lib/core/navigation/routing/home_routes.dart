import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/branch/pages/home/presentation/view.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> homeRoutes = [
  GoRoute(
    path: RoutePaths.homeToBranches.routeSplitter,
    name: RoutePaths.homeToBranches.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const BranchHomneView().slide(),
  ),
];
