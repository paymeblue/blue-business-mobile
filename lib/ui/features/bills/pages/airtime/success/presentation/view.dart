import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/bills/airtime/vend/data/vend_airtime_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/transaction_details/pages/airtime_details/widgets/receipt.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

class VendAirtimeSuccessView extends StatefulWidget {
  final VendAirtimeData data;
  const VendAirtimeSuccessView({super.key, required this.data});

  @override
  State<VendAirtimeSuccessView> createState() => _VendAirtimeSuccessViewState();
}

class _VendAirtimeSuccessViewState extends State<VendAirtimeSuccessView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<VendAirtimeSuccessViewModel>(
      model: VendAirtimeSuccessViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            body: Stack(
              children: [
                if (model.airtimeDetails != null)
                  Screenshot(
                    controller: model.screenshotController,
                    child: AirtimeReceipt(record: model.airtimeDetails!),
                  ),
                Container(
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
                          model.getTransactionDetails(widget.data);
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
    double amount = double.parse(widget.data.amount);
    return SizedBox(
      width: 340.w,
      child: Text(
        "You purchased ${nairaSymbol()}${amount.toStringAsFixed(2)} worth of airtime.",
        style: AppTextStyles.subHeader.copyWith(
          color: const Color(0xFFB0F0EA),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
