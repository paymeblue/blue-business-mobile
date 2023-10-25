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
  bool _passcode = false;
  bool _forgotPassword = false;
  bool _resetPassword = false;
  bool _otp = false;
  bool _resetPin = false;
  bool _resetPhone = false;
  bool _recoveryPhone = false;
  bool _recoveryCode = false;
  bool _dashboard = false;
  bool _sendMoney = false;

  Widget _successTitle = const SizedBox();
  Widget _successMessage = const SizedBox();

  int _index = 0;

  bool get isInitialised => _initialised;
  bool get login => _login;
  bool get registerMethod => _registerMethod;
  bool get registerSelf => _registerSelf;
  bool get registerBusiness => _registerBusiness;
  bool get success => _success;
  bool get passcode => _passcode;
  bool get forgotPassword => _forgotPassword;
  bool get resetPassword => _resetPassword;
  bool get otp => _otp;
  bool get resetPin => _resetPin;
  bool get resetPhone => _resetPhone;
  bool get recoveryPhone => _recoveryPhone;
  bool get recoveryCode => _recoveryCode;
  bool get dashboard => _dashboard;
  bool get sendMoney => _sendMoney;

  bool get splash => !_login && !_registerMethod;
  Widget get successMessage => _successMessage;
  Widget get successTitle => _successTitle;

  int get dashIndex => _index;

  set sendMoney(bool v) {
    _sendMoney = v;
    notifyListeners();
  }

  set dashIndex(int v) {
    _index = v;
    notifyListeners();
  }

  goToDashboard() {
    _index = 0;
    _dashboard = true;
    _success = false;
    _login = false;
    _registerMethod = false;
    _registerSelf = false;
    _registerBusiness = false;

    notifyListeners();
  }

  set dashboard(bool v) {
    _dashboard = v;
    notifyListeners();
  }

  set recoveryCode(bool v) {
    _recoveryCode = v;
    notifyListeners();
  }

  set recoveryPhone(bool v) {
    _recoveryPhone = v;
    notifyListeners();
  }

  set resetPhone(bool v) {
    _resetPhone = v;
    notifyListeners();
  }

  set resetPin(bool v) {
    _resetPin = v;
    notifyListeners();
  }

  set forgotPassword(bool v) {
    _forgotPassword = v;
    notifyListeners();
  }

  set resetPassword(bool v) {
    _resetPassword = v;
    notifyListeners();
  }

  set otp(bool v) {
    _otp = v;
    notifyListeners();
  }

  set passcode(bool v) {
    _passcode = v;
    notifyListeners();
  }

  set success(bool v) {
    _success = v;
    notifyListeners();
  }

  set successMessage(Widget v) {
    _successMessage = v;
    notifyListeners();
  }

  set successTitle(Widget v) {
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
