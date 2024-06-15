import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class StaffHomeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    staffPagingController.addPageRequestListener((pageKey) {});
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

  goToAddStaff(BuildContext context) {
    context.go(RoutePaths.addStaffPath);
  }
}
