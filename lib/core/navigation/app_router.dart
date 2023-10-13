import 'package:flutter/cupertino.dart';
import 'package:blue_business/screens.dart';
import '../managers/app_state_manager.dart';

class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  late final GlobalKey<NavigatorState> navigatorKey;

  late final AppStateManager appStateManager;

  AppRouter({
    required this.appStateManager,
  }) : navigatorKey = GlobalKey<NavigatorState>() {
    appStateManager.addListener(notifyListeners);
  }

  @override
  void dispose() {
    appStateManager.removeListener(notifyListeners);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _handlePopPage,
      pages: [
        if (appStateManager.splash) SplashView.page(),
        if (appStateManager.registerMethod) RegisterMethodView.page(),
        if (appStateManager.login) LoginView.page(),
        if (appStateManager.registerSelf) RegisterSelfView.page(),
        if (appStateManager.registerBusiness) RegisterBusinessView.page(),
        if (appStateManager.success &&
            appStateManager.successMessage != const SizedBox() &&
            appStateManager.successTitle != const SizedBox())
          SuccessView.page(),
      ],
    );
  }

  bool _handlePopPage(Route<dynamic> route, result) {
    if (!route.didPop(result)) {
      return false;
    }

    return true;
  }

  @override
  Future<void> setNewRoutePath(configuration) async {
    return;
  }
}
