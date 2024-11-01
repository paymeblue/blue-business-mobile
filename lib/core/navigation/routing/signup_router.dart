import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/signup/pages/business_details/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/register/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/shareholder_kyc/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/shareholders/presentation/view.dart';

import 'package:go_router/go_router.dart';

List<GoRoute> sigupRoutes = [
  GoRoute(
    path: RoutePaths.initiateSignup.routeSplitter,
    name: RoutePaths.initiateSignup.routeSplitter,
    pageBuilder: (context, state) => const InitiateSignupView().slide(
      dir: SlideDirections.rtl,
    ),
  ),
  GoRoute(
    path: RoutePaths.verifySignupOtp.routeSplitter,
    name: RoutePaths.verifySignupOtp.routeSplitter,
    pageBuilder: (context, state) => VerifySignupOtpView(
      args: state.extra as VerifySignupOtpArgs,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.businessDetails.routeSplitter,
    name: RoutePaths.businessDetails.routeSplitter,
    pageBuilder: (context, state) => AddBusinessDetailsView(
      data: state.extra as SignupData,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.shareholders.routeSplitter,
    name: RoutePaths.shareholders.routeSplitter,
    pageBuilder: (context, state) => SelectShareholderView(
      data: state.extra as SignupData,
    ).slide(),
    routes: [
      GoRoute(
        path: RoutePaths.shareholderKyc.routeSplitter,
        name: RoutePaths.shareholderKyc.routeSplitter,
        pageBuilder: (context, state) => ShareholderKycView(
          args: state.extra as ShareholderKycViewArgs,
        ).slide(),
      ),
    ],
  ),
];
