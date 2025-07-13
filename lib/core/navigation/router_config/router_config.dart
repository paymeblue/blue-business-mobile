import 'package:blue_business/core/navigation/router_config/pump_price_routes.dart';
import 'package:blue_business/ui/features/pump_price/bottom_navigation/presentation/view.dart';

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
        AutoRoute(page: CreatePinRoute.page),
        AutoRoute(
          page: LoginRoute.page,
          guards: [
            AutoRouteGuard.simple((resolver, route) {
              resolver.next();
            })
          ],
        ),
        AutoRoute(page: ResetPasswordRoute.page),
        AutoRoute(page: ResetPhoneRoute.page),
        AutoRoute(page: DashboardShellRoute.page, children: [
          AutoRoute(page: HomeRoute.page, guards: [
            AuthGuards.logout(),
          ]),
          AutoRoute(page: InsightsRoute.page, guards: [
            AuthGuards.logout(),
          ]),
          AutoRoute(page: AppsRoute.page, guards: [
            AuthGuards.logout(),
          ]),
          AutoRoute(page: SettingsRoute.page, guards: [AuthGuards.logout()])
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
        AutoRoute(page: BillsRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: InitiateAirtimeRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ReviewAirtimeRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ConfirmAirtimePinRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: VendAirtimeSuccessRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: InitiateCableRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ReviewCableRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ConfirmCablePinRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: VendCableSuccessRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: InitiateDataRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ReviewDataRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ConfirmDataPinRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: VendDataSuccessRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: InitiateElectricityRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ReviewElectricityRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: ConfirmElectricityPinRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        AutoRoute(page: VendElectricitySuccessRoute.page, guards: [
          AuthGuards.logout(),
        ]),
        ...pumpPriceRoutes
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
