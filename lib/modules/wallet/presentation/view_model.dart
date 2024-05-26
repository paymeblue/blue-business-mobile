import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WalletViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  goToInitiatePayment(BuildContext context) {
    context.go("${RoutePaths.initiateTransactionPath}/pay");
  }

  goToInitiateWithdrawal(BuildContext context) {
    context.go("${RoutePaths.initiateTransactionPath}/withdraw");
  }

  goToBills(BuildContext context) {
    context.go(RoutePaths.billsPath);
  }
}
