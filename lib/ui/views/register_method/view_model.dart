import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterMethodViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
  }

  RegisterMethod? _selectedMethod;
  RegisterMethod? get selectedMethod => _selectedMethod;
  set selectedMethod(RegisterMethod? m) {
    _selectedMethod = m;
    notifyListeners();
  }

  goBack() {
    appStateManager.register = false;
  }

  goToRegisterSelf() {
    appStateManager.registerSelf = true;
  }
}

enum RegisterMethod { blue, phone }
