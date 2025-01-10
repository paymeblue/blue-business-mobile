part of 'route_imports/home.dart';

List<GoRoute> homeRoutes = [
  GoRoute(
    path: RoutePaths.homeToBranches.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const BranchHomeView().slide(),
    routes: [
      GoRoute(
        path: RoutePaths.homeToBranchesToDetails.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => EnterBranchDetailsView(
          branch: state.extra as Branch?,
        ).slide(),
      ),
      GoRoute(
        path: RoutePaths.homeToBranchInsights.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => BranchInsightsView(
          branch: state.extra as Branch,
        ).slide(),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.homeToStaff.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const StaffHomeView().slide(),
    routes: [
      GoRoute(
        path: RoutePaths.homeToStaffToDetails.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => EnterStaffDetailsView(
          staff: state.extra as Staff?,
        ).slide(),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.receive.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const ReceiveMoneyView().slide(),
  ),
  GoRoute(
    path: RoutePaths.wallet.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const WalletView().slide(),
    routes: [
      GoRoute(
        path: RoutePaths.bills.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        builder: (context, state) {
          if (locator<AppStateValues>().isTestApp) {
            return const BillsView();
          } else {
            return const ComingSoonView();
          }
        },
        routes: billRoutes,
      ),
      GoRoute(
        path: RoutePaths.initiateTransaction.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => InitiateTransactionView(
          mode: state.extra as PaymentMode?,
        ).slide(),
      ),
      GoRoute(
        path: RoutePaths.verifyReceiver.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) {
          final args = state.extra as VerifyReceiverArgs;
          if (args.mode == PaymentMode.phone) {
            return PhonePaymentView(data: args.data).slide();
          } else if (args.mode == PaymentMode.qr) {
            return QrPaymentView(data: args.data).slide();
          } else {
            return BluePaymentView(data: args.data).slide();
          }
        },
      ),
      GoRoute(
        path: RoutePaths.confirmTransaction.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => ConfirmTransactionView(
          args: state.extra as ConfirmTransactionViewArgs,
        ).slide(),
      ),
      GoRoute(
        path: RoutePaths.transactionPin.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => CompletePaymentView(
          args: state.extra as ConfirmTransactionViewArgs,
        ).slide(),
        routes: [
          GoRoute(
            path: RoutePaths.initiateResetPin.routeSplitter,
            parentNavigatorKey: locator<NavigationService>().navigatorKey,
            pageBuilder: (context, state) => InitiatePinResetView(
              securityQuestion: state.extra as GetQuestionData?,
            ).slide(),
          ),
          GoRoute(
            path: RoutePaths.verifyPinOtp.routeSplitter,
            parentNavigatorKey: locator<NavigationService>().navigatorKey,
            pageBuilder: (context, state) => VerifyPinOtpView(
              args: state.extra as VerifySignupOtpArgs,
            ).slide(),
          ),
          GoRoute(
            path: RoutePaths.resetPin.routeSplitter,
            parentNavigatorKey: locator<NavigationService>().navigatorKey,
            pageBuilder: (context, state) => ResetPinView(
              phone: state.extra as String,
            ).slide(),
          ),
        ],
      ),
      GoRoute(
        path: RoutePaths.walletPaymentFailure.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => TransactionErrorView(
          error: state.extra as String,
        ).slide(),
      ),
      GoRoute(
        path: RoutePaths.walletPaymentSuccess.routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) => PaymentSuccessView(
          args: state.extra as PaymentSuccessViewArgs,
        ).slide(),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.transactionHistory.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) =>
        const TransactionHistoryView().slide(dir: SlideDirections.btt),
    routes: [
      GoRoute(
        path: RoutePaths.transactionDetails(method: ":method").routeSplitter,
        parentNavigatorKey: locator<NavigationService>().navigatorKey,
        pageBuilder: (context, state) {
          final method = state.pathParameters['method'];
          if (method == "airtime") {
            return AirtimeDetailsView(detail: state.extra as AirtimeDetails)
                .slide();
          } else if (method == "tv") {
            return CableDetailsView(detail: state.extra as CableDetails)
                .slide();
          } else if (method == "data") {
            return DataDetailsView(detail: state.extra as DataDetails).slide();
          } else if (method == "power") {
            return PowerDetailsView(detail: state.extra as PowerDetails)
                .slide();
          } else {
            return PaymentDetailsView(detail: state.extra as PaymentDetail)
                .slide();
          }
        },
      ),
    ],
  ),
];
