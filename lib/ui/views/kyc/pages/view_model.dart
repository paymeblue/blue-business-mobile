import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/kyc_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/kyc/pages/enter_bvn.dart';
import 'package:blue_business/ui/views/kyc/pages/enter_id.dart';
import 'package:blue_business/ui/views/kyc/pages/select_file.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:country_list/country_list.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateKycPagesViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late KycStateManager kycStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    kycStateManager = Provider.of<KycStateManager>(appContext!, listen: false);
  }

  List<Widget> pages = [
    const EnterBvnView(),
    const EnterIdView(),
    const SelectFileView(),
  ];

  handleBackTap() {
    if (kycStateManager.kycIndex == 0) {
      appStateManager.kyc = false;
    } else {
      kycStateManager.kycIndex--;
    }
    kycStateManager.isActive = false;
  }

  List<Country> _countries = Countries.list;
  List<Country> get countries => _countries;

  set countries(List<Country> c) {
    _countries = c;
    notifyListeners();
  }

  List<String> types = [
    "International Passport",
    "Voter's Card",
    "National ID Card",
    "Driver's License"
  ];

  FocusNode countryDropdownNode = FocusNode();
  FocusNode dropdownNode = FocusNode();
  FocusNode dateTimeNode = FocusNode();

  TextEditingController countrySearchController = TextEditingController();

  String? onCountryChanged(String? v) {
    searchCountry(v ?? "");
    isExpanded = true;
    return v;
  }

  String? onCountrySaved(String? v) {
    searchCountry(v ?? "");
    isExpanded = true;
    return v;
  }

  bool _expanded = false;
  bool get isExpanded => _expanded;
  set isExpanded(bool v) {
    _expanded = v;
    notifyListeners();
  }

  searchCountry(String v) {
    List<Country> c = [];
    if (v.isEmpty) {
      c = Countries.list;
    } else {
      for (Country ct in Countries.list) {
        if (ct.name.toLowerCase().contains(v.toLowerCase())) {
          c.add(ct);
        }
      }
    }
    countries = c;
  }

  onTapDatTime() async {
    dateTimeNode.requestFocus();
    notifyListeners();
    pickDate();
  }

  pickDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: appContext!,
      initialDate: kycStateManager.date.isNotEmpty
          ? DateTime.parse(kycStateManager.date)
          : DateTime(DateTime.now().year - 18, DateTime.now().month,
              DateTime.now().day),
      firstDate: DateTime(1900),
      lastDate: DateTime(
          DateTime.now().year - 18, DateTime.now().month, DateTime.now().day),
      currentDate: DateTime.now(),
      confirmText: "Select".toUpperCase(),
      builder: (context, child) {
        return Theme(
            data: ThemeData(
                colorScheme: ColorScheme(
                    brightness: Theme.of(context).brightness,
                    primary: AppColors.primaryColor,
                    onPrimary: AppColors.white,
                    secondary: AppColors.brightBlue,
                    onSecondary: AppColors.white,
                    error: AppColors.error,
                    onError: AppColors.white,
                    background: AppColors.white,
                    onBackground: AppColors.primaryColor,
                    surface: AppColors.grey,
                    onSurface: AppColors.primaryColor)),
            child: child!);
      },
    );

    if (selectedDate != null) {
      kycStateManager.date = selectedDate.toIso8601String();
    }
  }

  String? onBvnChanged(String? v) {
    kycStateManager.bvn = v ?? "";
    return v;
  }

  String? onBvnSaved(String? v) {
    kycStateManager.bvn = v ?? "";
    return v;
  }

  GlobalKey<FormState> bvnFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> idFormKey = GlobalKey<FormState>();

  // setActive() {
  //   switch (kycStateManager.kycIndex) {
  //     case 0:
  //       kycStateManager.isActive =
  //           kycStateManager.bvn.isNotEmpty && kycStateManager.date.isNotEmpty;
  //       break;
  //     case 1:
  //       kycStateManager.isActive = countrySearchController.text.isNotEmpty &&
  //           kycStateManager.idType.isNotEmpty;
  //       break;
  //     case 2:
  //       kycStateManager.isActive = frontPath.isNotEmpty && backPath.isNotEmpty;
  //       break;
  //     default:
  //       kycStateManager.isActive = false;
  //   }
  // }

  handleOnTap(BuildContext context) {
    switch (kycStateManager.kycIndex) {
      case 0:
        verifyBvn(context);
        break;
      case 1:
        update(context);
        break;
      case 2:
        goToSuccess();
        break;
      default:
        break;
    }
  }

  String _frontPath = "", _backPath = "";
  String get frontPath => _frontPath;
  set frontPath(String v) {
    _frontPath = v;
    notifyListeners();
  }

  String get backPath => _backPath;
  set backPath(String v) {
    _backPath = v;
    notifyListeners();
  }

  pickIdFront() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'jpeg', 'png'],
    );

    if (result != null) {
      String? path = result.files.single.path;
      if (path != null) {
        frontPath = result.files.single.path!;
      }
    } else {
      // User canceled the picker
    }
  }

  pickIdBack() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'pdf', 'jpeg', 'png'],
    );

    if (result != null) {
      String? path = result.files.single.path;
      if (path != null) {
        backPath = result.files.single.path!;
      }
    } else {
      // User canceled the picker
    }
  }

  verifyBvn(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await kycService.verifyBvn(
    //     bvn: kycStateManager.bvn,
    //     dateOfBirth: DateTime.parse(kycStateManager.date));
    // AppLoader.hide();

    // if (!resp['status']) {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // } else {
    //   AppNotification.success(
    //       message: "BVN verification successful. Account verified.",
    // context: appContext!);
    kycStateManager.kycIndex++;
    kycStateManager.isActive = false;
    kycStateManager.bvn = "";
    kycStateManager.date = "";
    bvnFormKey.currentState!.reset();
    // }
  }

  update(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await kycService.update(
    //     country: countrySearchController.text,
    //     idIndex: types.indexOf(kycStateManager.idType));
    // AppLoader.hide();

    // if (!resp['status']) {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // } else {
    //   AppNotification.success(
    //       message: "ID Information updated successfully", context: appContext!);
    kycStateManager.kycIndex++;
    kycStateManager.isActive = false;
    kycStateManager.idType = "";
    countrySearchController.clear();
    idFormKey.currentState!.reset();
    // }
  }

  uploadDocuments(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await kycService.uploadDocuments(
    //     frontPath: frontPath, backPath: backPath);
    // AppLoader.hide();

    // if (!resp['status']) {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // } else {
    //   AppNotification.success(
    //       message: "ID Uploaded Successfully", context: appContext!);
    frontPath = "";
    backPath = "";
    goToSuccess();
    // }
  }

  goToSuccess() {
    appStateManager.successMessage = Text(
      "You successfully verified your identity, your Account has been upgraded. 🎉",
      style: AppTextStyles.subHeader.copyWith(color: AppColors.white),
      textAlign: TextAlign.center,
    );

    appStateManager.success = true;
  }
}
