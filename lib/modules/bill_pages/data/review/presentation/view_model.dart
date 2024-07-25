import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/bills/data/verify/data/verify_data_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReviewDataViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.initiateDataPath);
    }
  }

  goToNext(BuildContext context, VerifyDataData data) {
    context.push(RoutePaths.dataPinPath, extra: data);
  }
}
