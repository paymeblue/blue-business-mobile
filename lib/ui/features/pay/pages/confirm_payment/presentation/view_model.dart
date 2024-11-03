import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class ConfirmTransactionViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  bool _saveBeneficiary = false;
  bool get saveBeneficiary => _saveBeneficiary;
  set saveBeneficiary(bool v) {
    _saveBeneficiary = v;
    notifyListeners();
  }
}
