import 'dart:async';

import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class GetPumpPriceStationsViewModel extends BaseViewModel {
  void init() {
    stationController.addPageRequestListener(getBranches);
  }

  Timer? searchTimer;

  void onSearchChanged(String? v) {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(seconds: 1), () async {
      stationController.refresh();
    });
  }

  TextEditingController search = TextEditingController();

  PagingController<int, FillingStation> stationController =
      PagingController<int, FillingStation>(firstPageKey: 1);

  Future<void> getBranches(int page) async {
    try {
      final resp = await PumpPriceStationService()
          .getBranches(page: page, limit: 50)
          .onError((e, s) {
            return GetFillingStationsResponse(
              message: AppErrorHandler.getErrorMessage(e),
            );
          });

      if (resp.status == 'success') {
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
}
