import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class AddSizeView extends StatefulWidget {
  final int id;
  const AddSizeView({super.key, required this.id});

  @override
  State<AddSizeView> createState() => _AddSizeViewState();
}

class _AddSizeViewState extends State<AddSizeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<AddBusinessSizeViewModel>(
        model: AddBusinessSizeViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView(
                children: [
                  ...titleAndSubtitle(),
                  50.verticalGap,
                  textFieldHeader("Business staff size"),
                  sizes(model),
                  20.verticalGap,
                  textFieldHeader("Business logo", true),
                  8.verticalGap,
                  imageBox(model),
                ],
              )),
              AppButton.primary(
                title: "Continue",
                isEnabled: model.selectedSize.isNotEmpty,
                onTap: () {
                  model.sendSize(context, widget.id);
                },
              )
            ],
          );
        });
  }

  Widget textFieldHeader(String title, [bool isOptional = false]) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: title,
        style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
      ),
      if (isOptional)
        TextSpan(
            text: " (Optional)",
            style: AppTextStyles.subHeader
                .copyWith(fontWeight: FontWeight.w400, fontSize: 13.5))
    ]));
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Business size & branding",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350,
        child: Text(
          "Please provide details of your business by filling the information below. ",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }

  Widget sizes(AddBusinessSizeViewModel model) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: AppColors.grey),
      child: Column(
        children: List.generate(
          model.sizes.length,
          (index) => Row(
            children: [
              Radio(
                visualDensity:
                    const VisualDensity(horizontal: .4, vertical: .4),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: model.sizes[index],
                groupValue: model.selectedSize,
                onChanged: (v) {
                  model.selectedSize = v ?? "";
                },
                activeColor: AppColors.primary,
              ),
              Text(
                model.sizes[index],
                style: AppTextStyles.subText.copyWith(
                  color: AppColors.bodyTextColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget imageBox(AddBusinessSizeViewModel model) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(5),
      dashPattern: const [8, 5],
      color: AppColors.primary,
      strokeWidth: 1.5,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: GestureDetector(
          onTap: () {},
          child: Container(
              height: 145,
              width: model.size.width,
              decoration: const BoxDecoration(
                color: AppColors.grey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssets.images.icons.export.svg(),
                  const SizedBox(height: 10),
                  Text(
                    "Tap to upload document",
                    style: AppTextStyles.subHeader.copyWith(
                      fontSize: 17,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Supports: JPG, PNG, PDF (Max. 10MB)",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.subText
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
