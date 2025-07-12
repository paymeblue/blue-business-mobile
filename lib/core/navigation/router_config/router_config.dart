import 'dart:developer';

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
        AutoRoute(page: InitiateSignupRoute.page),
        AutoRoute(page: VerifySignupOtpRoute.page),
        AutoRoute(page: SignupProgressRoute.page),
        AutoRoute(page: AddBusinessDetailsRoute.page),
        AutoRoute(page: SelectShareholderRoute.page),
        AutoRoute(page: ShareholderKycRoute.page),
        AutoRoute(
          page: LoginRoute.page,
          guards: [
            AutoRouteGuard.simple((resolver, route) {
              log(route.currentPath);
              resolver.next();
            })
          ],
        ),
        AutoRoute(page: ResetPasswordRoute.page),
        AutoRoute(page: ResetPhoneRoute.page),
        AutoRoute(page: DashboardShellRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: InsightsRoute.page),
          AutoRoute(page: SettingsRoute.page)
        ], guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: WithdrawalMethodRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: WalletRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: PaymentDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: AirtimeDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: CableDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: DataDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: PowerDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: AccountRecoveryRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: AddWithdrawalDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: EnterBranchDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: BranchHomeRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: BranchInsightsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: BusinessFeesRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ChangePasswordRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ChangePinRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ComingSoonRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ErrorRouteRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: TransactionHistoryRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: InitiatePasswordResetRoute.page),
        AutoRoute(page: VerifyPasswordOtpRoute.page),
        AutoRoute(page: ResetPasswordRoute.page),
        AutoRoute(page: InitiatePinResetRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: VerifyPinOtpRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ResetPinRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: InitiatePhoneResetRoute.page),
        AutoRoute(page: VerifyPhoneOtpRoute.page),
        AutoRoute(page: ResetPhoneRoute.page),
        AutoRoute(page: PersonalInfoRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ManageBeneficiariesRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: InitiateTransactionRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: PhonePaymentRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: BluePaymentRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: QrPaymentRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ConfirmTransactionRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: CompletePaymentRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: PaymentSuccessRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: PaymentLinkHistoryRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ResetPinRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ReceiveMoneyRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: EnterStaffDetailsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: StaffHomeRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: TransactionErrorRoute.page, guards: [
          AuthGuards.logout(),
        ]),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}

class AuthGuards {
  AuthGuards._();

  static AutoRouteGuard logout() {
    return AutoRouteGuard.redirect((resolver) {
      final accessToken = locator<AppStateValues>().accessToken;
      if (accessToken.isEmpty) {
        return LoginRoute(
          onSuccess: () {
            resolver.next();
          },
        );
      }
      return null;
    });
  }
}
