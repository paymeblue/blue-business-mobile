import 'package:blue_business/core/managers/auth_state_manager.dart';
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
