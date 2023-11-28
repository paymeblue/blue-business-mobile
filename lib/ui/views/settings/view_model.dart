import 'package:blue_business/core/helpers/storage/functions.dart';
import 'package:blue_business/core/helpers/storage/keys.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_loader.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);

    useBiometrics = authStateManager.useBiometrics;
    size = MediaQuery.of(appContext!).size;
  }

  bool _useBiometrics = false;
  bool get useBiometrics => _useBiometrics;

  set useBiometrics(bool v) {
    _useBiometrics = v;
    notifyListeners();
  }

  onBiometricsValueChanged(bool v) async {
    useBiometrics = v;
    await StorageHelpers.setVal(StorageKeys.useBiometricsKey, v.toString());
    authStateManager.useBiometrics = v;
  }

  showLogoutDialog(BuildContext buildContext) {
    showDialog(
        context: appContext!,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            child: Container(
              height: 122,
              width: 273,
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Text(
                    "Logout",
                    style: AppTextStyles.subHeader.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textcolor),
                  ),
                  Text(
                    "Are you sure you want to logout?",
                    style: AppTextStyles.subText
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 273 / 2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.bgGrey),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5))),
                            child: Text(
                              "Cancel",
                              style: AppTextStyles.largeButtonText,
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 273 / 2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.bgGrey),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5))),
                            child: Text(
                              "Confirm",
                              style: AppTextStyles.largeButtonText,
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ),
          );
        });
  }

  Reason? _reason;
  Reason? get reason => _reason;
  set reason(Reason? r) {
    _reason = r;
    notifyListeners();
  }

  List<Reason> reasons = [];

  showDeleteReasonDialog(BuildContext buildContext) {
    showDialog(
        context: appContext!,
        // barrierDismissible: false,
        builder: (context) {
          return Dialog(
            child: StatefulBuilder(builder: (context, setState) {
              return Container(
                height: 350,
                width: 290,
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.error.withOpacity(.15),
                      ),
                      child: SvgPicture.asset(AppAssets.deleteIcon,
                          fit: BoxFit.scaleDown),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Delete Account",
                        style: AppTextStyles.subHeader.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textcolor),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Please select a reason for deleting your account and leaving us",
                        style: AppTextStyles.subText.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                        child: ListView.builder(
                            itemCount: reasons.length,
                            itemBuilder: (contexxt, i) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    reason = reasons[i];
                                  });
                                  Navigator.pop(context);
                                  showDeleteAccountDialog(buildContext);
                                },
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: reasons[i],
                                        groupValue: reason,
                                        onChanged: (val) {
                                          setState(() {
                                            reason = val;
                                          });
                                          Navigator.pop(context);
                                          showDeleteAccountDialog(buildContext);
                                        },
                                      ),
                                      Expanded(
                                          child: Text(
                                        reasons[i].label,
                                        style: AppTextStyles.smallText.copyWith(
                                            color: AppColors.textcolor),
                                      ))
                                    ],
                                  ),
                                ),
                              );
                            }))
                  ],
                ),
              );
            }),
          );
        });
  }

  String delete = "";

  showDeleteAccountDialog(BuildContext buildContext) {
    showDialog(
        context: appContext!,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            child: StatefulBuilder(builder: (context, setState) {
              return Container(
                height: 230,
                width: 300,
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Text(
                      "Confirm Deactivation",
                      style: AppTextStyles.subHeader.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColors.error),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Type \"delete\" to confirm your ext",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.subText.copyWith(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: CustomTextField(
                        hintText: "",
                        onChanged: (val) {
                          setState(() {
                            delete = val ?? "";
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Expanded(
                      child: Row(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            delete = "";
                          },
                          child: Container(
                              width: 300 / 2,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.bgGrey),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(5))),
                              child: Text(
                                "Cancel",
                                style: AppTextStyles.largeButtonText,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (delete == "delete") {
                              Navigator.pop(context);
                              delete = "";
                            }
                          },
                          child: Container(
                              width: 300 / 2,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.bgGrey),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(5))),
                              child: Text(
                                "Confirm",
                                style: AppTextStyles.largeButtonText.copyWith(
                                    color: delete == "delete"
                                        ? AppColors.error
                                        : AppColors.bgGrey),
                              )),
                        )
                      ]),
                    )
                  ],
                ),
              );
            }),
          );
        });
  }

  goToPersonalDetails() {
    appStateManager.personalInfo = true;
  }

  goToShareQr() {
    appStateManager.shareQr = true;
  }

  goToAccountRecovery() {
    appStateManager.accountRecovery = true;
  }

  openDialer() async {
    Uri callUrl = Uri.parse('tel:=07081229771');
    if (await canLaunchUrl(callUrl)) {
      await launchUrl(callUrl);
    } else {
      AppNotification.error(
          message: "Could not open dialer", context: appContext!);
    }
  }

  openMail() async {
    Uri callUrl = Uri.parse('mailto:hello@paymeblue.com');
    if (await canLaunchUrl(callUrl)) {
      await launchUrl(callUrl);
    } else {
      AppNotification.error(
          message: "Could not open email", context: appContext!);
    }
  }

  openAbout(BuildContext context) async {
    AppLoader.showOverlay(context);
    Uri homeUrl = Uri.parse("https://paymeblue.com");

    launchUrl(homeUrl);
    AppLoader.hide();
  }

  goToUpdateKyc() {
    appStateManager.kyc = true;
  }

  String _path = "";
  String get path => _path;
  set path(String v) {
    _path = v;
    notifyListeners();
  }

  pickImage(BuildContext context) async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      String? p = result.files.single.path;
      if (p != null) {
        path = p;
        if (context.mounted) {}
      }
    } else {
      AppNotification.error(message: "No image selected", context: appContext!);
    }
  }

  showSupportBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: appContext!,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Container(
              height: 300,
              width: size.width,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "CONTACT SUPPORT",
                      style: AppTextStyles.subHeader.copyWith(
                          color: AppColors.textcolor,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: openDialer,
                    child: Text(
                      "Call us on 07081229771",
                      style: AppTextStyles.subText
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                  ),
                  GestureDetector(
                    onTap: openMail,
                    child: Text(
                      "Contact us via email",
                      style: AppTextStyles.subText
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                  ),
                  // GestureDetector(
                  //   child: Text(
                  //     "FAQs",
                  //     style: AppTextStyles.subText
                  //         .copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                  //   ),
                  // ),
                  const SizedBox(height: 35),
                ],
              ));
        });
  }
}

class Reason {
  final int id;
  final String label;

  Reason({
    required this.id,
    required this.label,
  });
}
