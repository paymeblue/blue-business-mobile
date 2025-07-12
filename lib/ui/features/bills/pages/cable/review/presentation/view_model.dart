import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/bills/cable/verify/data/verify_cable_data.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class ReviewCableViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.router.back();
  }

  goToNext(BuildContext context, VerifyCableData data) {
    context.push(RoutePaths.confirmTv, extra: data);
  }
}
