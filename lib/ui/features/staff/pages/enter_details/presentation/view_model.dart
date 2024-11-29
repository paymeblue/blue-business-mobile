import 'dart:io';

import 'package:blue_business/core/api/branch_service/branch_service.dart';
import 'package:blue_business/core/api/staff_service/staff_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/branches/details/response/get_branch_response.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/staff/create/request/update_staff_request.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/models/staff_roles/get/item/staff_role.dart';
import 'package:blue_business/core/models/staff_roles/get/response/staff_role_response.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/dialogs.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EnterStaffDetailsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, Staff? staff) async {
    size = context.mediaQuery.size;

    setSelectedCountry();
    await getRoles();
    branchPagingController.addPageRequestListener((pageKey) {
      getBranches(pageKey);
    });

    if (staff != null) {
      setStaff(staff);
    }
  }

  setStaff(Staff staff) async {
    nameController.text = staff.name;
    phoneController.text = staff.phone
        .replaceFirst(selectedCountry.dialCode, "")
        .replaceFirst("+", "");
    setRole(staff);
    if (staff.branchId != null) {
      branchSetState = FetchState.loading;
      await getBranchById(staff.branchId!);
    }
  }

  setRole(Staff staff) {
    for (StaffRole r in roles) {
      if (r.name.toLowerCase() == staff.role.toLowerCase()) {
        role = r.copyWith(name: r.name.sentenceCase);
      }
    }
  }

  getBranchById(int id) async {
    branchSetState = FetchState.loading;

    GetBranchResponse response =
        await BranchService().getBranchById(id: id).onError(
              (error, stackTrace) => GetBranchResponse(
                  message: AppErrorHandler.getErrorMessage(
                error,
                {
                  "request_name": "get_branch_by_id",
                  "response_model": "GetBranchResponse"
                },
              )),
            );

    if (response.status == "success") {
      branchSetState = FetchState.complete;
    } else {
      branchSetState = FetchState.error;
    }

    branch = response.data;
  }

  goBack(BuildContext context, [bool refresh = false]) {
    context.pop(refresh);
  }

  goToAddBranch(BuildContext context) {
    GoRouterState state = GoRouterState.of(context);
    if (state.matchedLocation.startsWith(RoutePaths.home)) {
      context.push<bool>(RoutePaths.homeToBranchesToDetails).then((val) {
        if (val == true) branchPagingController.refresh();
      });
    } else {
      context.push(RoutePaths.settingsToBranchesToDetails).then((val) {
        branchPagingController.refresh();
      });
    }
  }

  String? _path;
  String? get path => _path;
  set path(String? v) {
    _path = v;
    notifyListeners();
  }

  pickImage() async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);

      if (result != null) {
        String? p = result.files.single.path;

        path = p;
      } else {
        AppNotification.error(message: "No image selected");
      }
    } catch (e) {
      AppNotification.error(
        message: AppErrorHandler.getErrorMessage(e),
      );
    }
  }

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  onCountryChanged(CountryCode? value) {
    if (value != null) {
      selectedCountry = value;
    }
  }

  onChanged(String? v) {
    notifyListeners();
  }

  RegExp letters = RegExp((r'[a-zA-Z]+?').toString());
  RegExp numbers = RegExp((r'[0-9]+?').toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  List<Map<String, dynamic>> conditions() => [
        {
          "isComplete": passwordController.text.length >= 9,
          "condition": "Must contain 9 characters"
        },
        {
          "isComplete": letters.hasMatch(passwordController.text),
          "condition": "Must contain a letter"
        },
        {
          "isComplete": special.hasMatch(passwordController.text),
          "condition": "Must contain a symbol"
        },
        {
          "isComplete": numbers.hasMatch(passwordController.text),
          "condition": "Must contain a number"
        },
      ];

  bool isActive(Staff? staff) {
    return staff == null && canCreate() || staff != null && canEdit(staff);
  }

  FetchState _branchSetState = FetchState.complete;
  FetchState get branchSetState => _branchSetState;
  set branchSetState(FetchState s) {
    _branchSetState = s;
    notifyListeners();
  }

  bool canCreate() {
    return nameController.text.trimRight().isNotEmpty &&
        phoneController.text.trimRight().isNotEmpty &&
        branch != null &&
        role != null &&
        isValidPassword();
  }

  bool canEdit(Staff staff) {
    return branchSetState != FetchState.loading &&
        (nameController.text.toLowerCase() != staff.name.toLowerCase() ||
            phoneController.text !=
                staff.phone
                    .replaceFirst(selectedCountry.dialCode, "")
                    .replaceFirst("+", "") ||
            isValidPassword() ||
            role?.name.toLowerCase() != staff.role.toLowerCase() ||
            branch?.id != staff.branchId ||
            path != null);
  }

  bool isValidPassword() {
    return numbers.hasMatch(passwordController.text) &&
        special.hasMatch(passwordController.text) &&
        letters.hasMatch(passwordController.text) &&
        passwordController.text.length >= 9;
  }

  confirmAccess(BuildContext context) {
    BlueDialog.primary(
      title: "Staff Access",
      subtitle:
          "Are you sure you want to grant ‘${nameController.text}' access to your BlueBusiness.",
      onDelete: () {
        createStaff(context);
      },
      confirmText: "Confirm",
      confirmColor: AppColors.primary,
    );
  }

  StaffRole? _role;
  StaffRole? get role => _role;
  set role(StaffRole? r) {
    _role = r;
    notifyListeners();
  }

  Branch? _branch;
  Branch? get branch => _branch;
  set branch(Branch? b) {
    _branch = b;
    notifyListeners();
  }

  PagingController<int, Branch> branchPagingController =
      PagingController<int, Branch>(firstPageKey: 1);

  getBranches(int page) async {
    try {
      GetBranchesResponse response = await BranchService()
          .getAllBranches(
            page: page,
            limit: 50,
            search:
                searchController.text.isEmpty ? null : searchController.text,
          )
          .onError(
            (error, stackTrace) => GetBranchesResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_all_branches",
                "response_model": "GetBranchesResponse"
              },
            )),
          );

      if (response.status == "success") {
        if (response.data!.loadMore) {
          branchPagingController.appendPage(response.data!.data, page + 1);
        } else {
          branchPagingController.appendLastPage(response.data!.data);
        }

        notifyListeners();
      } else {
        branchPagingController.error = response.message;
      }
    } catch (e) {
      branchPagingController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  createStaff(BuildContext context) async {
    AppLoader.start();

    CreateStaffResponse response = await StaffService()
        .createStaff(
      image: path != null ? File(path!) : null,
      name: nameController.text,
      phone: phoneController.text.validPhone(selectedCountry),
      branchId: branch!.id,
      role: role!.name.toLowerCase(),
      password: passwordController.text,
    )
        .onError((error, stacktrace) {
      return CreateStaffResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "create_staff",
          "response_model": "CreateStaffResponse"
        },
      ));
    });

    if (response.status == "success") {
      if (context.mounted) goBack(context, true);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  editStaff(BuildContext context, Staff staff) async {
    AppLoader.start();

    UpdateStaffRequest request = UpdateStaffRequest(
      name: nameController.text.toLowerCase() != staff.name.toLowerCase()
          ? nameController.text
          : null,
      phone: phoneController.text !=
              staff.phone
                  .replaceFirst(selectedCountry.dialCode, "")
                  .replaceFirst("+", "")
          ? phoneController.text.validPhone(selectedCountry)
          : null,
      branchId: branch?.id != staff.branchId ? branch?.id : null,
      role: role?.name.toLowerCase() != staff.role.toLowerCase()
          ? role?.name.toLowerCase()
          : null,
      password:
          passwordController.text.isEmpty ? null : passwordController.text,
    );

    CreateStaffResponse response = await StaffService()
        .editStaff(
      id: staff.id,
      request: request,
    )
        .onError((error, stacktrace) {
      return CreateStaffResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {"request_name": "edit_staff", "response_model": "CreateStaffResponse"},
      ));
    });

    if (response.status == "success") {
      if (context.mounted) goBack(context, true);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  FetchState _roleState = FetchState.complete;
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

  getRoles() async {
    roleState = FetchState.loading;

    GetStaffRoleResponse response = await StaffService()
        .getStaffRoles()
        .onError((error, stacjtrace) => GetStaffRoleResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_staff_role",
                "response_model": "GetStaffRoleResponse"
              },
            )));

    if (response.status == "success") {
      roles = response.data!;
      roleState = FetchState.complete;
    } else {
      roleState = FetchState.error;
      AppNotification.error(message: response.message);
    }
  }
}
