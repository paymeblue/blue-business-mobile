import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:provider/provider.dart';

class AppStateManager extends DisposableProvider {
  bool _initialised = false;
  bool _login = false;
  bool _registerMethod = false;

  bool get isInitialised => _initialised;
  bool get login => _login;
  bool get registerMethod => _registerMethod;

  bool get splash => !_login && !_registerMethod;

  set register(bool v) {
    _registerMethod = v;
    notifyListeners();
  }

  set login(bool v) {
    _login = v;
    notifyListeners();
  }

  void initializeApp() {
    _initialised = true;
    notifyListeners();
  }

  void goToLogin() {
    _initialised = true;
    _registerMethod = false;
    _login = true;
    notifyListeners();
  }

  void openSignup(BuildContext context) {
    AuthStateManager auth =
        Provider.of<AuthStateManager>(context, listen: false);
    _registerMethod = true;
    _login = false;
    auth.setIsRegistration(true);

    notifyListeners();
  }

  void goToSignup() {
    _initialised = true;
    _registerMethod = true;
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
