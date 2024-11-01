import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/ui/features/welcome/presentation/view.dart';
import 'package:flutter/material.dart';
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
  initialLocation: "/welcome",
  navigatorKey: locator<NavigationService>().navigatorKey,
  routes: [
    GoRoute(
      path: RoutePaths.welcome,
      name: "Welcome",
      builder: (context, state) {
        return const WelcomeView();
      },
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
        child: const WelcomeView(),
      ),
    ),
  ],
);
