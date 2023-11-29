import 'package:blue_business/core/managers/disposable_provider.dart';

class RecoveryStateManager extends DisposableProvider {
  String _username = "";
  String get username => _username;

  set username(String v) {
    if (v.isNotEmpty) {
      if (v[0] == "0") {
        v = v.replaceFirst("0", "");
      } else if (v[0] != "+") {
        v.replaceAll(" ", "");
        v = "+234$v";
      }
    }
    _username = v;
    notifyListeners();
  }

  String _password = "";
  String get password => _password;

  set password(String v) {
    _password = v;
    notifyListeners();
  }

  String _securityAnswer = "";
  String get securityAnswer => _securityAnswer;

  set securityAnswer(String v) {
    _securityAnswer = v;
    notifyListeners();
  }

  @override
  void disposeValues() {}
}
