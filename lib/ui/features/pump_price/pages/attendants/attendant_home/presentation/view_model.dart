import 'dart:async';

import 'package:blue_business/core/api/pump_price_service/pump_price_attendant_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PumpPriceAttendantViewModel extends BaseViewModel {
  init() {
    staffPagingController.addPageRequestListener((pageKey) {
      getStaff(pageKey);
    });
  }

  Timer? searchTimer;
  Future<String?> onSearchChanged(String? val) async {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(milliseconds: 1500), () async {
      staffPagingController.refresh();
    });
    return val;
  }

  FetchState _pageState = FetchState.idle;
  FetchState get pageState => _pageState;
  set pageState(FetchState s) {
    _pageState = s;
    notifyListeners();
  }

  TextEditingController search = TextEditingController();

  PagingController<int, Staff> staffPagingController =
      PagingController<int, Staff>(firstPageKey: 1);

  getStaff(int page) async {
    try {
      GetStaffResponse response = await PumpPriceAttendantService()
          .getttendants(
            page: page,
            limit: 50,
            query: search.text.orNull,
          )
          .onError(
            (error, stackTrace) => GetStaffResponse(
                message: AppErrorHandler.getErrorMessage(error)),
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
        PumpPriceToast.error(message: response.message ?? '');
      }
    } catch (e) {
      staffPagingController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  deleteStaff(Staff staff) async {
    pageState = FetchState.loading;

    CreateStaffResponse response =
        await PumpPriceAttendantService().deleteAttendant(id: staff.id).onError(
              (error, stackTrace) => CreateStaffResponse(
                  message: AppErrorHandler.getErrorMessage(error)),
            );

    if (response.status == "success") {
      pageState = FetchState.success;
      staffPagingController.refresh();
      PumpPriceToast.success(message: 'Attendant deleted');
    } else {
      pageState = FetchState.error;
      PumpPriceToast.error(message: response.message);
    }
  }
}
