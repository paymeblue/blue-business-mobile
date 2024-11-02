import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/home_routes.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/navigation/routing/settings_routes.dart';
import 'package:blue_business/core/navigation/routing/signup_router.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/bottom_navigation/presentation/view.dart';
import 'package:blue_business/ui/features/error/presentation/view.dart';
import 'package:blue_business/ui/features/home/presentation/view.dart';
import 'package:blue_business/ui/features/insights/presentation/view.dart';
import 'package:blue_business/ui/features/login/presentation/view.dart';
import 'package:blue_business/ui/features/settings/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/progress/presentation/view.dart';
import 'package:blue_business/ui/features/splash/presentation/view.dart';
import 'package:blue_business/ui/features/welcome/presentation/view.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  errorPageBuilder: (context, state) => ErrorRouteView(
    message: state.error?.message,
    newRoute: state.matchedLocation.startsWith("/dash")
        ? RoutePaths.home
        : RoutePaths.initial,
  ).fade,
  redirect: (context, state) {
    AppStateValues stateValues = locator<AppStateValues>();
    if (stateValues.currentUser == null &&
        state.matchedLocation.contains("/dash")) {
      return RoutePaths.login;
    }
    return state.matchedLocation;
  },
  initialLocation: RoutePaths.initial,
  navigatorKey: locator<NavigationService>().navigatorKey,
  routes: [
    //Splash
    GoRoute(
      path: RoutePaths.initial,
      name: RoutePaths.initial,
      pageBuilder: (context, state) => const SplashView().fade,
    ),

    //Welcome
    GoRoute(
      path: RoutePaths.welcome,
      name: RoutePaths.welcome,
      pageBuilder: (context, state) => const WelcomeView().fade,
    ),

    //Signup
    GoRoute(
      path: RoutePaths.signup,
      name: RoutePaths.signup,
      pageBuilder: (context, state) => SignupProgressView(
        data: state.extra as SignupData,
      ).fade,
      routes: sigupRoutes,
    ),

    //Login
    GoRoute(
      path: RoutePaths.login,
      name: RoutePaths.login,
      pageBuilder: (context, state) => const LoginView().fade,
    ),

    //Dashboard
    StatefulShellRoute.indexedStack(
      pageBuilder: (context, state, child) =>
          DashboardShellView(child: child).fade,
      parentNavigatorKey: locator<NavigationService>().navigatorKey,
      branches: [
        StatefulShellBranch(
          initialLocation: RoutePaths.home,
          routes: [
            GoRoute(
              path: RoutePaths.home,
              name: RoutePaths.home,
              pageBuilder: (context, state) => const HomeView().slide(),
              routes: homeRoutes,
            )
          ],
        ),
        StatefulShellBranch(
          initialLocation: RoutePaths.insights,
          routes: [
            GoRoute(
              path: RoutePaths.insights,
              name: RoutePaths.insights,
              pageBuilder: (context, state) => const InsightsView().slide(),
            )
          ],
        ),
        StatefulShellBranch(
          initialLocation: RoutePaths.settings,
          routes: [
            GoRoute(
              path: RoutePaths.settings,
              name: RoutePaths.settings,
              pageBuilder: (context, state) => const SettingsView().slide(),
              routes: settingsRoutes,
            )
          ],
        )
      ],
    )
  ],
);
