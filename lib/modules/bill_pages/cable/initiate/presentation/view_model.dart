import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/bills_service/bills_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:blue_business/core/models/bills/cable/verify/request/verify_cable_request.dart';
import 'package:blue_business/core/models/bills/cable/verify/response/verify_cable_response.dart';
import 'package:blue_business/core/models/bills/get_packages/packages/packages.dart';
import 'package:blue_business/core/models/bills/get_packages/response/get_packages_response.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/models/bills/get_providers/response/get_providers_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/navigation/route_names.dart';

class InitiateCableViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getProviders();
  }

  goBack(BuildContext context) {
    context.pop();
  }

  onChanged(String? v) {
    notifyListeners();

    shouldVerify();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();

  bool _gettingProviders = false;
  bool get gettingProviders => _gettingProviders;
  set gettingProviders(bool v) {
    _gettingProviders = v;
    notifyListeners();
  }

  bool _gettingPackages = false;
  bool get gettingPackages => _gettingPackages;
  set gettingPackages(bool v) {
    _gettingPackages = v;
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
    gettingProviders = true;

    GetProvidersResponse resp =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getProviders("tv")
            .onError((error, stackTrace) => GetProvidersResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      providers = resp.data ?? [];
    } else {
      AppNotification.error(message: resp.message);
    }

    gettingProviders = false;
  }

  onBillPackageChanged(BillPackage? item) {
    selectedPackage = item;

    shouldVerify();
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
    gettingPackages = true;

    GetPackagesResponse resp =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getPackages(
                providerNAme: selectedProvider!.name.toLowerCase(),
                service: "tv")
            .onError((error, stackTrace) => GetPackagesResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      packages = resp.data ?? [];
    } else {
      AppNotification.error(message: resp.message);
    }

    gettingPackages = false;
  }

  shouldVerify() {
    if (selectedPackage != null && cardNumberController.text.length >= 10) {
      verfyPackage();
    }
  }

  bool _verifying = false;
  bool get verifying => _verifying;
  set verifying(bool v) {
    _verifying = v;
    notifyListeners();
  }

  VerifyCableData? _data;
  VerifyCableData? get data => _data;
  set data(VerifyCableData? d) {
    _data = d;
    notifyListeners();
  }

  verfyPackage() async {
    verifying = true;
    VerifyCableRequest request = VerifyCableRequest(
      receiver: cardNumberController.text,
      packageId: selectedPackage!.id.toString(),
    );

    VerifyCableResponse response =
        await BillsService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .verifyCableInfo(request)
            .onError((error, stackTrace) => VerifyCableResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      data = response.data;
    } else {
      AppNotification.error(message: response.message);
    }
    verifying = false;
  }

  goToNext(BuildContext context) {
    context.push(RoutePaths.reviewCablePath, extra: data);
  }
}
