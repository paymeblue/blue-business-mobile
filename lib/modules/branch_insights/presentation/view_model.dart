import 'dart:developer';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/analytics/data/analytics_data.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class BranchInsightsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, int id) {
    size = context.mediaQuery.size;

    getSalesAnalytics(id);
  }

  FetchState _salesState = FetchState.complete;
  FetchState get salesState => _salesState;
  set salesState(FetchState value) {
    _salesState = value;
    notifyListeners();
  }

  AnalyticsData? _d;
  AnalyticsData? get salesData => _d;
  set salesData(AnalyticsData? d) {
    _d = d;
    notifyListeners();
  }

  double _mIncrease = 0;
  double get mobileIncrease => _mIncrease;
  set mobileIncrease(double v) {
    _mIncrease = v;
    notifyListeners();
  }

  double _dIncrease = 0;
  double get desktopIncrease => _dIncrease;
  set desktopIncrease(double v) {
    _dIncrease = v;
    notifyListeners();
  }

  double _tIncrease = 0;
  double get totalIncrease => _tIncrease;
  set totalIncrease(double v) {
    _tIncrease = v;
    notifyListeners();
  }

  getSalesAnalytics(int id) async {
    salesState = FetchState.loading;
    SalesAnalyticsResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getBranchInsights(branchId: id)
        .onError((error, stackTrace) => SalesAnalyticsResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      // salesData = response.data;
      // calculateIncrease();
      log(response.data.toString());

      salesState = FetchState.complete;
    } else {
      AppNotification.error(message: response.message);

      salesState = FetchState.error;
    }
  }

  calculateIncrease() {
    double currentMobile = double.parse(salesData?.mobile.current ?? "0.0");
    double previousMobile = double.parse(salesData?.mobile.previous ?? "0.0");
    double currentDesktop = double.parse(salesData?.desktop.current ?? "0.0");
    double previousDesktop = double.parse(salesData?.desktop.previous ?? "0.0");

    double currentTotal = currentMobile + currentDesktop;
    double previousTotal = previousMobile + previousDesktop;

    double mChange = currentMobile - previousMobile;
    double dChange = currentDesktop - previousDesktop;
    double tChange = currentTotal - previousTotal;

    if (tChange == 0) {
      totalIncrease = 0;
    } else {
      if (previousTotal == 0) {
        totalIncrease = tChange / 100;
      } else {
        totalIncrease = tChange / previousTotal;
      }
    }

    if (mChange == 0) {
      mobileIncrease = 0;
    } else {
      if (previousMobile == 0) {
        mobileIncrease = mChange / 100;
      } else {
        mobileIncrease = mChange / previousMobile;
      }
    }

    if (dChange == 0) {
      desktopIncrease = 0;
    } else {
      if (previousDesktop == 0) {
        desktopIncrease = dChange / 100;
      } else {
        desktopIncrease = dChange / previousDesktop;
      }
    }
  }
}
