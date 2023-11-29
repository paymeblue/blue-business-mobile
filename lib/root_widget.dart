import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/managers/beneficiaries_state_manager.dart';
import 'package:blue_business/core/managers/chat_state_manager.dart';
import 'package:blue_business/core/managers/kyc_state_manager.dart';
import 'package:blue_business/core/managers/messaging_state_manager.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/managers/recovery_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'core/providers/setup.dart';
import 'core/services/locator.dart';
import 'core/services/navigation_service.dart';
import 'core/navigation/app_router.dart';
import 'core/managers/app_state_manager.dart';

class MobileScaffoldApp extends StatefulWidget {
  final bool isDebug;
  const MobileScaffoldApp({Key? key, this.isDebug = true}) : super(key: key);

  @override
  State<MobileScaffoldApp> createState() => _MobileScaffoldAppState();
}

class _MobileScaffoldAppState extends State<MobileScaffoldApp> {
  final _appStateManager = AppStateManager();
  final _authStateManager = AuthStateManager();
  final _paymentStateManager = PaymentStateManager();
  final _kycStateManager = KycStateManager();
  final _recoveryStateManager = RecoveryStateManager();
  final _beneficiaryStateManager = BeneficiariesStateManager();
  final _messagingStateManager = MessagingStateManager();
  final _chatStateManager = ChatStateManager();

  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
    );
  }

  final GlobalKey<NavigatorState> _navigatorKey =
      locator<NavigationService>().navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => _appStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _authStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _paymentStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _kycStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _recoveryStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _beneficiaryStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _messagingStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _chatStateManager,
        ),
        ...providers,
      ],
      child: OKToast(
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: MaterialApp(
            navigatorKey: _navigatorKey,
            debugShowCheckedModeBanner: widget.isDebug,
            theme: AppTheme.lightTheme(),
            home: Router(
              routerDelegate: _appRouter,
              backButtonDispatcher: RootBackButtonDispatcher(),
            ),
          ),
        ),
      ),
    );
  }
}
