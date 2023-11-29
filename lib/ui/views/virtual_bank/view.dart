import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';

import 'view_model.dart';

class VirtualBankView extends StatefulWidget {
  const VirtualBankView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.virtualBankPath,
        key: ValueKey(AppPages.virtualBankPath),
        child: const VirtualBankView());
  }

  @override
  State<VirtualBankView> createState() => _VirtualBankViewState();
}

class _VirtualBankViewState extends State<VirtualBankView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<VirtualBankViewModel>(
      model: VirtualBankViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (p0) {
        Timeout.dispose();
      },
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () {
            Timeout.resetTimer();
          },
          onPanDown: (details) {
            Timeout.resetTimer();
          },
          child: Scaffold(
            appBar: BlueAppBar.show(
              leadingIcon: Icons.arrow_back_ios,
              onBackTap: () {
                model.appStateManager.fundWallet = false;
              },
            ),
            body: Container(
              height: size.height - 52,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: model.copy,
                    child: Container(
                      width: size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 13),
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                              color: AppColors.bgGrey,
                              shape: BoxShape.circle,
                              // image: model.appStateManager.currentUser!
                              //             .walletData!
                              //             .bankLogo() !=
                              //         null
                              //     ? DecorationImage(
                              //         image: AssetImage(model.appStateManager
                              //             .currentUser!.walletData!
                              //             .bankLogo()!))
                              //     : null,
                            ),
                            child: SvgPicture.asset(AppAssets.fundWalletIcon),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Fancy bank",
                                  style: AppTextStyles.subHeader
                                      .copyWith(color: AppColors.textcolor),
                                ),
                                Text(
                                  "1234567890",
                                  style: AppTextStyles.subText.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                            AppAssets.copyIcon,
                            height: 18.33,
                            width: 18.33,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: AppButton(
                        onTap: () {
                          Share.share(
                              "You can pay Semira via transfer to:\nFancy bank\n1234567890");
                        },
                        buttonText: "Share to Others"),
                  ),
                  const SizedBox(height: 35)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
