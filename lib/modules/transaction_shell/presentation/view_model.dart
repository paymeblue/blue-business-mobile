import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/transaction/verify/data/verified_receiver_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionShellViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context, int index) {
    GoRouterState state = GoRouterState.of(context);
    if (index == 0) {
      context.go(RoutePaths.homePath);
    } else if (index == 1) {
      context.go("${RoutePaths.initiateTransactionPath}/pay");
    } else if (index == 2) {
      context.go(
          "${RoutePaths.initiateTransactionPath}/${state.pathParameters["action"] != "withdraw" ? "pay" : "withdraw"}");
    } else {
      Object data;
      if (state.pathParameters["action"] == "withdraw") {
        data = state.extra as int;
      } else {
        data = state.extra as VerifiedReceiverData;
      }
      context.go(
          "${RoutePaths.confirmPaymentPath}/${state.pathParameters["action"]}/${state.pathParameters["transaction_id"]}",
          extra: data);
    }
  }
}
