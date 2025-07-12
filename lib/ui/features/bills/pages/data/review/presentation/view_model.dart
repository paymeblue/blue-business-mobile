import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class ReviewDataViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.router.maybePop();
  }

  goToNext(BuildContext context, VerifyDataData data) {
    context.router.push(ConfirmDataPinRoute(data: data));
  }
}
