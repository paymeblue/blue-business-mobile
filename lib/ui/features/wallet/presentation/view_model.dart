import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';

import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class WalletViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  goToInitiatePayment(BuildContext context) {
    context.push(RoutePaths.initiateTransaction);
  }

  goToBills(BuildContext context) {
    context.push(RoutePaths.bills);
  }

  goToWithdrawalMethod(BuildContext context) {
    context.push(RoutePaths.withdrawalMethod);
  }
}
