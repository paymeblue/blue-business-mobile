import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';

import 'package:flutter/material.dart';

class BusinessFeesViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.settings);
    }
  }
}
