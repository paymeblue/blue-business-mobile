import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/models/bills/get_providers/response/get_providers_response.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/navigation/route_names.dart';

class InitiateAirtimeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    setSelectedCountry();
    getProviders();
  }

  goBack(BuildContext context) {
    context.pop();
  }

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  CountryCode? _country;
  CountryCode? get selectedCountry => _country;
  set selectedCountry(CountryCode? v) {
    _country = v;
    notifyListeners();
  }

  onCountryChanged(CountryCode? value) {
    selectedCountry = value;
  }

  onChanged(String? v) {
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  FetchState _providersState = FetchState.complete;
  FetchState get providersState => _providersState;
  set providersState(FetchState s) {
    _providersState = s;
    notifyListeners();
  }

  onBillProviderChanged(BillProvider? item) {
    selectedProvider = item;
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

    GetProvidersResponse resp =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getProviders("airtime")
            .onError((error, stackTrace) => GetProvidersResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "get_airtime_providers",
                    "response_model": "GetProvidersResponse"
                  },
                )));

    if (resp.status == "success") {
      providersState = FetchState.complete;
      providers = resp.data ?? [];
    } else {
      providersState = FetchState.error;
      AppNotification.error(message: resp.message);
    }
  }

  bool isActive() {
    double? amount = double.tryParse(amountController.text
        .replaceAll(nairaSymbol(), "")
        .replaceAll(",", ""));

    return phoneController.text.isNotEmpty &&
        phoneController.text.length >= 10 &&
        selectedProvider != null &&
        amount != null &&
        amount >= 100;
  }

  String formatPhone() {
    String number = phoneController.text.replaceAll(" ", "");

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
    }
    if (number.startsWith(selectedCountry!.dialCode)) {
      number = number.replaceFirst(selectedCountry!.dialCode, "");
    }

    return selectedCountry!.dialCode + number;
  }

  goToNext(BuildContext context) {
    double? amount = double.tryParse(amountController.text
        .replaceAll(nairaSymbol(), "")
        .replaceAll(",", ""));

    ReviewAirtimeData data = ReviewAirtimeData(
        phone: formatPhone(), amount: amount!, provider: selectedProvider!);

    context.push(RoutePaths.reviewAirtimePath, extra: data);
  }
}

enum FetchState { error, complete, loading, empty }
