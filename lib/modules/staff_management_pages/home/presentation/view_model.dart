import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/staff_service/staff_service.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class StaffHomeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

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

  PagingController<int, Staff> staffPagingController =
      PagingController<int, Staff>(firstPageKey: 1);

  onDeleteStaff(Staff staff) {
    BlueDialog.primary(
        title: "Deny Access",
        subtitle:
            "Are you sure you remove access of BlueBusiness from ‘Sharon Joy’ ?",
        onDelete: () {},
        confirmText: "Confirm",
        confirmColor: AppColors.primary);
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }

  goToAddStaff(BuildContext context, {Staff? staff}) {
    context.push(RoutePaths.addStaffPath, extra: staff).then((v) {
      staffPagingController.refresh();
    });
  }

  TextEditingController searchController = TextEditingController();

  getStaff(int page) async {
    try {
      GetStaffResponse response = await StaffService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .getAllStaff(
            page: page,
            limit: 50,
            search:
                searchController.text.isEmpty ? null : searchController.text,
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
      }
    } catch (e) {
      staffPagingController.error = AppErrorHandler.getErrorMessage(e);
    }
  }
}
