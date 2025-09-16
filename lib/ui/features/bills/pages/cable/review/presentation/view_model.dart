import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class ReviewCableViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  void goToNext(BuildContext context, VerifyCableData data) {
    locator<AppRouter>().push(ConfirmCablePinRoute(data: data));
  }
}
