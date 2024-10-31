import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  // errorBuilder: (context, state) {
  //   return ErrorRouteView(
  //     message: state.error?.message,
  //     newRoute: state.matchedLocation.startsWith("/dash")
  //         ? RoutePaths.homePath
  //         : RoutePaths.loginPath,
  //   );
  // },
  redirect: (context, state) {
    AppStateValues stateValues = locator<AppStateValues>();
    if (stateValues.currentUser == null &&
        state.matchedLocation.contains("/dash")) {
      return RoutePaths.login;
    }
    return state.matchedLocation;
  },
  initialLocation: "/",
  navigatorKey: locator<NavigationService>().navigatorKey,
  routes: [],
);
