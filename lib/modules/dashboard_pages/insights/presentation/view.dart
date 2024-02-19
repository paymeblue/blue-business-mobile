import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class InsightsView extends StatefulWidget {
  const InsightsView({super.key});

  @override
  State<InsightsView> createState() => _InsightsViewState();
}

class _InsightsViewState extends State<InsightsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<InsightsViewModel>(
      model: InsightsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          body: SizedBox(
            height: model.size.height,
            width: model.size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                comingSoonImage(),
                24.verticalGap,
                comingSoonText(),
                3.verticalGap,
                comingSoonSubtext(),
              ],
            ),
          ),
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
