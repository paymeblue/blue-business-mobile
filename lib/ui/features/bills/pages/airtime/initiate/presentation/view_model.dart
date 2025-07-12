import 'package:blue_business/core/api/bills_service/bills_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/models/bills/get_providers/response/get_providers_response.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

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

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  onCountryChanged(CountryCode? value) {
    if (value != null) {
      selectedCountry = value;
    }
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

    GetProvidersResponse resp = await BillsService()
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

  goToNext(BuildContext context) {
    double? amount = double.tryParse(amountController.text
        .replaceAll(nairaSymbol(), "")
        .replaceAll(",", ""));

    ReviewAirtimeData data = ReviewAirtimeData(
        phone: phoneController.text.validPhone(selectedCountry),
        amount: amount!,
        provider: selectedProvider!);

    context.push(RoutePaths.reviewAirtime, extra: data);
  }
}
