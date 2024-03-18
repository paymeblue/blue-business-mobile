import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class OfflinePaymentView extends StatefulWidget {
  const OfflinePaymentView({super.key});

  @override
  State<OfflinePaymentView> createState() => _OfflinePaymentViewState();
}

class _OfflinePaymentViewState extends State<OfflinePaymentView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<OfflinePaymentViewModel>(
      model: OfflinePaymentViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            comingSoonImage(),
            24.verticalGap,
            comingSoonText(),
            3.verticalGap,
            comingSoonSubtext(),
          ],
        );
      },
    );
  }

  Widget comingSoonSubtext() {
    return SizedBox(
      width: 265,
      child: Text(
        "Easily pay for your airtime, internet, and electricity bills with Blue.",
        style: AppTextStyles.subHeader,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget comingSoonText() {
    return Text(
      "Coming soon",
      style: AppTextStyles.header,
    );
  }

  Widget comingSoonImage() {
    return Container(
      height: 170,
      width: 170,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 44),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.bgGrey,
      ),
      child: AppAssets.images.icons.comingSoon.svg(),
    );
  }
}
