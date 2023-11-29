import 'package:blue_business/core/managers/disposable_provider.dart';

class KycStateManager extends DisposableProvider {
  int _kycIndex = 0;
  int get kycIndex => _kycIndex;

  set kycIndex(int n) {
    _kycIndex = n;
    notifyListeners();
  }

  String _date = "", _bvn = "", _idType = "";

  String get idType => _idType;
  set idType(String v) {
    _idType = v;
    notifyListeners();
  }

  String get date => _date;
  set date(String v) {
    _date = v;
    notifyListeners();
    // log(("Date set: $date");
  }

  String get bvn => _bvn;
  set bvn(String v) {
    _bvn = v;
    notifyListeners();
  }

  bool _isActive = false;
  bool get isActive => _isActive;

  set isActive(bool v) {
    _isActive = v;
    notifyListeners();
  }

  @override
  void disposeValues() {}
}
