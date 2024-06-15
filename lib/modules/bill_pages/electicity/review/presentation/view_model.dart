import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReviewElectricityViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  goToNext(BuildContext context, VerifyElectricityData data, double amount) {
    context.push(RoutePaths.electricityPinPath,
        extra: {"verify_data": data, "amount": amount});
  }
}
