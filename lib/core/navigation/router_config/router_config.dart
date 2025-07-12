import 'package:blue_business/ui/features/bottom_navigation/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/pin/presentation/view.dart';

import 'router.dart';
part 'router_config.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|View,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: WelcomeRoute.page),
        AutoRoute(
            page: LoginRoute.page,
            children: [AutoRoute(page: ResetPasswordRoute.page)]),
        AutoRoute(page: DashboardShellRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: InsightsRoute.page),
          AutoRoute(page: SettingsRoute.page)
        ], guards: [
          AutoRouteGuard.redirect((resolver) {
            final accessToken = locator<AppStateValues>().accessToken;
            if (accessToken.isEmpty) {
              return LoginRoute();
            }
            return null;
          })
        ]),
        AutoRoute(page: BlueWebview.page),
        AutoRoute(page: WithdrawalMethodRoute.page),
        AutoRoute(page: WalletRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
