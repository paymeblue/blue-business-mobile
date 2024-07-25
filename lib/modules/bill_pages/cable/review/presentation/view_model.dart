import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReviewCableViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.initiateCablePath);
  }

  goToNext(BuildContext context, VerifyCableData data) {
    context.push(RoutePaths.cablePinPath, extra: data);
  }
}
