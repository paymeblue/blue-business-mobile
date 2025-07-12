import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/bills/electricity/vend/data/vend_electricity_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/transaction_details/pages/power_details/widgets/receipt.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

@RoutePage()
class VendElectricitySuccessView extends StatelessWidget {
  final VendElectricityData data;
  const VendElectricitySuccessView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<VendElectricitySuccessViewModel>(
      model: VendElectricitySuccessViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            body: Stack(
              children: [
                if (model.powerDetails != null)
                  Screenshot(
                    controller: model.screenshotController,
                    child: PowerReceipt(record: model.powerDetails!),
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
                      if (data.units != null) ...[
                        35.verticalGap,
                        unitsText(),
                      ],
                      if (data.token != null) ...[
                        6.verticalGap,
                        tokenContainer(),
                      ],
                      const Spacer(),
                      shareReceiptButton(
                        onTap: () {
                          model.getTransactionDetails(data);
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

  Widget shareReceiptButton({required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: AppButton.primaryWithIcon(
        title: "Share receipt",
        icon: AppAssets.images.icons.share.svg(),
        backgroundColor: AppColors.white,
        textColor: AppColors.textColor,
        onTap: onTap,
      ),
    );
  }

  Widget doneButton({required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: AppButton.ghostPrimary(
        title: "Done",
        onTap: onTap,
        textColor: AppColors.white,
      ),
    );
  }

  Widget successTitle() {
    return Text(
      "Successful!",
      style: AppTextStyles.header.copyWith(
        color: AppColors.white,
      ),
    );
  }

  Widget successMessage() {
    double amount = double.parse(data.amount);
    return SizedBox(
      width: 340.w,
      child: Text(
        "You purchased ${nairaSymbol()}${amount.toStringAsFixed(2)} worth of electricity units. Copy your token details below, ",
        style: AppTextStyles.subHeader.copyWith(
          color: const Color(0xFFB0F0EA),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget unitsText() {
    return SizedBox(
      width: 260.w,
      child: Text(
        "Units: ${data.units}KWH",
        style: AppTextStyles.subHeader.copyWith(
          color: const Color(0xFFB0F0EA),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget tokenContainer() {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: data.token!)).then((value) {
          if (Platform.isIOS) {
            BlueToast.primaryWithcon("Copied to clipboard");
          }
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFF64CCC2),
            borderRadius: BorderRadius.circular(5)),
        height: 50.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data.token!,
              style: AppTextStyles.subHeader.copyWith(
                color: AppColors.white,
              ),
              textAlign: TextAlign.center,
            ),
            12.horizontalGap,
            AppAssets.images.icons.copyWhite.svg(height: 20)
          ],
        ),
      ),
    );
  }
}
