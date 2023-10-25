import 'package:blue_business/core/helpers/storage/functions.dart';
import 'package:blue_business/core/helpers/storage/keys.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:provider/provider.dart';

class PasscodeViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;
  late Size size;

  init() async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
    size = MediaQuery.sizeOf(appContext!);
  }

  handleButtonTap() {
    if (authStateManager.isRegistration) {
      goToDash();
    }
  }

  goBack() {
    appStateManager.passcode = false;
    authStateManager.passcode = "";
    appStateManager.login = false;
  }

  goToDash() {
    appStateManager.goToDashboard();
  }

  showFaceIdBottomSheet(String pin) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: appContext!,
        isDismissible: false,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Container(
              height: 350,
              width: size.width,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.faceIdIcon,
                    height: 51,
                    width: 51,
                  ),
                  const SizedBox(height: 17),
                  Text(
                    "Enable Face/Fingerprint ID",
                    style: AppTextStyles.subHeader.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textcolor),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      "Enable Face/Fingerprint ID to securely login to your account.",
                      style: AppTextStyles.subHeader,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                        onTap: () async {
                          authStateManager.useBiometrics = true;
                          Navigator.pop(context);
                          await StorageHelpers.setVal(StorageKeys.pinKey, pin);
                          await StorageHelpers.setVal(
                              StorageKeys.useBiometricsKey, true.toString());
                          await StorageHelpers.setVal(
                              StorageKeys.hasAskedKey, true.toString());
                        },
                        buttonText: "Yes, enable",
                        width: size.width / 2.8,
                      ),
                      const SizedBox(width: 10),
                      AppButton(
                        onTap: () async {
                          authStateManager.useBiometrics = false;
                          Navigator.pop(context);
                          await StorageHelpers.setVal(
                              StorageKeys.useBiometricsKey, false.toString());
                          await StorageHelpers.setVal(
                              StorageKeys.hasAskedKey, true.toString());
                        },
                        buttonText: "No,cancel",
                        width: size.width / 2.8,
                        isPrimary: false,
                      )
                    ],
                  )
                ],
              ));
        });
  }
}
