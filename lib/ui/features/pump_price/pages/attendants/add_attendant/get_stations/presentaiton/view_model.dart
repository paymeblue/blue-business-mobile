import 'dart:async';

import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';

class GetPumpPriceStationsViewModel extends BaseViewModel {
  Timer? searchTimer;

  FetchState _pageState = FetchState.idle;
  FetchState get pageState => _pageState;
  set pageState(FetchState s) {
    _pageState = s;
    notifyListeners();
  }

  onSearchChanged(String? v) {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(seconds: 1), () async {
      await findBranches(v ?? "");
    });
  }

  List<FillingStation> _stations = [];
  List<FillingStation> get stations => _stations;
  set stations(List<FillingStation> s) {
    _stations = s;
    notifyListeners();
  }

  findBranches(String query) async {
    pageState = FetchState.loading;
    final resp = await PumpPriceStationService().getBranches().onError((e, s) {
      return GetFillingStationsResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    if (resp.status == 'success') {
      pageState = FetchState.success;
      stations = resp.data;
    } else {
      pageState = FetchState.error;
      PumpPriceToast.error(message: resp.message);
    }
  }
}
