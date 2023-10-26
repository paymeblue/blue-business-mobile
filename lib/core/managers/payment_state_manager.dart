import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:blue_business/core/models/beneficiary.dart';
import 'package:contacts_service/contacts_service.dart';

class PaymentStateManager extends DisposableProvider {
  String _walletId = "";
  String _phone = "";
  int? _index;
  PaymentMethod? _method;
  Beneficiary? _recipient;
  late AppStateManager appStateManager;

  String get walletId => _walletId;
  String get phone => _phone;
  int? get contactIndex => _index;
  PaymentMethod? get method => _method;
  Beneficiary? get recipient => _recipient;

  int? _id;
  int? get id => _id;
  set id(int? n) {
    _id = n;
    notifyListeners();
  }

  String _amount = "", _reason = "", _reference = "", _recipientName = "";

  set recipient(Beneficiary? w) {
    _recipient = w;
    notifyListeners();
  }

  String get reason => _reason;
  set reason(String v) {
    _reason = v;
    notifyListeners();
  }

  String get recipientName => _recipientName;
  set recipientName(String v) {
    _recipientName = v;
    notifyListeners();
  }

  String get reference => _reference;
  set reference(String v) {
    _reference = v;
    notifyListeners();
  }

  String get amount => _amount;

  set amount(String v) {
    _amount = v;
    notifyListeners();
  }

  set walletId(String v) {
    _walletId = v;
    notifyListeners();
  }

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

  set contactIndex(int? v) {
    _index = v;
    notifyListeners();
  }

  set method(PaymentMethod? m) {
    _method = m;
    notifyListeners();
  }

  bool _saveBeneficiary = false;
  bool get saveBeneficiary => _saveBeneficiary;
  set saveBeneficiary(bool v) {
    _saveBeneficiary = v;
    notifyListeners();
  }

  resetPayViaPhone() {
    phone = "";
    contactIndex = null;
  }

  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  set contacts(List<Contact> c) {
    _contacts = c;
    notifyListeners();
  }

  @override
  void disposeValues() {
    _walletId = "";
  }
}

enum PaymentMethod {
  blue,
  qr,
  phone,
  offline,
  bank,
  wallet,
}
