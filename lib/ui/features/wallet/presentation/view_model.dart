import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/enums.dart';
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
    context.push(RoutePaths.initiateTransaction);
  }

  goToInitiateWithdrawal(BuildContext context) {
    context.push(RoutePaths.initiateTransaction, extra: PaymentMode.withdrawal);
  }

  goToBills(BuildContext context) {
    context.push(RoutePaths.bills);
  }
}
