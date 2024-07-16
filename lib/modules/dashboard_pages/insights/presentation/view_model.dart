import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/insights_service/insights_service.dart';
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
import 'package:blue_business/core/models/tab_item/tab_item.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
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

    await getAnalytics();
  }

  getAnalytics() async {
    if (branch == null) {
      getSalesAnalytics();
      await getLineChartData();
      await getSpending();
    } else {
      getBranchSalesAnalytics();
    }
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
    SpendingAnalyticsResponse response = await InsightsService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
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
    SalesAnalyticsResponse response = await InsightsService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
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

  getBranchSalesAnalytics() async {
    salesState = FetchState.loading;
    SalesAnalyticsResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
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
      // salesData = response.data;
      // calculateIncrease();
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
    AnalyticsResponse response = await InsightsService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
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
      GetBranchesResponse response = await BranchService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
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
      GetStaffResponse response = await BranchService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .getBranchStaff(
            page: page,
            limit: 50,
            id: branch!.id,
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
}
