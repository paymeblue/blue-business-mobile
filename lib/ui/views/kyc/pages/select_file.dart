import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'view_model.dart';

class SelectFileView extends StatefulWidget {
  const SelectFileView({super.key});

  @override
  State<SelectFileView> createState() => _SelectFileViewState();
}

class _SelectFileViewState extends State<SelectFileView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<UpdateKycPagesViewModel>(
      model: UpdateKycPagesViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upload Document 📷",
                      style: AppTextStyles.header,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Take a clear image of the document you selected and take the front and back of it.",
                      style: AppTextStyles.subHeader.copyWith(fontSize: 15),
                    ),
                    const SizedBox(height: 28),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(5),
                      dashPattern: const [9, 5],
                      color: AppColors.primaryColor,
                      strokeWidth: 2,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: GestureDetector(
                          onTap: model.pickIdFront,
                          child: Container(
                              height: 145,
                              width: size.width,
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                              ),
                              padding: const EdgeInsets.only(top: 28),
                              child: Column(
                                children: [
                                  model.frontPath.isNotEmpty
                                      ? Icon(
                                          Icons.check_circle_outline_rounded,
                                          size: 32,
                                          color: AppColors.primaryColor,
                                        )
                                      : SvgPicture.asset(AppAssets.exportIcon),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Front side of the document",
                                    style: AppTextStyles.subHeader.copyWith(
                                      fontSize: 17,
                                      color: AppColors.textcolor,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  model.frontPath.isEmpty
                                      ? Text(
                                          "Upload the front side of the document\nSupports: JPG, PNG, PDF (Max. 10MB)",
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.subText.copyWith(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        )
                                      : Flexible(
                                          child: Text(
                                            "${XFile(model.frontPath).name} selected!",
                                            textAlign: TextAlign.center,
                                            style: AppTextStyles.subText
                                                .copyWith(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
                                        )
                                ],
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(5),
                      dashPattern: const [9, 5],
                      color: AppColors.primaryColor,
                      strokeWidth: 2,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: GestureDetector(
                          onTap: model.pickIdBack,
                          child: Container(
                              height: 145,
                              width: size.width,
                              decoration: BoxDecoration(
                                color: AppColors.grey,
                              ),
                              padding: const EdgeInsets.only(top: 28),
                              child: Column(
                                children: [
                                  model.backPath.isNotEmpty
                                      ? Icon(
                                          Icons.check_circle_outline_rounded,
                                          size: 32,
                                          color: AppColors.primaryColor,
                                        )
                                      : SvgPicture.asset(AppAssets.exportIcon),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Back side of the document",
                                    style: AppTextStyles.subHeader.copyWith(
                                      fontSize: 17,
                                      color: AppColors.textcolor,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  model.backPath.isEmpty
                                      ? Text(
                                          "Upload the back side of the document\nSupports: JPG, PNG, PDF (Max. 10MB)",
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.subText.copyWith(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Text(
                                            "${XFile(model.backPath).name} selected!",
                                            textAlign: TextAlign.center,
                                            style: AppTextStyles.subText
                                                .copyWith(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                          ),
                                        )
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppButton(
              onTap: () {
                model.uploadDocuments(context);
              },
              buttonText: "Continue",
              isActive: model.frontPath.isNotEmpty && model.backPath.isNotEmpty,
            )
          ],
        );
      },
    );
  }
}
