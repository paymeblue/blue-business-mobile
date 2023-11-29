import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/kyc_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/kyc/pages/enter_bvn.dart';
import 'package:blue_business/ui/views/kyc/pages/enter_id.dart';
import 'package:blue_business/ui/views/kyc/pages/select_file.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UpdateKycViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late KycStateManager kycStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    kycStateManager = Provider.of<KycStateManager>(appContext!, listen: false);

    Timeout.resetTimer();
  }

  List<Widget> pages = [
    const EnterBvnView(),
    const EnterIdView(),
    const SelectFileView(),
  ];

  handleBackTap() {
    if (kycStateManager.kycIndex == 0) {
      appStateManager.kyc = false;
      if (!appStateManager.dashboard) {
        appStateManager.goToDashboard();
      }
    } else {
      kycStateManager.kycIndex--;
    }
  }

  goToSuccess() {
    appStateManager.successMessage = Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(appContext!).size.width / 5),
      child: Text(
        "You successfully verified your identity, your Account has been upgraded. 🎉",
        style: AppTextStyles.subHeader.copyWith(color: AppColors.white),
        textAlign: TextAlign.center,
      ),
    );

    appStateManager.success = true;
  }
}
