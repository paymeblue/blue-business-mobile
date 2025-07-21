import 'package:blue_business/core/api/pump_price_service/pump_price_station_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';

class PumpPriceBranchViewModel extends BaseViewModel {
  init(BuildContext context) {
    getBranches();
  }

  List<FillingStation> _stations = [];
  List<FillingStation> get stations => _stations;
  set stations(List<FillingStation> s) {
    _stations = s;
    notifyListeners();
  }

  FetchState _pageState = FetchState.idle;
  FetchState get pageState => _pageState;
  set pageState(FetchState s) {
    _pageState = s;
    notifyListeners();
  }

  Future<void> getBranches() async {
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

  deleteBranch(FillingStation station) async {
    pageState = FetchState.loading;
    final resp = await PumpPriceStationService()
        .deleteBranch(branchId: station.branchId)
        .onError((e, s) {
      return CreatePumpPriceBranchResponse(
          message: AppErrorHandler.getErrorMessage(e));
    });

    if (resp.status != 'success') {
      pageState = FetchState.error;
      PumpPriceToast.error(message: resp.message);
    } else {
      getBranches();
      PumpPriceToast.success(message: 'Branch deleted');
    }
  }
}
