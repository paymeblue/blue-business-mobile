import 'dart:developer';

import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/utils/error_handler.dart';

import 'package:flutter/material.dart';

class BranchInsightsViewModel extends BaseViewModel {
  late String branchId;

  init(BuildContext context, String id) {
    branchId = id;
    selectedType = types[0];
  }

  List<String> types = ["Weekly", "Monthly", "Yearly"];

  late String _type;
  String get selectedType => _type;
  set selectedType(String v) {
    _type = v;
    notifyListeners();

    getInsights();
  }

  onTypeChanged(String t) {
    selectedType = t;
  }

  getInsights() async {
    final resp = await PumpPriceStationService()
        .getInsights(id: branchId, period: selectedType.toLowerCase())
        .onError((e, s) {
      return GetFillingStationsResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    log(resp.toString());
  }
}
