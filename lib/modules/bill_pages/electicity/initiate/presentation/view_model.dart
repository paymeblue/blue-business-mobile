import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/models/bills/electricity/verify/request/verify_electricity_request.dart';
import 'package:blue_business/core/models/bills/electricity/verify/response/verify_electricity_response.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/models/bills/get_providers/response/get_providers_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitiateElectricityViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController meterNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  onBillProviderChanged(BillProvider? item) {
    selectedProvider = item;

    shouldVerify();
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

    shouldVerify();
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

  Timer? timer;

  onMeterNumberChanged(String? v) {
    if (timer != null) {
      timer!.cancel();
    }

    timer = Timer(const Duration(seconds: 1), () {
      shouldVerify();
    });
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
    GetProvidersResponse resp =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
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

  shouldVerify() {
    if (selectedMeterType != null &&
        selectedProvider != null &&
        meterNumberController.text.length >= 5) {
      verfiyMeter();
    }
  }

  verfiyMeter() async {
    verifying = true;
    VerifyElectricityRequest request = VerifyElectricityRequest(
        receiver: meterNumberController.text,
        meterType: selectedMeterType!,
        providerId: selectedProvider!.id.toString());

    VerifyElectricityResponse response =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
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

  bool isActive() {
    double? amount = double.tryParse(amountController.text
        .replaceAll(nairaSymbol(), "")
        .replaceAll(",", ""));

    double minimum = double.parse(
        data?.minimumAmount.replaceAll(nairaSymbol(), "").replaceAll(",", "") ??
            "0.0");

    return data != null &&
        amount != null &&
        amount >= (minimum + data!.serviceCharge);
  }

  goToNext(BuildContext context) {
    double amount = double.parse(amountController.text
        .replaceAll(nairaSymbol(), "")
        .replaceAll(",", ""));
    context.push(RoutePaths.reviewElectricityPath,
        extra: {"verify_data": data!, "amount": amount});
  }
}
