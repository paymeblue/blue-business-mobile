part of "route_imports/login.dart";

List<GoRoute> loginRoutes = [
  GoRoute(
    path: RoutePaths.initiateResetPassword.routeSplitter,
    pageBuilder: (context, state) {
      return const InitiatePasswordResetView().slide();
    },
  ),
  GoRoute(
    path: RoutePaths.verifyPasswordOtp.routeSplitter,
    pageBuilder: (context, state) =>
        VerifyPasswordOtpView(args: state.extra as VerifySignupOtpArgs).slide(),
  ),
  GoRoute(
    path: RoutePaths.initiateResetPassword.routeSplitter,
    pageBuilder: (context, state) => ResetPasswordView(
      phone: state.extra as String,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.initiateResetPhone.routeSplitter,
    pageBuilder: (context, state) {
      return const InitiatePhoneResetView().slide();
    },
  ),
  GoRoute(
    path: RoutePaths.verifyPhoneOtp.routeSplitter,
    pageBuilder: (context, state) =>
        VerifyPhoneOtpView(data: state.extra as SendNewPhoneData).slide(),
  ),
  GoRoute(
    path: RoutePaths.resetPhone.routeSplitter,
    pageBuilder: (context, state) => ResetPhoneView(
      id: state.extra as int,
    ).slide(),
  ),
];
