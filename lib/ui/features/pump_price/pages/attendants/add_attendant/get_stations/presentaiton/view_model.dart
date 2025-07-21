import 'dart:async';

import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class GetPumpPriceStationsViewModel extends BaseViewModel {
  init() {
    stationController.addPageRequestListener(findBranches);
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

  TextEditingController search = TextEditingController();

  PagingController<int, FillingStation> stationController =
      PagingController<int, FillingStation>(firstPageKey: 1);

  findBranches(int page) async {
    final resp = await PumpPriceStationService()
        .getBranches(
      page: page,
      limit: 50,
      query: search.text.orNull,
    )
        .onError((e, s) {
      return GetFillingStationsResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    if (resp.status == 'success') {
    } else {
      PumpPriceToast.error(message: resp.message);
    }
  }
}
