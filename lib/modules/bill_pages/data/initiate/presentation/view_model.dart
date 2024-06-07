import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
import 'package:blue_business/core/models/bills/get_packages/packages/packages.dart';
import 'package:blue_business/core/models/bills/get_providers/providers/providers.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/navigation/route_names.dart';

class InitiateDataViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  onChanged(String? v) {
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
    } else {}
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

  bool isActive() {
    return phoneController.text.length >= 10 && selectedPackage != null;
  }

  VerifyDataData? _data;
  VerifyDataData? get data => _data;
  set data(VerifyDataData? d) {
    _data = d;
    notifyListeners();
  }

  goToNext(BuildContext context) {
    context.push(RoutePaths.reviewDataPath, extra: data);
  }
}
