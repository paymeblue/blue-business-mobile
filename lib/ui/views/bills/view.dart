import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'view_model.dart';

class BillsHomeView extends StatefulWidget {
  final VoidCallback onBackTap;
  const BillsHomeView({super.key, required this.onBackTap});

  @override
  State<BillsHomeView> createState() => _BillsHomeViewState();
}

class _BillsHomeViewState extends State<BillsHomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BillsHomeViewModel>(
      model: BillsHomeViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () {
            Timeout.resetTimer();
          },
          onPanDown: (details) {
            Timeout.resetTimer();
          },
          child: Scaffold(
            appBar: BlueAppBar.show(
              leadingIcon: Icons.arrow_back_ios_new,
              onBackTap: widget.onBackTap,
            ),
            body: Container(
              height: model.size.height,
              width: model.size.width,
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 44),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.bgGrey),
                    child: SvgPicture.asset(AppAssets.comingSoonIcon),
                  ),
                  const SizedBox(height: 35),
                  Text(
                    "Coming Soon",
                    style: AppTextStyles.header,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Easily pay for your airtime, internet, and electricity bills with Blue.",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.subHeader.copyWith(
                        color: AppColors.bodyTextcolor2,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
