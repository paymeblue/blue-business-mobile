import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/kyc_state_manager.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuccessViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late PaymentStateManager paymentStateManager;
  late KycStateManager kycStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    paymentStateManager =
        Provider.of<PaymentStateManager>(appContext!, listen: false);
    kycStateManager = Provider.of<KycStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
  }

  goToRegisterBusiness() {
    appStateManager.registerBusiness = true;
    appStateManager.success = false;
    appStateManager.registerSelf = false;
  }
}
