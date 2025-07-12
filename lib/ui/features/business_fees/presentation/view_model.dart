import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';

import 'package:flutter/material.dart';

class BusinessFeesViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.router.maybePop().then((v) {
      if (!v && context.mounted) {
        context.router.replaceAll([SettingsRoute()]);
      }
    });
  }
}
