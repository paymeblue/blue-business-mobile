import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class ReviewAirtimeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  goToNext(BuildContext context, ReviewAirtimeData data) {
    context.push(RoutePaths.confirmAirtime, extra: data);
  }
}
