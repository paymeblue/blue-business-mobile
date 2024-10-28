import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
import 'package:blue_business/core/models/bills/data/verify/request/verify_data_request.dart';
import 'package:blue_business/core/models/bills/data/verify/response/verify_data_response.dart';
import 'package:blue_business/core/models/bills/get_packages/packages/packages.dart';
import 'package:blue_business/core/models/bills/get_packages/response/get_packages_response.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/models/bills/get_providers/response/get_providers_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/navigation/route_names.dart';

class InitiateDataViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getProviders();
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.billsPath);
    }
  }

  onChanged(String? v) {
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  FetchState _providersState = FetchState.complete;
  FetchState get providersState => _providersState;
  set providersState(FetchState s) {
    _providersState = s;
    notifyListeners();
  }

  FetchState _packagesState = FetchState.complete;
  FetchState get packagesState => _packagesState;
  set packagesState(FetchState s) {
    _packagesState = s;
    notifyListeners();
  }

  onBillProviderChanged(BillProvider? item) {
    selectedProvider = item;

    selectedPackage = null;
    if (item == null) {
      AppNotification.error(message: "Please select a provider");
    } else {
      getPackages();
    }
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
            .getProviders("data")
            .onError((error, stackTrace) => GetProvidersResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "get_data_providers",
                    "response_model": "GetProvidersResponse"
                  },
                )));

    if (resp.status == "success") {
      providers = resp.data ?? [];
      providersState = FetchState.complete;
    } else {
      AppNotification.error(message: resp.message);
      providersState = FetchState.error;
    }
  }

  onBillPackageChanged(BillPackage? item) {
    selectedPackage = item;
  }

  List<BillPackage> _packages = [];
  List<BillPackage> get packages => _packages;
  set packages(List<BillPackage> p) {
    _packages = p;
    notifyListeners();
  }

  BillPackage? _package;
  BillPackage? get selectedPackage => _package;
  set selectedPackage(BillPackage? p) {
    _package = p;
    notifyListeners();
  }

  getPackages() async {
    packagesState = FetchState.loading;

    GetPackagesResponse resp =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getPackages(
                providerNAme: selectedProvider!.name.toLowerCase(),
                service: "data")
            .onError((error, stackTrace) => GetPackagesResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "get_data_packages",
                    "response_model": "GetPackagesResponse"
                  },
                )));

    if (resp.status == "success") {
      packages = resp.data ?? [];
      packagesState = FetchState.complete;
    } else {
      AppNotification.error(message: resp.message);
      packagesState = FetchState.error;
    }
  }

  bool isActive() {
    return phoneController.text.length >= 10 && selectedPackage != null;
  }

  VerifyDataData? _data;
  VerifyDataData? get data => _data;
  set data(VerifyDataData? d) {
    _data = d;
    notifyListeners();
  }

  verfyPackage(BuildContext context) async {
    AppLoader.start();
    VerifyDataRequest request = VerifyDataRequest(
      receiver: phoneController.text,
      packageId: selectedPackage!.id.toString(),
    );

    VerifyDataResponse response =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .verifyDataInfo(request)
            .onError((error, stackTrace) => VerifyDataResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "verify_data_info",
                    "request": request.toString(),
                    "response_model": "VerifyDataResponse"
                  },
                )));

    if (response.status == "success") {
      data = response.data;
      if (context.mounted) goToNext(context);
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }

  goToNext(BuildContext context) {
    context.push(RoutePaths.reviewDataPath, extra: data);
  }
}
