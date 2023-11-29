import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:blue_business/core/models/beneficiary.dart';

class BeneficiariesStateManager extends DisposableProvider {
  int _typeIndex = 0;
  int get typeIndex => _typeIndex;
  set typeIndex(int n) {
    _typeIndex = n;
    notifyListeners();
  }

  List<Beneficiary> _allBeneficiaries = [],
      _blueBeneficiaries = [],
      _billBeneficiaries = [],
      _phoneBeneficiaries = [];

  List<Beneficiary> get allBeneficiaries => _allBeneficiaries;
  List<Beneficiary> get blueBeneficiaries => _blueBeneficiaries;
  List<Beneficiary> get billBeneficiaries => _billBeneficiaries;
  List<Beneficiary> get phoneBeneficiaries => _phoneBeneficiaries;

  set allBeneficiaries(List<Beneficiary> l) {
    _allBeneficiaries = l;
    notifyListeners();
  }

  set blueBeneficiaries(List<Beneficiary> l) {
    _blueBeneficiaries = l;
    notifyListeners();
  }

  set billBeneficiaries(List<Beneficiary> l) {
    _billBeneficiaries = l;
    notifyListeners();
  }

  set phoneBeneficiaries(List<Beneficiary> l) {
    _phoneBeneficiaries = l;
    notifyListeners();
  }

  @override
  void disposeValues() {
    _typeIndex = 0;
  }
}
