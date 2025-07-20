import 'dart:developer';

import 'package:blue_business/core/api/pump_price_service/pump_price_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:flutter/material.dart';

class PumpPriceBranchViewModel extends BaseViewModel {
  init(BuildContext context) {
    getBranches();
  }

  getBranches() async {
    final resp = await PumpPriceService().getBranches().onError((e, s) {
      return GetFillingStationsResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    log(resp.toString());
  }
}
