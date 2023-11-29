import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class SuccessView extends StatefulWidget {
  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.successPath,
        key: ValueKey(AppPages.successPath),
        child: const SuccessView());
  }

  const SuccessView({super.key});

  @override
  State<SuccessView> createState() => _SuccessViewState();
}

class _SuccessViewState extends State<SuccessView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<SuccessViewModel>(
        model: SuccessViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
            body: Consumer<AppStateManager>(builder: (context, appState, _) {
              return Container(
                  height: size.height,
                  width: size.width,
                  padding:
                      const EdgeInsets.only(bottom: 35, left: 16, right: 16),
                  decoration: BoxDecoration(color: AppColors.success),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      SvgPicture.asset(
                        AppAssets.successIcon,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      model.appStateManager.successTitle,
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: model.appStateManager.successMessage,
                      ),
                      const Spacer(),
                      if (!model.appStateManager.kyc)
                        AppButton(
                          onTap: () {},
                          isPrimary: false,
                          hasBorder: false,
                          textColor: AppColors.textcolor,
                          icon: Icon(
                            Icons.file_upload_outlined,
                            color: AppColors.textcolor,
                          ),
                          buttonText: "Share receipt",
                          width: 330,
                        ),
                      const SizedBox(height: 10),
                      if (!model.appStateManager.kyc &&
                          !model.appStateManager.registerBusiness)
                        AppBorderButton(
                          onTap: () {
                            model.appStateManager.success = false;
                            model.paymentStateManager.amount = "";
                            model.paymentStateManager.walletId = "";
                            model.appStateManager.shareQr = false;
                            model.paymentStateManager.method = null;
                            model.paymentStateManager.phone = "";
                            model.appStateManager.canSaveBeneficiary = true;
                            model.appStateManager.goToDashboard();
                          },
                          textColor: AppColors.white,
                          buttonText: "Done",
                          width: 330,
                        )
                      else if (model.appStateManager.kyc)
                        AppButton(
                          onTap: () {
                            model.appStateManager.success = false;
                            model.kycStateManager.kycIndex = 0;
                            model.kycStateManager.isActive = false;
                            model.appStateManager.isKycComplete = true;
                            model.appStateManager.shareQr = false;
                            model.appStateManager.kyc = false;
                            if (model.appStateManager.dashboard) {
                              model.appStateManager.goToDashboard();
                            }
                          },
                          isPrimary: false,
                          hasBorder: false,
                          textColor: AppColors.textcolor,
                          buttonText: "Done",
                          width: 330,
                        )
                      else
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 17),
                          child: AppButton(
                            onTap: model.goToRegisterBusiness,
                            isPrimary: false,
                            hasBorder: false,
                            textColor: AppColors.textcolor,
                            buttonText: "Done",
                          ),
                        ),
                    ],
                  ));
            }),
          );
        });
  }
}
