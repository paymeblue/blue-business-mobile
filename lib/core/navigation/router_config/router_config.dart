import 'package:blue_business/core/models/bills/airtime/vend/data/vend_airtime_data.dart';
import 'package:blue_business/core/models/bills/cable/vend/data/vend_cable_data.dart';
import 'package:blue_business/core/models/bills/data/vend/data/vend_data_data.dart';
import 'package:blue_business/core/models/bills/electricity/vend/data/vend_electricity_data.dart';
import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/ui/features/bills/pages/airtime/success/presentation/view.dart';
import 'package:blue_business/ui/features/bills/pages/cable/success/presentation/view.dart';
import 'package:blue_business/ui/features/bills/pages/data/success/presentation/view.dart';
import 'package:blue_business/ui/features/bills/pages/electricity/success/presentation/view.dart';
import 'package:blue_business/ui/features/forgot_password/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/forgot_pin/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/lost_phone/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/settings/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/splash/presentation/view.dart';
import 'package:blue_business/ui/features/staff/pages/home/presentation/view.dart';
import 'package:blue_business/ui/features/transaction_error/presentation/view.dart';
import 'package:blue_business/ui/features/transaction_history/presentation/view.dart';
import 'package:blue_business/ui/features/wallet/presentation/view.dart';
import 'package:blue_business/ui/features/welcome/presentation/view.dart';
import 'package:blue_business/ui/features/withdrawal_method/presentation/view.dart';

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
        AutoRoute(page: WithdrawalMethodRoute.page),
        AutoRoute(page: WalletRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
