import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:provider/provider.dart';

class AppStateManager extends DisposableProvider {
  bool _initialised = false;
  bool _login = false;
  bool _registerMethod = false;
  bool _registerSelf = false;
  bool _registerBusiness = false;
  bool _success = false;

  Widget _successTitle = const SizedBox();
  Widget _successMessage = const SizedBox();

  bool get isInitialised => _initialised;
  bool get login => _login;
  bool get registerMethod => _registerMethod;
  bool get registerSelf => _registerSelf;
  bool get registerBusiness => _registerBusiness;
  bool get success => _success;

  bool get splash => !_login && !_registerMethod;
  Widget get successMessage => _successMessage;
  Widget get successTitle => _successTitle;

  set success(bool v) {
    _success = v;
    notifyListeners();
  }

  set successMessage(Widget v) {
    _successMessage = v;
    notifyListeners();
  }

  set successtitle(Widget v) {
    _successTitle = v;
    notifyListeners();
  }

  set registerBusiness(bool v) {
    _registerBusiness = v;
    notifyListeners();
  }

  set registerSelf(bool v) {
    _registerSelf = v;
    notifyListeners();
  }

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
    _registerMethod = false;

    SystemNavigator.pop();
    notifyListeners();
  }

  @override
  void disposeValues() {
    _initialised = false;
    _login = false;
    _registerMethod = false;
  }
}
