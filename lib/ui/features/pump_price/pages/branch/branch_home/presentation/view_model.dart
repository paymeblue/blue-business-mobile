import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PumpPriceBranchViewModel extends BaseViewModel {
  init(BuildContext context) {
    stationController.addPageRequestListener(getBranches);
  }

  TextEditingController search = TextEditingController();

  PagingController<int, FillingStation> stationController =
      PagingController<int, FillingStation>(firstPageKey: 1);

  getBranches(int page) async {
    try {
      final resp = await PumpPriceStationService()
          .getBranches(page: page, limit: 50)
          .onError((e, s) {
        return GetFillingStationsResponse(
            message: AppErrorHandler.getErrorMessage(e));
      });

      if (resp.status == 'success') {
        stationController.appendLastPage(resp.data);
      } else {
        stationController.error = resp.message;
      }
    } catch (e) {
      stationController.error = e.toString();
    }
  }

  deleteBranch(FillingStation station) async {
    final resp = await PumpPriceStationService()
        .deleteBranch(branchId: station.id)
        .onError((e, s) {
      return CreatePumpPriceBranchResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    if (resp.status != 'success') {
      PumpPriceToast.error(message: resp.message);
    } else {
      stationController.refresh();
      PumpPriceToast.success(message: 'Branch deleted');
    }
  }
}
