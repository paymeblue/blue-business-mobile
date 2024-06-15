import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class WalletView extends StatefulWidget {
  const WalletView({super.key});

  @override
  State<WalletView> createState() => _WalletViewState();
}

class _WalletViewState extends State<WalletView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<WalletViewModel>(
      model: WalletViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new_rounded,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: [
                Center(child: title()),
                20.verticalGap,
                paymOptionContainer(
                    icon: const RotatedBox(
                      quarterTurns: 4,
                      child: Icon(
                        Icons.arrow_outward_rounded,
                        color: AppColors.white,
                        size: 18,
                      ),
                    ),
                    title: "Transfer",
                    subtitle:
                        "Send money to others via QR Code, phone number, and Blue to Blue pay",
                    onTap: () => model.goToInitiatePayment(context),
                    heading: "TRANSFER FUNDS"),
                25.verticalGap,
                paymOptionContainer(
                    icon: Container(
                      height: 2,
                      width: 12,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(1)),
                    ),
                    title: "Withdraw funds",
                    subtitle:
                        "Easily withdraw funds from your blue wallet to your desired bank account.",
                    onTap: () => model.goToInitiateWithdrawal(context),
                    heading: "WITHDRAW FUNDS"),
                25.verticalGap,
                paymOptionContainer(
                    icon: AppAssets.images.icons.bills.svg(),
                    title: "Internet & Bills",
                    subtitle:
                        "Pay for your airtime, internet, transportation and electricity with Blue.",
                    onTap: () => model.goToBills(context),
                    heading: "AIRTIME AND BILLS"),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget paymOptionContainer({
    required Widget icon,
    required String title,
    required String heading,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style:
              AppTextStyles.smallText.copyWith(color: AppColors.bodyTextColor),
        ),
        8.verticalGap,
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.bgGrey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primary),
                  alignment: Alignment.center,
                  child: icon,
                ),
                10.horizontalGap,
                Expanded(child: textColumn(title: title, subtitle: subtitle)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget textColumn({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        Text(
          subtitle,
          style: AppTextStyles.smallText.copyWith(
              color: AppColors.bodyTextColor, fontSize: 14.5, height: 1.2),
        )
      ],
    );
  }

  Widget title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Text(
        "Wallets",
        style: AppTextStyles.header
            .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }
}
