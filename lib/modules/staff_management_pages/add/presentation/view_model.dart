import 'dart:io';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/staff_service/staff_service.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/branches/details/response/get_branch_response.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AddStaffViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, Staff? staff) {
    size = context.mediaQuery.size;

    setSelectedCountry();
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
        .replaceFirst(selectedCountry!.dialCode, "")
        .replaceFirst("+", "");
    role = roles[roles.indexOf(staff.role.sentenceCase)];
    branch = await getBranchById(staff.branchId);
  }

  Future<Branch?> getBranchById(int id) async {
    AppLoader.start();

    GetBranchResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getBranchById(id: id)
        .onError(
          (error, stackTrace) => GetBranchResponse(
              message: AppErrorHandler.getErrorMessage(error)),
        );

    AppLoader.stop();

    if (response.status == "success") {
      return response.data!;
    } else {
      return null;
    }
  }

  goBack(BuildContext context) {
    context.pop();
  }

  goToAddBranch(BuildContext context) {
    context.push(RoutePaths.addBranchPath);
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

  CountryCode? _country;
  CountryCode? get selectedCountry => _country;
  set selectedCountry(CountryCode? v) {
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
    selectedCountry = value;
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
    return (staff == null &&
            nameController.text.isNotEmpty &&
            phoneController.text.isNotEmpty &&
            branch != null &&
            role != null &&
            isValidPassword()) ||
        (staff != null &&
            (nameController.text != staff.name ||
                phoneController.text != staff.phone.replaceFirst("+", "") ||
                isValidPassword() ||
                role != staff.role.sentenceCase ||
                branch?.id != staff.branchId ||
                path != null));
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
          "Are you sure you want to grant ‘Sharon Joy’ access to your BlueBusiness.",
      onDelete: () {
        createStaff(context);
      },
      confirmText: "Confirm",
      confirmColor: AppColors.primary,
    );
  }

  String formatPhone() {
    String number = phoneController.text.replaceAll(" ", "");

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
    }
    if (number.startsWith(selectedCountry!.dialCode)) {
      number = number.replaceFirst(selectedCountry!.dialCode, "");
    }

    return selectedCountry!.dialCode + number;
  }

  List<String> roles = ["Admin", "Cashier"];

  String? _role;
  String? get role => _role;
  set role(String? r) {
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
      GetBranchesResponse response = await BranchService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .getAllBranches(
            page: page,
            limit: 50,
            search:
                searchController.text.isEmpty ? null : searchController.text,
          )
          .onError(
            (error, stackTrace) => GetBranchesResponse(
                message: AppErrorHandler.getErrorMessage(error)),
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

    CreateStaffResponse response =
        await StaffService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .createStaff(
      image: File(path!),
      name: nameController.text,
      phone: formatPhone(),
      branchId: branch!.id,
      role: role!.toLowerCase(),
      password: passwordController.text,
    )
            .onError((error, stacktrace) {
      return CreateStaffResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (response.status == "success") {
      if (context.mounted) goBack(context);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  editStaff(BuildContext context, Staff staff) async {
    AppLoader.start();

    CreateStaffResponse response =
        await StaffService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .editStaff(
      id: staff.id,
      image: path != null ? File(path!) : null,
      name: nameController.text,
      phone: formatPhone(),
      branchId: branch?.id,
      role: role!.toLowerCase(),
      password:
          passwordController.text.isEmpty ? null : passwordController.text,
    )
            .onError((error, stacktrace) {
      return CreateStaffResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (response.status == "success") {
      if (context.mounted) goBack(context);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }
}
