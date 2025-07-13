import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class PumpPriceAttendantViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }
}
