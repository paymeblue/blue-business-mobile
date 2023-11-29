import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfirmPaymentViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late PaymentStateManager paymentStateManager;
  late AuthStateManager authStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
    paymentStateManager =
        Provider.of<PaymentStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
  }

  goToPasscodeScreen() {
    appStateManager.passcode = true;
    authStateManager.newPasscode = false;
  }
}
