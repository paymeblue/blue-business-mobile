import 'dart:developer';
import 'dart:io';

import 'package:blue_business/core/api/pump_price_service/pump_price_attendant_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/models/staff/create/request/update_staff_request.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/item/staff.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pump_price/pages/attendants/add_attendant/get_stations/presentaiton/view.dart';
import 'package:blue_business/ui/features/pump_price/widgets/modals/toast.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class AddPumpPriceAttendantViewModel extends BaseViewModel {
  Staff? attendant;
  init(Staff? s) {
    attendant = s;

    if (attendant != null) {
      setAttendantValues();
    }
  }

  setAttendantValues() {
    name.text = attendant!.name;
    phone.text = attendant!.phone.substring(attendant!.phone.length - 10);
    branch = attendant!.branchName;

    log(attendant.toString());
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
        PumpPriceToast.error(message: "No image selected");
      }
    } catch (e) {
      PumpPriceToast.error(
        message: AppErrorHandler.getErrorMessage(e),
      );
    }
  }

  String? _branch;
  String? get branch => _branch;
  set branch(String? v) {
    _branch = v;
    notifyListeners();
  }

  FillingStation? _station;
  FillingStation? get station => _station;
  set station(FillingStation? s) {
    _station = s;
    notifyListeners();
  }

  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController name = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  String? _passwordValidationText;
  String? get passwordValidationText => _passwordValidationText;
  set passwordValidationText(String? t) {
    _passwordValidationText = t;
    notifyListeners();
  }

  String? _confirmPasswordValidationText;
  String? get confirmPasswordValidationText => _confirmPasswordValidationText;
  set confirmPasswordValidationText(String? t) {
    _confirmPasswordValidationText = t;
    notifyListeners();
  }

  onConfirmPasswordChanged(String? v) {
    if (v.orEmpty.isEmpty && attendant == null) {
      confirmPasswordValidationText = 'This field is required';
    } else if (v.orEmpty != password.text) {
      confirmPasswordValidationText = 'Passwords do not match';
    } else {
      confirmPasswordValidationText = null;
    }
  }

  onPasswordChanged(String? v) {
    if (v.orEmpty.isEmpty && attendant == null) {
      passwordValidationText = 'This field is required';
    } else if (v.orEmpty.isNotEmpty) {
      if (v.orEmpty.length < 9) {
        passwordValidationText = 'Password must be at least 9 characters';
      } else if (!RegExp((r'[a-zA-Z]+?').toString()).hasMatch(v.orEmpty)) {
        passwordValidationText = 'Password must contain a letter';
      } else if (!RegExp((r'[0-9]+?').toString()).hasMatch(v.orEmpty)) {
        passwordValidationText = 'Password must contain a number';
      } else if (!RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString())
          .hasMatch(v.orEmpty)) {
        passwordValidationText = 'Password must contain a special character';
      } else {
        passwordValidationText = null;
      }
    } else {
      passwordValidationText = null;
    }
  }

  showBranchesBottomSheet(BuildContext context) async {
    FocusManager.instance.primaryFocus?.unfocus();
    await showModalBottomSheet(
      context: context,
      barrierColor: AppColors.pumpPriceblack.withOpacityValue(.65),
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (ctx) {
        return GetPumpPriceStationsView(
          onSelected: (value) {
            Navigator.of(ctx).pop();
            station = value;
            branch = value.name;
          },
        );
      },
    );
  }

  bool isActive() {
    return attendant == null &&
        name.text.isNotEmpty &&
        phone.text.isNotEmpty &&
        station != null &&
        passwordValidationText == null &&
        confirmPassword.text.isNotEmpty &&
        confirmPasswordValidationText == null;
  }

  bool isEditActive() {
    if (attendant != null) {
      return attendant != null &&
          (name.text != attendant!.name ||
              phone.text.validPhone(CountryCode(
                    countryCode: 'NG',
                    name: 'Nigeria',
                    dialCode: '+234',
                  )) !=
                  attendant!.phone.validPhone(CountryCode(
                    countryCode: 'NG',
                    name: 'Nigeria',
                    dialCode: '+234',
                  )) ||
              branch != attendant!.branchName ||
              (password.text.isNotEmpty &&
                  passwordValidationText == null &&
                  confirmPassword.text.isNotEmpty &&
                  confirmPasswordValidationText == null));
    }
    return false;
  }

  FetchState _buttonState = FetchState.idle;
  FetchState get buttonState => _buttonState;
  set buttonState(FetchState s) {
    _buttonState = s;
    notifyListeners();
  }

  createStaff() async {
    buttonState = FetchState.loading;
    CreateStaffResponse response = await PumpPriceAttendantService()
        .createAttendant(
      image: path != null ? File(path!) : null,
      name: name.text,
      phone: phone.text.validPhone(CountryCode(
        countryCode: 'NG',
        name: 'Nigeria',
        dialCode: '+234',
      )),
      branchId: int.parse(station!.branchId),
      password: password.text,
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
      buttonState = FetchState.success;
      locator<AppRouter>().maybePop(true);
    } else {
      buttonState = FetchState.error;
      PumpPriceToast.error(message: response.message);
    }
  }

  editStaff() async {
    buttonState = FetchState.loading;
    UpdateStaffRequest request = UpdateStaffRequest();

    if (phone.text.validPhone(CountryCode(
          countryCode: 'NG',
          name: 'Nigeria',
          dialCode: '+234',
        )) !=
        attendant!.phone.validPhone(CountryCode(
          countryCode: 'NG',
          name: 'Nigeria',
          dialCode: '+234',
        ))) {
      request = request.copyWith(
          phone: phone.text.validPhone(CountryCode(
        countryCode: 'NG',
        name: 'Nigeria',
        dialCode: '+234',
      )));
    }

    if (branch != attendant!.branchName) {
      request = request.copyWith(branchId: int.parse(station!.branchId));
    }

    if (name.text != attendant!.name) {
      request = request.copyWith(name: name.text);
    }

    if (password.text.isNotEmpty &&
        passwordValidationText == null &&
        confirmPassword.text.isNotEmpty &&
        confirmPasswordValidationText == null) {
      request = request.copyWith(password: password.text);
    }

    final resp = await PumpPriceAttendantService()
        .editAttendant(id: attendant!.id, request: request)
        .onError((e, s) {
      return CreateStaffResponse(message: AppErrorHandler.getErrorMessage(e));
    });

    if (resp.status == 'success') {
      buttonState = FetchState.success;
      locator<AppRouter>().maybePop(true);
    } else {
      buttonState = FetchState.error;
      PumpPriceToast.error(message: resp.message);
    }
  }
}
