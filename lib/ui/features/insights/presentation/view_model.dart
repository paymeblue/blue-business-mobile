import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/api/branch_service/branch_service.dart';
import 'package:blue_business/core/api/insights_service/insights_service.dart';
import 'package:blue_business/core/api/staff_service/staff_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/analytics/branch_data/branch_analytics_data.dart';
import 'package:blue_business/core/models/analytics/branch_response/branch_analytics_response.dart';
import 'package:blue_business/core/models/analytics/data/analytics_data.dart';
import 'package:blue_business/core/models/analytics/response/analytics_response.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/monthly/monthly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/sales_analytics/weekly/weekly_line_chart_data.dart';
import 'package:blue_business/core/models/sales_analytics/yearly/yearly_line_chart_data.dart';
import 'package:blue_business/core/models/spending_analytics/data/spending_analytics_data.dart';
import 'package:blue_business/core/models/spending_analytics/response/spending_analytics_response.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/models/staff_roles/get/item/staff_role.dart';
import 'package:blue_business/core/models/staff_roles/get/response/staff_role_response.dart';
import 'package:blue_business/core/models/tab_item/tab_item.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class InsightsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = context.mediaQuery.size;

    selectedType = types[0];
    branchPagingController.addPageRequestListener((page) {
      getBranches(page);
    });

    staffPagingController.addPageRequestListener((pageKey) {
      getBranchStaff(pageKey);
    });

    getRoles();

    await getAnalytics();
  }

  getAnalytics() async {
    if (currTab == 0) {
      log(currTab.toString());
      getSalesAnalytics();
      await getLineChartData();
      await getSpending();
    } else if (branch != null) {
      getBranchLineChartData();
      getBranchSalesAnalytics();
    }
  }

  goBack(BuildContext context) {
    context.router.maybePop();
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

  int _tab = 0;
  int get currTab => _tab;
  set currTab(int i) {
    _tab = i;
    notifyListeners();
    getAnalytics();
  }

  List<TabItem> tabs() => [
        TabItem(
          name: "General Insights",
        ),
        TabItem(
          name: "Branch Insights",
        ),
      ];

  List<LineInputData> _data = [];
  List<LineInputData> get inputData => _data;
  set inputData(List<LineInputData> d) {
    _data = d;
    notifyListeners();
  }

  List<LineInputData> _branchdata = [];
  List<LineInputData> get branchInputData => _branchdata;
  set branchInputData(List<LineInputData> d) {
    _branchdata = d;
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
    SpendingAnalyticsResponse response = await InsightsService()
        .getSpending(selectedType.toLowerCase())
        .onError((error, stackTrace) => SpendingAnalyticsResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_spending",
                "response_model": "SpendingAnalyticsResponse"
              },
            )));

    if (response.status == "success") {
      totalSpending = double.parse(response.data!.mobileSum) +
          double.parse(response.data!.desktopSum);
      if (totalSpending == 0) {
        pieValues[1] = .5;
        pieValues[0] = .5;
      } else {
        pieValues[1] = double.parse(response.data!.mobileSum) / totalSpending;
        pieValues[0] = double.parse(response.data!.desktopSum) / totalSpending;
      }
    } else {
      AppNotification.error(message: response.message);
    }
  }

  getLineChartData() async {
    gettingSalesData = true;
    SalesAnalyticsResponse response = await InsightsService()
        .getSales(
          selectedType.toLowerCase(),
        )
        .onError((error, stackTrace) => SalesAnalyticsResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_sales",
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
    } else {
      AppNotification.error(message: response.message);
    }

    gettingSalesData = false;
  }

  FetchState _salesState = FetchState.complete;
  FetchState get salesState => _salesState;
  set salesState(FetchState value) {
    _salesState = value;
    notifyListeners();
  }

  getBranchLineChartData() async {
    salesState = FetchState.loading;
    SalesAnalyticsResponse response = await BranchService()
        .getBranchInsights(
            branchId: branch!.id, timeInterval: selectedType.toLowerCase())
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
        branchInputData = response.data!
            .map((e) => LineInputData.fromJson(e))
            .toList()
            .reversed
            .toList();
      } else if (selectedType == types[1]) {
        monthlyData = response.data!
            .map((e) => MonthlyLineChartData.fromJson(e))
            .toList();
        branchInputData = response.data!
            .map(
                (e) => LineInputData.fromJson(e).copyWith(label: e["label"][0]))
            .toList()
            .reversed
            .toList();
      } else {
        yearlyData =
            response.data!.map((e) => YearlyLineChartData.fromJson(e)).toList();
        branchInputData = response.data!
            .map((e) => LineInputData.fromJson(e)
                .copyWith(label: "'${e["label"].toString().substring(2)}"))
            .toList()
            .reversed
            .toList();
      }

      salesState = FetchState.complete;
    } else {
      AppNotification.error(message: response.message);

      salesState = FetchState.error;
    }
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

  BranchAnalyticsData? _dBranch;
  BranchAnalyticsData? get branchSalesData => _dBranch;
  set branchSalesData(BranchAnalyticsData? d) {
    _dBranch = d;
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

  getSalesAnalytics() async {
    salesLoading = true;
    AnalyticsResponse response = await InsightsService()
        .getAnalytics(selectedType.toLowerCase())
        .onError((error, stackTrace) => AnalyticsResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_analytics",
                "response_model": "AnalyticsResponse"
              },
            )));

    if (response.status == "success") {
      salesData = response.data;
      calculateIncrease();
    } else {
      AppNotification.error(message: response.message);
    }
    salesLoading = false;
  }

  getBranchSalesAnalytics() async {
    salesLoading = true;
    BranchAnalyticsResponse response = await BranchService()
        .getAnalytics(id: branch!.id, type: selectedType.toLowerCase())
        .onError((error, stackTrace) => BranchAnalyticsResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_analytics",
                "response_model": "AnalyticsResponse"
              },
            )));

    if (response.status == "success") {
      branchSalesData = response.data!;
      calculateBranchIncrease();
    } else {
      AppNotification.error(message: response.message);
    }
    salesLoading = false;
  }

  calculateBranchIncrease() {
    double current = double.parse(
        branchSalesData?.transaction.current.replaceAll(",", "") ?? "0.0");
    double previous = double.parse(
        branchSalesData?.transaction.previous.replaceAll(",", "") ?? "0.00");
    final change = current - previous;

    if (change == 0) {
      totalIncrease = 0;
    } else {
      if (previous == 0) {
        totalIncrease = change;
      } else {
        totalIncrease = change / previous;
      }
    }
  }

  calculateIncrease() {
    log(salesData.toString());
    double currentMobile = double.parse(salesData?.mobile.current ?? "0.0");
    double previousMobile = double.parse(salesData?.mobile.previous ?? "0.0");
    double currentDesktop = double.parse(salesData?.desktop.current ?? "0.0");
    double previousDesktop = double.parse(salesData?.desktop.previous ?? "0.0");

    double currentTotal = currentMobile + currentDesktop;
    double previousTotal = previousMobile + previousDesktop;

    double mChange = currentMobile - previousMobile;
    double dChange = currentDesktop - previousDesktop;
    double tChange = currentTotal - previousTotal;

    log(previousTotal.toString());

    if (tChange == 0) {
      totalIncrease = 0;
    } else {
      if (previousTotal == 0) {
        totalIncrease = tChange;
      } else {
        totalIncrease = tChange / previousTotal;
      }
    }

    if (mChange == 0) {
      mobileIncrease = 0;
    } else {
      if (previousMobile == 0) {
        mobileIncrease = mChange;
      } else {
        mobileIncrease = mChange / previousMobile;
      }
    }

    if (dChange == 0) {
      desktopIncrease = 0;
    } else {
      if (previousDesktop == 0) {
        desktopIncrease = dChange;
      } else {
        desktopIncrease = dChange / previousDesktop;
      }
    }
  }

  Branch? _branch;
  Branch? get branch => _branch;
  set branch(Branch? b) {
    _branch = b;
    notifyListeners();
    getAnalytics();

    staffPagingController.refresh();
  }

  TextEditingController searchController = TextEditingController();

  Timer? searchTimer;

  String? onSearchChanged(String? val) {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(milliseconds: 1500), () async {
      branchPagingController.refresh();
    });
    return val;
  }

  PagingController<int, Branch> branchPagingController =
      PagingController<int, Branch>(firstPageKey: 1);
  PagingController<int, Staff> staffPagingController =
      PagingController<int, Staff>(firstPageKey: 1);

  getBranches(int page) async {
    try {
      GetBranchesResponse response = await BranchService()
          .getAllBranches(
            page: page,
            limit: 50,
          )
          .onError(
            (error, stackTrace) => GetBranchesResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_all_branches",
                "response_model": "GetBranchesResponse"
              },
            )),
          );

      if (response.status == "success") {
        if (response.data!.loadMore) {
          branchPagingController.appendPage(response.data!.data, page + 1);
        } else {
          branchPagingController.appendLastPage(response.data!.data);
        }

        notifyListeners();
      } else {
        branchPagingController.error = response.message;
      }
    } catch (e) {
      branchPagingController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  getBranchStaff(int page) async {
    try {
      GetStaffResponse response = await BranchService()
          .getBranchStaff(
            page: page,
            limit: 50,
            id: branch!.id,
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

    GetStaffRoleResponse response = await StaffService()
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
