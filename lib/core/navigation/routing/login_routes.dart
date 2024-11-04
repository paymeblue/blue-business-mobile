import 'package:blue_business/core/models/recover_phone/add/data/recover_phone_data.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/forgot_password/pages/initiate/presentation/view.dart';
import 'package:blue_business/ui/features/forgot_password/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/forgot_password/pages/password/presentation/view.dart';
import 'package:blue_business/ui/features/lost_phone/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/features/lost_phone/pages/phone/presentation/view.dart';
import 'package:blue_business/ui/features/lost_phone/pages/recovery_code/presentation/view.dart';
import 'package:blue_business/ui/features/signup/pages/otp/presentation/view.dart';
import 'package:go_router/go_router.dart';

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
  )
];
