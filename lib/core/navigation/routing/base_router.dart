part of 'route_imports/base.dart';

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
      pageBuilder: (context, state) => const SplashView().fade,
    ),

    //Welcome
    GoRoute(
      path: RoutePaths.welcome,
      pageBuilder: (context, state) => const WelcomeView().fade,
    ),

    //Signup
    GoRoute(
      path: RoutePaths.signup,
      pageBuilder: (context, state) => SignupProgressView(
        data: state.extra as SignupData,
      ).fade,
      routes: sigupRoutes,
    ),

    //Login
    GoRoute(
      path: RoutePaths.login,
      pageBuilder: (context, state) => const LoginView().fade,
      routes: loginRoutes,
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
    ),
    GoRoute(
      path: RoutePaths.webview,
      parentNavigatorKey: locator<NavigationService>().navigatorKey,
      pageBuilder: (context, state) =>
          BlueWebview(args: state.extra as BlueWebViewArgs).fade,
    )
  ],
);
