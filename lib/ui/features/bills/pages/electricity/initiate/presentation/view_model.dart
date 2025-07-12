import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/api/bills_service/bills_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/database.dart';
import 'package:blue_business/core/models/beneficiary/electricity/electricity_beneficiary.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/models/bills/electricity/verify/request/verify_electricity_request.dart';
import 'package:blue_business/core/models/bills/electricity/verify/response/verify_electricity_response.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/models/bills/get_providers/response/get_providers_response.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/bills/pages/electricity/pin/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class InitiateElectricityViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getBeneficiariesFromLocal();
  }

  goBack(BuildContext context) {
    context.router.back();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController meterNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController tagController = TextEditingController();

  onBillProviderChanged(BillProvider? item) {
    selectedProvider = item;
  }

  String? _state;
  String? get state => _state;

  set state(String? v) {
    _state = v;
    notifyListeners();
  }

  String? _meterType;
  String? get selectedMeterType => _meterType;
  set selectedMeterType(String? b) {
    _meterType = b;
    notifyListeners();
  }

  onMeterTypeChanged(String? item) {
    selectedMeterType = item;
  }

  FetchState _providersState = FetchState.complete;
  FetchState get providersState => _providersState;
  set providersState(FetchState s) {
    _providersState = s;
    notifyListeners();
  }

  bool _verifying = false;
  bool get verifying => _verifying;
  set verifying(bool v) {
    _verifying = v;
    notifyListeners();
  }

  onStateChanged(String? v) {
    state = v;
    selectedProvider = null;
    if (v == null || v.isEmpty) {
      AppNotification.error(message: "Please select a state");
    } else {
      getProviders();
    }
  }

  onBeneficiarySelected(ElectricityBeneficiary b) async {
    selectedBeneficiary = b;
    state = b.state;
    await getProviders();
    selectedProvider = providers[providers.indexOf(
      BillProvider(id: b.providerId, name: b.provider),
    )];
    selectedMeterType = b.meterType;
    meterNumberController.text = b.receiver;

    await verifyMeter();
  }

  onChanged(String? v) {
    notifyListeners();
  }

  List<BillProvider> _providers = [];
  List<BillProvider> get providers => _providers;
  set providers(List<BillProvider> p) {
    _providers = p;
    notifyListeners();
  }

  BillProvider? _provider;
  BillProvider? get selectedProvider => _provider;
  set selectedProvider(BillProvider? p) {
    _provider = p;
    notifyListeners();
  }

  getProviders() async {
    providersState = FetchState.loading;
    if (state == "FCT(Abuja)") {
      state = "Abuja";
    }
    GetProvidersResponse resp = await BillsService()
        .getProviders("power", state!.toLowerCase())
        .onError((error, stackTrace) => GetProvidersResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      providers = resp.data ?? [];
      providersState = FetchState.complete;
    } else {
      AppNotification.error(message: resp.message);
      providersState = FetchState.error;
    }
  }

  VerifyElectricityData? _data;
  VerifyElectricityData? get data => _data;
  set data(VerifyElectricityData? d) {
    _data = d;
    notifyListeners();
  }

  bool shouldVerify() {
    return selectedMeterType != null &&
        selectedProvider != null &&
        meterNumberController.text.isNotEmpty;
  }

  verifyMeter() async {
    verifying = true;
    VerifyElectricityRequest request = VerifyElectricityRequest(
        receiver: meterNumberController.text,
        meterType: selectedMeterType!,
        providerId: selectedProvider!.id.toString());

    VerifyElectricityResponse response = await BillsService()
        .verifyMeter(request)
        .onError((error, stackTrace) => VerifyElectricityResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      data = response.data;
    } else {
      AppNotification.error(message: response.message);
    }
    verifying = false;
  }

  bool _saveBeneficiary = false;
  bool get saveBeneficiary => _saveBeneficiary;
  set saveBeneficiary(bool v) {
    _saveBeneficiary = v;
    notifyListeners();
  }

  bool isActive() {
    double? amount = double.tryParse(amountController.text
        .replaceAll(nairaSymbol(), "")
        .replaceAll(",", ""));

    double minimum = double.parse(
        data?.minimumAmount.replaceAll(nairaSymbol(), "").replaceAll(",", "") ??
            "0.0");

    return data != null && amount != null && amount >= minimum;
  }

  List<ElectricityBeneficiary> _beneficiaries = [];
  List<ElectricityBeneficiary> get beneficiaries => _beneficiaries;
  set beneficiaries(List<ElectricityBeneficiary> v) {
    _beneficiaries = v;
    notifyListeners();
  }

  FetchState _getLocalBeneficiaryState = FetchState.complete;
  FetchState get getLocalBeneficiaryState => _getLocalBeneficiaryState;
  set getLocalBeneficiaryState(FetchState v) {
    _getLocalBeneficiaryState = v;
    notifyListeners();
  }

  TextEditingController search = TextEditingController();

  final dbHelper = DatabaseHelper();
  getBeneficiariesFromLocal() async {
    getLocalBeneficiaryState = FetchState.loading;

    try {
      dbHelper.getBeneficiaries().then((b) async {
        beneficiaries = b;
        log(beneficiaries.toString());
      });
    } catch (e) {
      getLocalBeneficiaryState = FetchState.error;
    }
  }

  viewAll() async {
    await BlueBottomSheet.electricityBeneficiary(
      allBeneficiaries: beneficiaries,
      selectedBeneficiary: selectedBeneficiary,
      onBeneficiaryChanged: onBeneficiarySelected,
    );
  }

  saveBeneficiaryToLocal() async {
    ElectricityBeneficiary beneficiary = ElectricityBeneficiary(
      receiver: data!.receiver,
      meterType: data!.meterType,
      providerId: selectedProvider!.id,
      customerName: data!.customerName,
      customerInfo: data!.customerInfo,
      provider: data!.provider,
      state: state!,
      serviceCharge: data!.serviceCharge,
      minimumAmount: data!.minimumAmount,
      isOnline: false.toString(),
    );

    if (tagController.text.isNotEmpty) {
      beneficiary = beneficiary.copyWith(tag: tagController.text);
    }

    int id = await dbHelper.insertBeneficiary(beneficiary);

    selectedBeneficiary = beneficiary.copyWith(id: id);
  }

  ElectricityBeneficiary? _selectedBeneficiary;
  ElectricityBeneficiary? get selectedBeneficiary => _selectedBeneficiary;
  set selectedBeneficiary(ElectricityBeneficiary? v) {
    _selectedBeneficiary = v;
    log(v.toString());
    notifyListeners();
  }

  goToNext(BuildContext context) {
    if (saveBeneficiary) {
      saveBeneficiaryToLocal();
    }

    double amount = double.parse(amountController.text
        .replaceAll(nairaSymbol(), "")
        .replaceAll(",", ""));
    context.router.push(ReviewElectricityRoute(
        args: ConfirmPowerArgs(amount: amount, data: data!)));
  }
}
