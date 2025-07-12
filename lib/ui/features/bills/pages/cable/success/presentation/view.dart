import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/bills/cable/vend/data/vend_cable_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/transaction_details/pages/cable_details/widgets/receipt.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

@RoutePage()
class VendCableSuccessView extends StatelessWidget {
  final VendCableData data;
  const VendCableSuccessView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<VendCableSuccessViewModel>(
      model: VendCableSuccessViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return PopScope(
          canPop: false,
          child: Scaffold(
            body: Stack(
              children: [
                if (model.cableDetails != null)
                  Screenshot(
                    controller: model.screenshotController,
                    child: CableReceipt(record: model.cableDetails!),
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
                          model.getTransactionDetails(data);
                        },
                      ),
                      10.verticalGap,
                      doneButton(
                        onTap: () {
                          model.goTohome(context);
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
    NumberFormat format = NumberFormat("#,##0.00");
    return SizedBox(
      width: 340,
      child: Text(
        "You purchased ${data.package} for ${nairaSymbol()}${format.format(double.parse(data.amount.toString()) + 100)}",
        style: AppTextStyles.subHeader.copyWith(
          color: const Color(0xFFB0F0EA),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
