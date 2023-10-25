import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:flutter/material.dart';

class AuthStateManager extends DisposableProvider {
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String _name = "";

  TextEditingController phoneCotroller = TextEditingController(text: "+234");
  String get name => _name;

  set name(String v) {
    _name = v;
    notifyListeners();
  }

  String _otp = "";
  String get otp => _otp;

  set otp(String v) {
    _otp = v;
    notifyListeners();
  }

  bool _newLogin = false;
  bool get newLogin => _newLogin;

  set newLogin(bool v) {
    _newLogin = v;
    notifyListeners();
  }

  String _username = "";
  String get username => _username;

  set username(String v) {
    if (v.isNotEmpty && v[0] == "0") {
      v = v.replaceFirst("0", "");
    }
    if (v.length > 1 && v[0] != "+") {
      v.replaceAll(" ", "");
      v = "+234$v";
    }

    _username = v;
    notifyListeners();
  }

  String _phone = "";
  String get phone => _phone;

  set phone(String v) {
    if (v.isNotEmpty && v[0] == "0") {
      v = v.replaceFirst("0", "");
    }
    if (v.length > 1 && v[0] != "+") {
      v.replaceAll(" ", "");
      v = "+234$v";
    }
    _phone = v;
    notifyListeners();
  }

  String _password = "";
  String get password => _password;

  set password(String v) {
    _password = v;
    notifyListeners();
  }

  String _confPassword = "";
  String get confPassword => _confPassword;

  set confPassword(String v) {
    _confPassword = v;
    notifyListeners();
  }

  String _passcode = "";
  String get passcode => _passcode;

  set passcode(String v) {
    _passcode = v;
    notifyListeners();
  }

  bool _newPasscode = false;
  bool get newPasscode => _newPasscode;

  set newPasscode(bool w) {
    _newPasscode = w;
    notifyListeners();
  }

  bool _isRegistration = false;
  bool get isRegistration => _isRegistration;

  setIsRegistration(bool w) {
    _isRegistration = w;
    notifyListeners();
  }

  VoidCallback _onSendOtp = () {};
  VoidCallback get onSendOtp => _onSendOtp;

  set onSendOtp(VoidCallback callback) {
    _onSendOtp = callback;
    notifyListeners();
  }

  int _signupIndex = 0;
  int get signupIndex => _signupIndex;

  set signupIndex(int v) {
    _signupIndex = v;
    notifyListeners();
  }

  int _registerBusinessIndex = 0;
  int get registerBusinessIndex => _registerBusinessIndex;

  set registerBusinessIndex(int v) {
    _registerBusinessIndex = v;
    notifyListeners();
  }

  bool _useBiometrics = false;
  bool get useBiometrics => _useBiometrics;

  set useBiometrics(bool v) {
    _useBiometrics = v;
    notifyListeners();
  }

  @override
  void disposeValues() {
    _name = "";
    _otp = "";
    _newLogin = false;
    _username = "";
    _phone = "";
    _passcode = "";
    _password = "";
    _confPassword = "";
    _newPasscode = false;
    _isRegistration = false;
    _onSendOtp = () {};
    _signupIndex = 0;
    _useBiometrics = false;
  }
}
