import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/insights_service/insights_service.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/monthly/monthly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/weekly/weekly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/yearly/yearly_line_chart_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InsightsViewModel extends BaseViewModel {
  late Size size;
  InsightsService insightsService = InsightsService();

  init(BuildContext context) {
    size = context.mediaQuery.size;

    selectedType = types[0];
    getLineChartData();
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  List<String> types = ["Weekly", "Monthly", "Yearly"];

  late String _type;
  String get selectedType => _type;
  set selectedType(String v) {
    _type = v;
    notifyListeners();
  }

  onTypeChanged(String t) {
    selectedType = t;
  }

  bool _gettingData = false;
  bool get gettingData => _gettingData;
  set gettingData(bool value) {
    _gettingData = value;
    notifyListeners();
  }

  List<LineInputData> _data = [];
  List<LineInputData> get inputData => _data;
  set inputData(List<LineInputData> d) {
    _data = d;
    notifyListeners();
  }

  List<WeeklyLineChartData> _weeklyData = [];
  List<WeeklyLineChartData> get weeklyData => _weeklyData;
  set weeklyData(List<WeeklyLineChartData> d) {
    _weeklyData = d;
    notifyListeners();
  }

  List<MonthlyLineChartData> _monthlyData = [];
  List<MonthlyLineChartData> get monthlyData => _monthlyData;
  set monthlyData(List<MonthlyLineChartData> d) {
    _monthlyData = d;
    notifyListeners();
  }

  List<YearlyLineChartData> _yearlyData = [];
  List<YearlyLineChartData> get yearlyData => _yearlyData;
  set yearlyData(List<YearlyLineChartData> d) {
    _yearlyData = d;
    notifyListeners();
  }

  getLineChartData() async {
    gettingData = true;

    SalesAnalyticsResponse response = await insightsService
        .getSalesAnalytics(
          selectedType.toLowerCase(),
        )
        .onError((error, stackTrace) => SalesAnalyticsResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (selectedType == types[0]) {
        weeklyData =
            response.data!.map((e) => WeeklyLineChartData.fromJson(e)).toList();
      } else if (selectedType == types[1]) {
        monthlyData = response.data!
            .map((e) => MonthlyLineChartData.fromJson(e))
            .toList();
      } else {
        yearlyData =
            response.data!.map((e) => YearlyLineChartData.fromJson(e)).toList();
      }
      inputData = response.data!.map((e) => LineInputData.fromJson(e)).toList();
    } else {
      AppNotification.error(message: response.message);
    }

    gettingData = false;
  }

  List<double> pieValues = [.65, .35];
}
