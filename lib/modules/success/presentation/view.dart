import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/modules/success/widgets/receipt.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

class SuccessView extends StatefulWidget {
  final String mode;
  final PayData data;
  const SuccessView({super.key, required this.mode, required this.data});

  @override
  State<SuccessView> createState() => _SuccessViewState();
}

class _SuccessViewState extends State<SuccessView> {
  @override
  Widget build(BuildContext context) {
    NumberFormat format = NumberFormat("#,##0.00");
    return BaseView<SuccessViewModel>(
      model: SuccessViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          body: Stack(
            children: [
              if (model.receipt != null)
                Screenshot(
                  controller: model.screenshotController,
                  child: Receipt(record: model.receipt!),
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
                    successMessage(format),
                    const Spacer(),
                    shareReceiptButton(
                      onTap: () {
                        model.getTransactionReceipt(widget.data);
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

  Widget successMessage(NumberFormat format) {
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
              text: "${nairaSymbol()}${widget.data.amount} ",
              style: AppTextStyles.subHeader.copyWith(
                color: AppColors.white,
              ),
            ),
            TextSpan(
              text: "to ${widget.data.receiverName}",
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
