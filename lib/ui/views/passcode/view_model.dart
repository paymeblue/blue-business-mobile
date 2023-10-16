import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class PasscodeViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;
  late Size size;

  init() async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
    size = MediaQuery.sizeOf(appContext!);
  }

  goBack() {
    appStateManager.passcode = false;
    authStateManager.passcode = "";
    appStateManager.login = false;
  }
}
