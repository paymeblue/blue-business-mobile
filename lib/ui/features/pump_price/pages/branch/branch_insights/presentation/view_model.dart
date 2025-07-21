import 'dart:developer';

import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/transactions/transactions.dart';
import 'package:blue_business/core/models/sales_analytics/line_chart/line_chart_data.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';

class PumpPriceBranchInsightsViewModel extends BaseViewModel {
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
    getInsights();
  }

  onTypeChanged(String t) {
    selectedType = t;
  }

  FetchState _pageState = FetchState.idle;
  FetchState get pageState => _pageState;
  set pageState(FetchState s) {
    _pageState = s;
    notifyListeners();
  }

  List<PumpPriceTransaction> _t = [];
  List<PumpPriceTransaction> get transactions => _t;
  set transactions(List<PumpPriceTransaction> t) {
    _t = t;
    notifyListeners();
  }

  double _rev = 0;
  double get totalRevenue => _rev;
  set totalRevenue(double v) {
    _rev = v;
    notifyListeners();
  }

  List<LineInputData> _inputs = [];
  List<LineInputData> get inputData => _inputs;
  set inputData(List<LineInputData> d) {
    _inputs = d;
    notifyListeners();
  }

  getInsights() async {
    pageState = FetchState.loading;
    final resp = await PumpPriceStationService()
        .getInsights(id: branchId, period: selectedType.toLowerCase())
        .onError((e, s) {
      log(s.toString());
      return PumpPriceInsightsResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    if (resp.status == 'success') {
      pageState = FetchState.success;
      inputData = resp.data
          .map<LineInputData>((e) {
            return LineInputData(label: e.label.sentenceCase, amount: e.amount);
          })
          .toList()
          .reversed
          .toList();
      transactions = resp.transactions;
      totalRevenue = resp.totalRevenue;
    } else {
      pageState = FetchState.error;
      PumpPriceToast.error(message: resp.message);
    }
  }
}
