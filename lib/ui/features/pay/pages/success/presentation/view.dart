import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/transaction_details/pages/payment_details/widget/receipt.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

class PaymentSuccessViewArgs {
  PaymentSuccessViewArgs({required this.mode, required this.data});

  final PaymentMode mode;
  final PayData data;
}

@RoutePage()
class PaymentSuccessView extends StatelessWidget {
  final PaymentSuccessViewArgs args;
  const PaymentSuccessView({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return BaseView<PaymentSuccessViewModel>(
      model: PaymentSuccessViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            body: Stack(
              children: [
                if (model.receipt != null)
                  Screenshot(
                    controller: model.screenshotController,
                    child: PaymentReceipt(record: model.receipt!),
                  ),
                Container(
                  height: model.size.height,
                  width: model.size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
                  decoration: const BoxDecoration(
                    color: AppColors.success,
                  ),
                  child: Column(
                    children: [
                      const Spacer(),
                      AppAssets.images.icons.success.svg(),
                      25.verticalGap,
                      successTitle(),
                      11.verticalGap,
                      successMessage(),
                      const Spacer(),
                      shareReceiptButton(
                        onTap: () {
                          model.getTransactionReceipt(args.data);
                        },
                      ),
                      10.verticalGap,
                      doneButton(
                        onTap: () {
                          model.goToHome(context);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  AppButton doneButton({required VoidCallback onTap}) {
    return AppButton.ghostPrimary(
      title: "Done",
      onTap: onTap,
      textColor: AppColors.white,
    );
  }

  AppButton shareReceiptButton({required VoidCallback onTap}) {
    return AppButton.primaryWithIcon(
      title: "Share receipt",
      icon: AppAssets.images.icons.share.svg(),
      backgroundColor: AppColors.white,
      textColor: AppColors.textColor,
      onTap: onTap,
    );
  }

  Widget successTitle() {
    return Text(
      "Successful",
      style: AppTextStyles.header.copyWith(
        color: AppColors.white,
      ),
    );
  }

  Widget successMessage() {
    return SizedBox(
      width: 260,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: "You sent ",
              style: AppTextStyles.subHeader.copyWith(
                color: const Color(0xFFB0F0EA),
              ),
            ),
            TextSpan(
              text: "${nairaSymbol()}${args.data.amount} ",
              style: AppTextStyles.subHeader.copyWith(
                color: AppColors.white,
              ),
            ),
            TextSpan(
              text: "to ${args.data.receiverName}",
              style: AppTextStyles.subHeader.copyWith(
                color: const Color(0xFFB0F0EA),
              ),
            ),
            if (locator<AppStateValues>().narration.isNotEmpty)
              TextSpan(
                text: " for ${locator<AppStateValues>().narration}",
                style: AppTextStyles.subHeader.copyWith(
                  color: const Color(0xFFB0F0EA),
                ),
              ),
            TextSpan(
              text: ".",
              style: AppTextStyles.subHeader.copyWith(
                color: const Color(0xFFB0F0EA),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
