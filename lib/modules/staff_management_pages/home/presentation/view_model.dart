import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/staff_service/staff_service.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class StaffHomeViewModel extends BaseViewModel {
  late Size size;
  StaffService staffService = StaffService();

  init(BuildContext context) {
    size = context.mediaQuery.size;

    staffPagingController.addPageRequestListener((pageKey) {
      getStaff(pageKey);
    });
  }

  PagingController<int, Staff> staffPagingController =
      PagingController<int, Staff>(firstPageKey: 1);

  getStaff(int page) async {
    try {
      GetStaffResponse response =
          await staffService.getStaff(page: page, limit: 50).onError(
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
      }
    } catch (e) {
      staffPagingController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  onDeleteStaff(Staff staff) {
    BlueDialog.primary(
        title: "Deny Access",
        subtitle:
            "Are you sure you remove access of BlueBusiness from ‘Sharon Joy’ ?",
        onDelete: () {
          deleteStaff(staff);
        },
        confirmText: "Confirm",
        confirmColor: AppColors.primary);
  }

  deleteStaff(Staff staff) async {
    AppLoader.start();

    var response = await staffService.deleteStaff(staffId: staff.id);

    if (response == null) {
      staffPagingController.refresh();
    } else {
      AppNotification.error(message: response["message"]);
    }
    AppLoader.stop();
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }

  goToAddStaff(BuildContext context) {
    context.go(RoutePaths.addStaffPath);
  }
}
