import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WalletViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  goToInitiatePayment(BuildContext context) {
    // context.go("${RoutePaths.initiateTransactionPath}/pay");
  }

  goToInitiateWithdrawal(BuildContext context) {
    // context.go("${RoutePaths.initiateTransactionPath}/withdraw");
  }

  goToBills(BuildContext context) {
    // context.go(RoutePaths.billsPath);
  }
}
