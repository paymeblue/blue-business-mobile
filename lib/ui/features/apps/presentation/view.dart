import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/apps/widgets/apps_section_container.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class AppsView extends StatefulWidget {
  const AppsView({super.key});

  @override
  State<AppsView> createState() => _AppsViewState();
}

class _AppsViewState extends State<AppsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AppsViewModel>(
      model: AppsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return SafeArea(
          child: Scaffold(
            appBar: BlueAppBar.primary(
              leading: 0.horizontalGap,
              title: Text(
                "Mini Apps",
                style: AppTextStyles.semiLargeHeader
                    .copyWith(fontSize: 20.sp, color: AppColors.primary),
              ),
            ),
            body: Container(
              height: model.size.height,
              width: model.size.width,
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 22),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.only(bottom: 15),
                      itemBuilder: (ctx, i) {
                        return AppsSectionContainer(
                          option: model.options()[i],
                        );
                      },
                      itemCount: model.options().length,
                      separatorBuilder: (ctx, i) => 8.verticalGap,
                    ),
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
