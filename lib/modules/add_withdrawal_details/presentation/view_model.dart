import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/banks/item/bank.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddWithdrawalDetailsViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;

    if (locator<AppStateValues>().withdrawalAccount != null) {
      setBankDetails();
    }
  }

  setBankDetails() {
    selectedBank = BankItem(
        id: locator<AppStateValues>().withdrawalAccount!.bankId,
        name: locator<AppStateValues>().withdrawalAccount!.bankName);

    accountNumberController.text =
        locator<AppStateValues>().withdrawalAccount!.accountNumber;

    accountNameController.text =
        locator<AppStateValues>().withdrawalAccount!.accountName;
  }

  bool _lodingBanks = false;
  bool get loadingBanks => _lodingBanks;
  set loadingBanks(bool v) {
    _lodingBanks = v;
    notifyListeners();
  }

  bool _verifying = false;
  bool get verifyingAccount => _verifying;
  set verifyingAccount(bool v) {
    _verifying = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }

  List<BankItem> _banks = [];
  List<BankItem> get banks => _banks;
  set banks(List<BankItem> b) {
    _banks = b;
    notifyListeners();
  }

  onAccountNumberChanged(String? v) {
    if (v != null && v.length >= 10 && selectedBank != null) {
      //VERIFY ACCOUNT
    }
  }

  onBankChanged(BankItem? item) {
    selectedBank = item;
    if (item != null && accountNumberController.text.length >= 10) {
      //VERIFY ACCOUNT
    }
  }

  BankItem? _bank;
  BankItem? get selectedBank => _bank;
  set selectedBank(BankItem? b) {
    _bank = b;
    notifyListeners();
  }

  bool isActive() {
    return reference.isNotEmpty && !verifyingAccount;
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController accountNameController = TextEditingController();

  String _ref = "";
  String get reference => _ref;
  set reference(String r) {
    _ref = r;
    notifyListeners();
  }
}
