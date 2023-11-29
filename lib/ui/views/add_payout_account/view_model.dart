import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/add_payout_account/models/bank.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddWithdrawalAccountViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late Size size;

  init(BuildContext context) {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    size = MediaQuery.of(appContext!).size;

    // accountNameController.text =
    //     "${appStateManager.currentUser!.firstName} ${appStateManager.currentUser!.lastName}";

    getBanks(context);
  }

  List<Bank> _banks = [];
  List<Bank> get banks => _banks;

  set banks(List<Bank> c) {
    _banks = c;
    notifyListeners();
  }

  List<Bank> _allBanks = [];
  List<Bank> get allBanks => _allBanks;

  set allBanks(List<Bank> c) {
    _allBanks = c;
    notifyListeners();
  }

  TextEditingController bankSearchController = TextEditingController();
  TextEditingController accountNameController = TextEditingController();

  String? onBankChanged(String? v) {
    searchBank(v ?? "");
    isExpanded = true;
    return v;
  }

  String? onBankSaved(String? v) {
    searchBank(v ?? "");
    isExpanded = true;
    return v;
  }

  String? onAccountNumberChanged(String? v) {
    number = v ?? "";
    if (selectedBank != null && number.length >= 10) {
      verifyAccount();
    }
    return v;
  }

  String? onAccountNumberSaved(String? v) {
    number = v ?? "";
    return v;
  }

  String _name = "", _number = "";
  String get name => _name;
  set name(String v) {
    _name = v;
    notifyListeners();
  }

  String get number => _number;
  set number(String v) {
    _number = v;
    notifyListeners();
  }

  Bank? _selectedBank;
  Bank? get selectedBank => _selectedBank;
  set selectedBank(Bank? b) {
    _selectedBank = b;
    if (number.length >= 10) {
      verifyAccount();
    }
    notifyListeners();
  }

  FocusNode bankDropdownNode = FocusNode();

  bool _expanded = false;
  bool get isExpanded => _expanded;
  set isExpanded(bool v) {
    _expanded = v;
    notifyListeners();
  }

  bool _verifying = false;
  bool get verifying => _verifying;
  set verifying(bool v) {
    _verifying = v;
    notifyListeners();
  }

  String reference = "";

  verifyAccount() async {
    // verifying = true;

    // var resp = await profileService.verifyAccountNumber(
    //     bankId: selectedBank!.id, accountNumber: number);

    // verifying = false;

    // if (resp['status']) {
    //   accountNameController.text = resp['data']['account']['account_name'];
    //   reference = resp['data']['account']['reference'];
    // } else {
    //   AppNotification.error(message: resp["message"], context: appContext!);
    // }
  }

  String _verifyMessage = "Verifying...";
  String get verifyMessage => _verifyMessage;
  set verifyMessage(String v) {
    _verifyMessage = v;
    notifyListeners();
  }

  searchBank(String v) {
    List<Bank> c = [];
    if (v.isEmpty) {
      c = allBanks;
    } else {
      for (Bank bank in allBanks) {
        if (bank.name.toLowerCase().contains(v.toLowerCase())) {
          c.add(bank);
        }
      }
    }
    banks = c;
  }

  getBanks(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await profileService.getBanks();

    // AppLoader.hide();

    // if (!resp['status']) {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // } else {
    //   List banks = resp['data']['banks'];
    //   AppNotification.success(
    //       message: "Withdrawal bank retrieved successfully.",
    //       context: appContext!);

    //   allBanks = banks
    //       .map<Bank>(
    //           (e) => Bank(id: e['id'], name: e['name'], logo: e["logo_url"]))
    //       .toList();
    // }
  }

  addPayoutAccount(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await profileService.addPayoutAccount(reference: reference);

    // AppLoader.hide();

    // if (!resp['status']) {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // } else {
    //   var data = resp['data'];
    //   AppNotification.success(
    //       message: "Withdrawal account updated successfully.",
    //       context: appContext!);
    //   appStateManager.currentUser = User(
    //       id: appStateManager.currentUser!.id,
    //       phone: appStateManager.currentUser!.phone,
    //       firstName: appStateManager.currentUser!.firstName,
    //       lastName: appStateManager.currentUser!.lastName,
    //       middleName: appStateManager.currentUser!.middleName,
    //       isVerified: appStateManager.currentUser!.isVerified,
    //       displayPicture: appStateManager.currentUser!.displayPicture,
    //       walletData: appStateManager.currentUser!.walletData,
    //       createdAt: appStateManager.currentUser!.createdAt,
    //       withdrawalAccountData: WithdrawalAccount(
    //           id: data['withdrawal_account']['id'],
    //           accountName: data['withdrawal_account']['account_name'],
    //           accountNumber: data['withdrawal_account']['account_number'],
    //           logoUrl: selectedBank!.logo,
    //           bankName: data['withdrawal_account']['name']));
    //   formKey.currentState!.reset();
    //   appStateManager.isKycComplete = true;
    //   appStateManager.addPayoutAccount = false;
    // }
  }
}
