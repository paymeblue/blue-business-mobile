import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'view_model.dart';

class ComingSoonView extends StatefulWidget {
  const ComingSoonView({super.key});

  @override
  State<ComingSoonView> createState() => _ComingSoonViewState();
}

class _ComingSoonViewState extends State<ComingSoonView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TransactionErrorViewModel>(
        model: TransactionErrorViewModel(),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: () {
                context.pop();
              },
              icon: Icons.arrow_back_ios_new,
            ),
            body: Container(
              width: context.getWidth(),
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  comingSoonImage(),
                  12.verticalGap,
                  Text(
                    "Coming Soon",
                    style: AppTextStyles.semiLargeHeader,
                  ),
                  8.verticalGap,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "This feature is currently in the works",
                      style: AppTextStyles.subText
                          .copyWith(fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget comingSoonImage() {
    return Container(
      height: 60.dm,
      width: 60.dm,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: AppAssets.images.icons.loansComingSoon.svg(),
    );
  }
}
