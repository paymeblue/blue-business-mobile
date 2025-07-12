import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/bills/pages/electricity/pin/presentation/view.dart';
import 'package:flutter/material.dart';

class ReviewElectricityViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.router.maybePop();
  }

  goToNext(BuildContext context, VerifyElectricityData data, double amount) {
    context.router.push(ConfirmElectricityPinRoute(
        args: ConfirmPowerArgs(amount: amount, data: data)));
  }
}
