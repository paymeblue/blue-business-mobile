import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/staff_service/staff_service.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/staff/create/request/create_staff_request.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AddStaffViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    setSelectedCountry();
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.staffManagementPath);
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

  bool isActive() {
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

  createStaff(BuildContext context) async {
    AppLoader.start();
    CreateStaffRequest request = CreateStaffRequest(
        name: nameController.text,
        phone: formatPhone(),
        password: passwordController.text);

    CreateStaffResponse response =
        await StaffService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .createStaff(request: request)
            .onError((error, stackTrace) => CreateStaffResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      AppNotification.success(message: response.message);

      Future.delayed(const Duration(seconds: 3), () {
        goBack(context);
      });
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
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
}
