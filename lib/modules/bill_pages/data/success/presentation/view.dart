import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/bills/data/vend/data/vend_data_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/transaction_details/pages/data_details/widgets/receipt.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

class VendDataSuccessView extends StatefulWidget {
  final VendDataData data;
  const VendDataSuccessView({super.key, required this.data});

  @override
  State<VendDataSuccessView> createState() => _VendDataSuccessViewState();
}

class _VendDataSuccessViewState extends State<VendDataSuccessView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<VendDataSuccessViewModel>(
      model: VendDataSuccessViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          body: Stack(
            children: [
              if (model.dataDetails != null)
                Screenshot(
                  controller: model.screenshotController,
                  child: DataReceipt(record: model.dataDetails!),
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
        "You purchased ${widget.data.package} for ${nairaSymbol()}${format.format(widget.data.amount.toDouble())}",
        style: AppTextStyles.subHeader.copyWith(
          color: const Color(0xFFB0F0EA),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
