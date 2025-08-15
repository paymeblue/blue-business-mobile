import 'dart:async';

import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PumpPriceBranchViewModel extends BaseViewModel {
  init(BuildContext context) {
    stationController.addPageRequestListener(getBranches);
  }

  Timer? searchTimer;

  onSearchChanged(String? v) {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(seconds: 1), () async {
      stationController.refresh();
    });
  }

  FetchState _pageState = FetchState.idle;
  FetchState get pageState => _pageState;
  set pageState(FetchState s) {
    _pageState = s;
    notifyListeners();
  }

  TextEditingController search = TextEditingController();

  PagingController<int, FillingStation> stationController =
      PagingController<int, FillingStation>(firstPageKey: 1);

  getBranches(int page) async {
    try {
      final resp = await PumpPriceStationService()
          .getBranches(page: page, limit: 50, query: search.text.orNull)
          .onError((e, s) {
        return GetFillingStationsResponse(
            message: AppErrorHandler.getErrorMessage(e));
      });

      if (resp.status == 'success') {
        if (resp.data.meta.total > 0) {
          canSearch = true;
        } else {
          canSearch = false;
        }
        if (resp.data.meta.page == resp.data.meta.pages) {
          stationController.appendLastPage(resp.data.data);
        } else {
          stationController.appendPage(resp.data.data, page + 1);
        }
      } else {
        stationController.error = resp.message;
      }
    } catch (e) {
      stationController.error = e.toString();
    }
  }

  bool _canSearch = false;
  bool get canSearch => _canSearch;
  set canSearch(bool v) {
    _canSearch = v;
    notifyListeners();
  }

  deleteBranch(FillingStation station) async {
    pageState = FetchState.loading;
    final resp = await PumpPriceStationService()
        .deleteBranch(branchId: station.id)
        .onError((e, s) {
      return CreatePumpPriceBranchResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    if (resp.status != 'success') {
      pageState = FetchState.error;
      PumpPriceToast.error(message: resp.message);
    } else {
      pageState = FetchState.success;
      stationController.refresh();
      PumpPriceToast.success(message: 'Branch deleted');
    }
  }
}
