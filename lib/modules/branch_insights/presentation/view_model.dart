import 'dart:developer';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/staff_service/staff_service.dart';
import 'package:blue_business/core/models/analytics/branch_data/branch_analytics_data.dart';
import 'package:blue_business/core/models/analytics/branch_response/branch_analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/monthly/monthly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/weekly/weekly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/yearly/yearly_line_chart_data.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/models/staff_roles/get/item/staff_role.dart';
import 'package:blue_business/core/models/staff_roles/get/response/staff_role_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BranchInsightsViewModel extends BaseViewModel {
  late Size size;
  late int branchId;

  init(BuildContext context, int id) {
    size = context.mediaQuery.size;

    branchId = id;
    selectedType = types[0];
    getAnalyticsData();
    getRoles();

    staffPagingController.addPageRequestListener((pageKey) {
      getBranchStaff(pageKey);
    });
  }

  getAnalyticsData() {
    getLineChartData();
    getBranchSalesAnalytics();
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
    getAnalyticsData();
  }

  FetchState _lineState = FetchState.complete;
  FetchState get lineState => _lineState;
  set lineState(FetchState value) {
    _lineState = value;
    notifyListeners();
  }

  FetchState _salesState = FetchState.complete;
  FetchState get salesState => _salesState;
  set salesState(FetchState value) {
    _salesState = value;
    notifyListeners();
  }

  BranchAnalyticsData? _d;
  BranchAnalyticsData? get salesData => _d;
  set salesData(BranchAnalyticsData? d) {
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
    lineState = FetchState.loading;
    SalesAnalyticsResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getBranchInsights(
            branchId: branchId, timeInterval: selectedType.toLowerCase())
        .onError((error, stackTrace) => SalesAnalyticsResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_branch_insights",
                "response_model": "SalesAnalyticsResponse"
              },
            )));

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
      log(response.data.toString());

      lineState = FetchState.complete;
    } else {
      AppNotification.error(message: response.message);

      lineState = FetchState.error;
    }
  }

  getBranchSalesAnalytics() async {
    salesState = FetchState.loading;
    BranchAnalyticsResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getAnalytics(id: branchId, type: selectedType.toLowerCase())
        .onError((error, stackTrace) => BranchAnalyticsResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_analytics",
                "response_model": "AnalyticsResponse"
              },
            )));

    if (response.status == "success") {
      calculateBranchIncrease(response.data!);
    } else {
      AppNotification.error(message: response.message);
    }

    salesState = FetchState.complete;
  }

  calculateBranchIncrease(BranchAnalyticsData data) {
    double current = double.parse(data.transaction.current);
    double previous = double.parse(data.transaction.previous);
    final change = current - previous;

    if (change == 0) {
      totalIncrease = 0;
    } else {
      if (previous == 0) {
        totalIncrease = change / 100;
      } else {
        totalIncrease = change / previous;
      }
    }
  }

  PagingController<int, Staff> staffPagingController =
      PagingController<int, Staff>(firstPageKey: 1);

  getBranchStaff(int page) async {
    try {
      GetStaffResponse response = await BranchService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .getBranchStaff(
            page: page,
            limit: 50,
            id: branchId,
            role: role?.name,
          )
          .onError(
            (error, stackTrace) => GetStaffResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_branch_staff",
                "response_model": "GetStaffResponse"
              },
            )),
          );

      if (response.status == "success") {
        if (response.data!.loadMore) {
          staffPagingController.appendPage(response.data!.data, page + 1);
        } else {
          staffPagingController.appendLastPage(response.data!.data);
        }

        notifyListeners();
      } else {
        staffPagingController.error = response.message;
      }
    } catch (e) {
      staffPagingController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  FetchState _roleState = FetchState.complete;
  FetchState get roleState => _roleState;
  set roleState(FetchState value) {
    _roleState = value;
    notifyListeners();
  }

  List<StaffRole> _roles = [];
  List<StaffRole> get roles => _roles;
  set roles(List<StaffRole> value) {
    _roles = value;
    notifyListeners();
  }

  StaffRole? _role;
  StaffRole? get role => _role;
  set role(StaffRole? value) {
    _role = value;
    notifyListeners();
  }

  getRoles() async {
    roleState = FetchState.loading;

    GetStaffRoleResponse response =
        await StaffService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getStaffRoles()
            .onError((error, stacjtrace) => GetStaffRoleResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "get_staff_rles",
                    "response_model": "GetStaffRoleResponse"
                  },
                )));

    if (response.status == "success") {
      roles = response.data!;
      roleState = FetchState.complete;
    } else {
      roleState = FetchState.error;
      AppNotification.error(message: response.message);
    }
  }
}
