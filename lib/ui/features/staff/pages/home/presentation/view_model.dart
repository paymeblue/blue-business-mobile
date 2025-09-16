import 'dart:async';

import 'package:blue_business/core/api/staff_service/staff_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/models/staff_roles/get/item/staff_role.dart';
import 'package:blue_business/core/models/staff_roles/get/response/staff_role_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/dialogs.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class StaffHomeViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context) {
    size = context.mediaQuery.size;

    staffPagingController.addPageRequestListener((pageKey) {
      getStaff(pageKey);
    });

    getRoles();
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

  void onDeleteStaff(Staff staff) {
    BlueDialog.primary(
      title: "Deny Access",
      subtitle:
          "Are you sure you remove access to BlueBusiness from ‘${staff.name}’ ?",
      onDelete: () {
        deleteStaff(staff);
      },
      confirmText: "Confirm",
    );
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  void goToAddStaff(BuildContext context, {Staff? staff}) {
    locator<AppRouter>().push<bool>(EnterStaffDetailsRoute(staff: staff)).then((
      v,
    ) {
      if (v == true) staffPagingController.refresh();
    });
  }

  TextEditingController searchController = TextEditingController();

  Future<void> getStaff(int page) async {
    try {
      GetStaffResponse response = await StaffService()
          .getAllStaff(
            page: page,
            limit: 50,
            search: searchController.text.isEmpty
                ? null
                : searchController.text,
            role: role?.name,
          )
          .onError(
            (error, stackTrace) => GetStaffResponse(
              message: AppErrorHandler.getErrorMessage(error, {
                "request_name": "get_all_staff",
                "response_model": "GetStaffResponse",
              }),
            ),
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

  Future<void> deleteStaff(Staff staff) async {
    AppLoader.start();

    CreateStaffResponse response = await StaffService()
        .deleteStaff(id: staff.id)
        .onError(
          (error, stackTrace) => CreateStaffResponse(
            message: AppErrorHandler.getErrorMessage(error, {
              "request_name": "delete_staff",
              "response_model": "CreateStaffResponse",
            }),
          ),
        );

    if (response.status == "success") {
      staffPagingController.refresh();
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }

  FetchState _roleState = FetchState.success;
  FetchState get roleState => _roleState;
  set roleState(FetchState value) {
    _roleState = value;
    notifyListeners();
  }

  List<StaffRole> _roles = [];
  List<StaffRole> get roles => _roles;
  set roles(List<StaffRole> value) {
    _roles = value;
    notifyListeners();
  }

  StaffRole? _role;
  StaffRole? get role => _role;
  set role(StaffRole? value) {
    _role = value;
    notifyListeners();
  }

  Future<void> getRoles() async {
    roleState = FetchState.loading;

    GetStaffRoleResponse response = await StaffService()
        .getStaffRoles()
        .onError(
          (error, stacjtrace) => GetStaffRoleResponse(
            message: AppErrorHandler.getErrorMessage(error, {
              "request_name": "get_staff_rles",
              "response_model": "GetStaffRoleResponse",
            }),
          ),
        );

    if (response.status == "success") {
      roles = response.data!;
      roleState = FetchState.success;
    } else {
      roleState = FetchState.error;
      AppNotification.error(message: response.message);
    }
  }
}
