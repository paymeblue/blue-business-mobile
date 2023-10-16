import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/register_business/view_model.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class EnterBrandingView extends StatefulWidget {
  const EnterBrandingView({super.key});

  @override
  State<EnterBrandingView> createState() => _EnterBrandingViewState();
}

class _EnterBrandingViewState extends State<EnterBrandingView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterBusinessViewModel>(builder: (context, model, _) {
      return Form(
        key: model.formKeys[model.authStateManager.registerBusinessIndex],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Business size & branding",
              style: AppTextStyles.header,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                "Please provide details of your business by filling the information below. ",
                style: AppTextStyles.subHeader,
              ),
            ),
            const SizedBox(height: 30),
            const TextFieldHeader(title: "Business staff size"),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.grey),
              child: Column(
                children: List.generate(
                    model.sizes.length,
                    (index) => Row(
                          children: [
                            Radio(
                              visualDensity: const VisualDensity(
                                  horizontal: .4, vertical: .4),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              value: model.sizes[index],
                              groupValue: model.selectedSize,
                              onChanged: (v) {
                                model.selectedSize = v ?? "";
                                model.setActive();
                              },
                              activeColor: AppColors.primaryColor,
                            ),
                            Text(
                              model.sizes[index],
                              style: AppTextStyles.subText
                                  .copyWith(color: AppColors.bodyTextcolor2),
                            )
                          ],
                        )),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const TextFieldHeader(
              title: "Business logo",
              isOptional: true,
            ),
            const SizedBox(
              height: 8,
            ),
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(5),
              dashPattern: const [8, 5],
              color: AppColors.primaryColor,
              strokeWidth: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 145,
                      width: model.size.width,
                      decoration: BoxDecoration(
                        color: AppColors.grey,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppAssets.exportIcon),
                          const SizedBox(height: 10),
                          Text(
                            "Tap to upload document",
                            style: AppTextStyles.subHeader.copyWith(
                              fontSize: 17,
                              color: AppColors.textcolor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Supports: JPG, PNG, PDF (Max. 10MB)",
                            textAlign: TextAlign.center,
                            style: AppTextStyles.subText.copyWith(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
