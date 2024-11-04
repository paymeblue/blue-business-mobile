import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/forgot_password/pages/initiate/presentation/view.dart';
import 'package:blue_business/ui/features/forgot_password/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/forgot_password/pages/password/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/otp/presentation/view.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> loginRoutes = [
  GoRoute(
    path: RoutePaths.initiateResetPassword,
    pageBuilder: (context, state) {
      return const InitiatePasswordResetView().slide();
    },
  ),
  GoRoute(
    path: RoutePaths.verifyPasswordOtp,
    pageBuilder: (context, state) =>
        VerifyPasswordOtpView(args: state.extra as VerifySignupOtpArgs).slide(),
  ),
  GoRoute(
    path: RoutePaths.initiateResetPassword,
    pageBuilder: (context, state) => ResetPasswordView(
      phone: state.extra as String,
    ).slide(),
  )
];
