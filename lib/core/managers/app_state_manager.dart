import 'package:flutter/services.dart';
import 'package:blue_business/core/managers/disposable_provider.dart';

class AppStateManager extends DisposableProvider {
  bool _initialised = false;
  bool _login = false;
  bool _register = false;

  bool get isInitialised => _initialised;
  bool get login => _login;
  bool get register => _register;

  void initializeApp() {
    _initialised = true;
    notifyListeners();
  }

  void goToLogin() {
    _initialised = true;
    _register = false;
    _login = true;
    notifyListeners();
  }

  void goToSignup() {
    _initialised = true;
    _register = true;
    _login = false;
    notifyListeners();
  }

  void closeApp() {
    _initialised = false;
    _login = false;

    SystemNavigator.pop();
    notifyListeners();
  }

  @override
  void disposeValues() {
    // TODO: implement disposeValues
  }
}
