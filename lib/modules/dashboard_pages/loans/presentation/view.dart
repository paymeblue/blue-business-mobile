import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class LoansView extends StatefulWidget {
  const LoansView({super.key});

  @override
  State<LoansView> createState() => _LoansViewState();
}

class _LoansViewState extends State<LoansView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoansViewModel>(
      model: LoansViewModel(),
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
        "Quick and easily access loans whenever you need it, without stress or hassle.",
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
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: AppAssets.images.icons.loansComingSoon.svg(),
    );
  }
}
