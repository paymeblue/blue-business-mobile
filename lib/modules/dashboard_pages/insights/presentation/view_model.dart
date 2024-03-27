import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/insights_service/insights_service.dart';
import 'package:blue_business/core/models/analytics/data/analytics_data.dart';
import 'package:blue_business/core/models/analytics/response/analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/monthly/monthly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/weekly/weekly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/yearly/yearly_line_chart_data.dart';
import 'package:blue_business/core/models/spending_analytics/data/spending_analytics_data.dart';
import 'package:blue_business/core/models/spending_analytics/response/spending_analytics_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InsightsViewModel extends BaseViewModel {
  late Size size;
  InsightsService insightsService = InsightsService();

  init(BuildContext context) async {
    size = context.mediaQuery.size;

    selectedType = types[0];
    await getAnalytics();
  }

  getAnalytics() async {
    getSalesAnalytics();
    await getLineChartData();
    await getSpending();
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
    getAnalytics();
  }

  bool _gettingSalesData = false;
  bool get gettingSalesData => _gettingSalesData;
  set gettingSalesData(bool value) {
    _gettingSalesData = value;
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

  SpendingAnalyticsData? _spendingData;
  SpendingAnalyticsData? get spendingData => _spendingData;
  set spendingData(SpendingAnalyticsData? d) {
    _spendingData = d;
    notifyListeners();
  }

  double _totalS = 0;
  double get totalSpending => _totalS;
  set totalSpending(double s) {
    _totalS = s;
    notifyListeners();
  }

  getSpending() async {
    SpendingAnalyticsResponse response = await insightsService
        .getSpending(selectedType.toLowerCase())
        .onError((error, stackTrace) => SpendingAnalyticsResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      totalSpending = double.parse(response.data!.mobileSum) +
          double.parse(response.data!.desktopSum);
      pieValues[1] = double.parse(response.data!.mobileSum) / totalSpending;
      pieValues[0] = double.parse(response.data!.desktopSum) / totalSpending;
    } else {
      AppNotification.error(message: response.message);
    }
  }

  getLineChartData() async {
    gettingSalesData = true;
    SalesAnalyticsResponse response = await insightsService
        .getSales(
          selectedType.toLowerCase(),
        )
        .onError((error, stackTrace) => SalesAnalyticsResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (selectedType == types[0]) {
        weeklyData =
            response.data!.map((e) => WeeklyLineChartData.fromJson(e)).toList();
        inputData = response.data!
            .map((e) => LineInputData.fromJson(e))
            .toList()
            .reversed
            .toList();
      } else if (selectedType == types[1]) {
        monthlyData = response.data!
            .map((e) => MonthlyLineChartData.fromJson(e))
            .toList();
        inputData = response.data!
            .map(
                (e) => LineInputData.fromJson(e).copyWith(label: e["label"][0]))
            .toList()
            .reversed
            .toList();
      } else {
        yearlyData =
            response.data!.map((e) => YearlyLineChartData.fromJson(e)).toList();
        inputData = response.data!
            .map((e) => LineInputData.fromJson(e)
                .copyWith(label: "'${e["label"].toString().substring(2)}"))
            .toList()
            .reversed
            .toList();
      }
    } else {
      AppNotification.error(message: response.message);
    }

    gettingSalesData = false;
  }

  List<double> _pie = [1, 0];
  List<double> get pieValues => _pie;
  set pieValue(List<double> v) {
    _pie = v;
    notifyListeners();
  }

  bool _saleL = false;
  bool get salesLoading => _saleL;
  set salesLoading(bool v) {
    _saleL = v;
    notifyListeners();
  }

  AnalyticsData? _d;
  AnalyticsData? get salesData => _d;
  set salesData(AnalyticsData? d) {
    _d = d;
    notifyListeners();
  }

  getSalesAnalytics() async {
    salesLoading = true;
    AnalyticsResponse response = await InsightsService()
        .getAnalytics(selectedType.toLowerCase())
        .onError((error, stackTrace) =>
            AnalyticsResponse(message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      salesData = response.data;
    } else {
      AppNotification.error(message: response.message);
    }
    salesLoading = false;
  }
}
