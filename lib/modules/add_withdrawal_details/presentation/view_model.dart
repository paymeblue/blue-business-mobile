import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/banks/item/bank.dart';
import 'package:blue_business/core/models/banks/response/bank_response.dart';
import 'package:blue_business/core/models/withdrawal_account/set/request/set_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/set/response/set_payout_response.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/request/verify_payout_request.dart';
import 'package:blue_business/core/models/withdrawal_account/verify/response/verify_payout_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddWithdrawalDetailsViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getBanks();
    if (locator<AppStateValues>().withdrawalAccount?.bankName != null) {
      setBankDetails();
    }
  }

  setBankDetails() {
    selectedBank = BankItem(
        id: locator<AppStateValues>().withdrawalAccount!.bankId,
        name: locator<AppStateValues>().withdrawalAccount!.bankName!);

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
    notifyListeners();
  }

  onBankChanged(BankItem? item) {
    selectedBank = item;
  }

  bool canVerify() {
    return selectedBank != null && accountNumberController.text.length >= 10;
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

  getBanks() async {
    loadingBanks = true;
    BankResponse resp = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getBanks()
        .onError((error, stackTrace) {
      return BankResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {"request_name": "get_banks", "response_model": "BankResponse"},
      ));
    });

    if (resp.status == "success") {
      banks = resp.data!;
    } else {
      AppNotification.error(message: resp.message);
    }
    loadingBanks = false;
  }

  String _ref = "";
  String get reference => _ref;
  set reference(String r) {
    _ref = r;
    notifyListeners();
  }

  verifyAccount() async {
    verifyingAccount = true;
    VerifyPayoutRequest request = VerifyPayoutRequest(
        bankId: selectedBank!.id.toString(),
        accountNumber: accountNumberController.text);
    VerifyPayoutResponse resp = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .verifyAccount(request)
        .onError((error, stackTrace) {
      return VerifyPayoutResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "verify_account",
          "request": request.toString(),
          "response_model": "VerifyPayoutResponse"
        },
      ));
    });

    if (resp.status == "success") {
      accountNameController.text = resp.data!.accountName;
      reference = resp.data!.reference;
    } else {
      accountNameController.text = "";
      AppNotification.error(message: resp.message);
    }

    verifyingAccount = false;
  }

  setAccount() async {
    AppLoader.start();
    SetPayoutRequest request = SetPayoutRequest(reference: reference);
    SetPayoutResponse resp = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .addPayout(request)
        .onError((error, stackTrace) {
      return SetPayoutResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "add_payout",
          "request": request.toString(),
          "response_model": "SetPayoutResponse"
        },
      ));
    });

    if (resp.status == "success") {
      reference = "";
      locator<AppStateValues>().withdrawalAccount = resp.data;
      AppNotification.success(message: resp.message);
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }
}
