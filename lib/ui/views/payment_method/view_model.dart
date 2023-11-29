import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/payment_method/pages/offline.dart';
import 'package:blue_business/ui/views/payment_method/pages/qr_scan_view.dart';
import 'package:blue_business/ui/views/payment_method/pages/via_blue.dart';
import 'package:blue_business/ui/views/payment_method/pages/via_phone.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentMethodViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late PaymentStateManager paymentStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    paymentStateManager =
        Provider.of<PaymentStateManager>(appContext!, listen: false);

    Timeout.resetTimer();
  }

  Widget child() {
    switch (paymentStateManager.method) {
      case PaymentMethod.blue:
        return const PayViaBlue();
      case PaymentMethod.qr:
        return const QrScanView();
      case PaymentMethod.phone:
        return const PayViaPhone();
      case PaymentMethod.offline:
        return const PayOfflineView();
      case PaymentMethod.bank:
      default:
        return Container();
    }
  }
}
