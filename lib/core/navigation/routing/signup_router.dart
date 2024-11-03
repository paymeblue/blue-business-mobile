part of 'route_imports/signup.dart';

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
  GoRoute(
    path: RoutePaths.createPin.routeSplitter,
    name: RoutePaths.createPin.routeSplitter,
    pageBuilder: (context, state) => CreatePinView(
      data: state.extra as SignupData,
    ).slide(),
  ),
];
