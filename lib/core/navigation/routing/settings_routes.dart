part of 'route_imports/settings.dart';

List<GoRoute> settingsRoutes = [
  GoRoute(
    path: RoutePaths.settingsToBranches.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const BranchHomeView().slide(),
    routes: [
      GoRoute(
        path: RoutePaths.settingsToBranchesToDetails.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => EnterBranchDetailsView(
          branch: state.extra as Branch?,
        ).slide(),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.settingsToStaff.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const StaffHomeView().slide(),
    routes: [
      GoRoute(
        path: RoutePaths.settingsToStaffToDetails.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => EnterStaffDetailsView(
          staff: state.extra as Staff?,
        ).slide(),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.paymentLinkHistory.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const PaymentLinkHistoryView().slide(),
  ),
  GoRoute(
    path: RoutePaths.personalInfo.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const PersonalInfoView().slide(),
  ),
  GoRoute(
    path: RoutePaths.beneficiary.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const ManageBeneficiariesView().slide(),
  ),
  GoRoute(
    path: RoutePaths.accountRecovery.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const AccountRecoveryView().slide(),
  ),
  GoRoute(
    path: RoutePaths.withdrawalInfo.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const AddWithdrawalDetailsView().slide(),
  ),
];
