import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class UpdateKycView extends StatefulWidget {
  const UpdateKycView({super.key});

  @override
  State<UpdateKycView> createState() => _UpdateKycViewState();
}

class _UpdateKycViewState extends State<UpdateKycView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<UpdateKycViewModel>(
      model: UpdateKycViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Stack(
          children: [
            Scaffold(
              appBar: BlueAppBar.primary(
                onBackTap: () {
                  model.goBack(context);
                },
              ),
              body: kycBody(model, context),
            ),
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: kycStamp(),
            ),
          ],
        );
      },
    );
  }

  Widget kycBody(UpdateKycViewModel model, BuildContext context) {
    return Container(
      height: model.size.height,
      width: model.size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ...levelTextcolumn(model, "intermediate"),
                25.verticalGap,
                benefitsContainer(model, "intermediate"),
                40.verticalGap,
                ...levelTextcolumn(model, "pro"),
                25.verticalGap,
                benefitsContainer(model, "pro")
              ],
            ),
          ),
          AppButton.primary(
            title: "Start upgrade",
            isEnabled: model.stateValues.kycLevel != "pro",
            onTap: () {
              if (model.stateValues.kycLevel == "basic") {
                model.goToBasicKycWeb(context);
              } else {
                model.goToProKycWeb(context);
              }
            },
          )
        ],
      ),
    );
  }

  Widget benefitsContainer(UpdateKycViewModel model, String level) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        color: AppColors.inputField,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Requirements",
            style: AppTextStyles.subHeader.copyWith(
              fontSize: 15.sp,
              color: AppColors.textColor,
            ),
          ),
          15.verticalGap,
          ...List.generate(
            level == "intermediate"
                ? model.basicRequirements.length
                : model.proRequirements.length,
            (index) => bulletItem(level == "intermediate"
                ? model.basicRequirements[index]
                : model.proRequirements[index]),
          ),
          15.verticalGap,
          Text(
            "Benefits",
            style: AppTextStyles.subHeader.copyWith(
              fontSize: 15.sp,
              color: AppColors.textColor,
            ),
          ),
          15.verticalGap,
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "• Daily Transfer Limit | ",
                    style: AppTextStyles.smallText.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.bodyTextColor,
                    )),
                TextSpan(
                    text:
                        level == "intermediate" ? "₦5,000,000.00" : "No limit",
                    style: AppTextStyles.header.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.primary,
                    )),
              ]),
            ),
          )
        ],
      ),
    );
  }

  Widget bulletItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        "• $text",
        style: AppTextStyles.smallText
            .copyWith(fontSize: 15.sp, color: AppColors.bodyTextColor),
      ),
    );
  }

  List<Widget> levelTextcolumn(UpdateKycViewModel model, String level) {
    return [
      Text(
        "KYC Tier ${level == "intermediate" ? "1" : "2"}",
        style: AppTextStyles.header.copyWith(fontSize: 15.sp),
      ),
      Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: level == "intermediate"
                  ? AppColors.interMediateBg
                  : AppColors.proBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              level == "intermediate" ? "Intermediate" : "Pro wallet",
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
          10.horizontalGap,
          if (model.stateValues.kycLevel == level ||
              model.stateValues.kycLevel == "pro") ...[
            AppAssets.images.icons.kycGrey.svg(),
            4.horizontalGap,
            Text(
              "Verified",
              style: AppTextStyles.smallText.copyWith(
                color: AppColors.textColor,
              ),
            )
          ]
        ],
      ),
      Text(
        level == "intermediate"
            ? "Verify your identity as an Individual"
            : "Verify your business identity",
        style: AppTextStyles.smallText.copyWith(
          color: AppColors.bodyTextColor2,
        ),
      ),
    ];
  }

  Widget kycStamp() {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primary.withOpacity(.2),
      ),
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primary,
        ),
        padding: const EdgeInsets.all(10),
        child: AppAssets.images.icons.kycOutline.svg(),
      ),
    );
  }
}
