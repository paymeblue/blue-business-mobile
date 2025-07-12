import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/settings_option/section_option.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class BillsView extends StatefulWidget {
  const BillsView({super.key});

  @override
  State<BillsView> createState() => _BillsViewState();
}

class _BillsViewState extends State<BillsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BillsViewModel>(
      model: BillsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                Text(
                  "Internet & Bills",
                  style: AppTextStyles.header
                      .copyWith(fontWeight: FontWeight.w500, fontSize: 20.sp),
                ),
                20.verticalGap,
                Expanded(
                    child: ListView.separated(
                  itemBuilder: (context, i) {
                    return Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        onTap: model.billOptions(context)[i].onTap,
                        splashColor: AppColors.brightBlue.withOpacityValue(.3),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 17, vertical: 15),
                          decoration: BoxDecoration(
                            color: AppColors.inputField,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 42,
                                width: 42,
                                child: model.billOptions(context)[i].icon,
                              ),
                              10.horizontalGap,
                              Expanded(
                                child: billTextColumn(
                                    model.billOptions(context)[i]),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, i) => 18.verticalGap,
                  itemCount: model.billOptions(context).length,
                ))
              ],
            ),
          ),
        );
      },
    );
  }

  Widget billTextColumn(SectionOption option) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          option.title,
          style: AppTextStyles.header
              .copyWith(fontWeight: FontWeight.w500, fontSize: 15.sp),
        ),
        Text(
          option.subtitle!,
          style:
              AppTextStyles.smallText.copyWith(color: AppColors.bodyTextColor),
        ),
      ],
    );
  }
}
