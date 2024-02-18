import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccessViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goToNext(BuildContext context) {
    context.go(RoutePaths.businessNamePath);
  }
}
