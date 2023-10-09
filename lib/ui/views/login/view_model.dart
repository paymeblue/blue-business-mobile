import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
  }

  bool _newLogin = false;
  bool get newLogin => _newLogin;

  set newLogin(bool v) {
    _newLogin = v;
    notifyListeners();
  }
}
