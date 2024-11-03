import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/account_recovery/presentation/view.dart';
import 'package:blue_business/ui/features/add_withdrawal_details/presentation/view.dart';
import 'package:blue_business/ui/features/branch/pages/enter_details/view.dart';
import 'package:blue_business/ui/features/branch/pages/home/presentation/view.dart';
import 'package:blue_business/ui/features/manage_beneficiaries/presentation/view.dart';
import 'package:blue_business/ui/features/payment_link_history/presentation/view.dart';
import 'package:blue_business/ui/features/personal_info/presentation/view.dart';
import 'package:blue_business/ui/features/staff/pages/enter_details/presentation/view.dart';
import 'package:blue_business/ui/features/staff/pages/home/presentation/view.dart';
import 'package:go_router/go_router.dart';

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
