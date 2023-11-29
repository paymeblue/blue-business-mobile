import 'dart:io';

import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/dial_code_text_field.dart';
import 'package:blue_business/ui/widgets/info_container.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'view_model.dart';

class PersonalDetailsView extends StatefulWidget {
  const PersonalDetailsView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.personalInfoPath,
        key: ValueKey(AppPages.personalInfoPath),
        child: const PersonalDetailsView());
  }

  @override
  State<PersonalDetailsView> createState() => _PersonalDetailsViewState();
}

class _PersonalDetailsViewState extends State<PersonalDetailsView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<PersonalDetailsViewModel>(
      model: PersonalDetailsViewModel(),
      onModelReady: (model) async => await model.init(),
      onDispose: (p0) {
        Timeout.dispose();
      },
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
              onBackTap: () {
                model.appStateManager.personalInfo = false;
                model.path = "";
              },
            ),
            body: Container(
              height: size.height - 52,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InfoContainer(
                      text:
                          "You can only make changes to your profile picture"),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: model.pickImage,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          model.path.isNotEmpty
                              ? Container(
                                  height: 62,
                                  width: 62,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.bgGrey,
                                    image: DecorationImage(
                                        image: FileImage(File(model.path)),
                                        fit: BoxFit.cover),
                                  ),
                                )
                              :
                              // model.appStateManager.currentUser!
                              //                 .displayPicture !=
                              //             null &&
                              //         model.appStateManager.currentUser!
                              //             .displayPicture!
                              //             .startsWith("https")
                              //     ? AvatarView(
                              //         radius: 31,
                              //         avatarType: AvatarType.CIRCLE,
                              //         imagePath: model.appStateManager
                              //             .currentUser!.displayPicture!,
                              //         errorWidget: Container(
                              //           width: 62,
                              //           height: 62,
                              //           padding: const EdgeInsets.all(15),
                              //           decoration: BoxDecoration(
                              //               color: AppColors.bgGrey,
                              //               shape: BoxShape.circle),
                              //           child: SvgPicture.asset(
                              //             AppAssets.userIcon,
                              //             fit: BoxFit.cover,
                              //           ),
                              //         ),
                              //         placeHolder: Container(
                              //           width: 62,
                              //           height: 62,
                              //           padding: const EdgeInsets.all(15),
                              //           decoration: BoxDecoration(
                              //               color: AppColors.bgGrey,
                              //               shape: BoxShape.circle),
                              //           child: SvgPicture.asset(
                              //             AppAssets.userIcon,
                              //             fit: BoxFit.cover,
                              //           ),
                              //         ),
                              //       ):
                              Container(
                                  width: 62,
                                  height: 62,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: AppColors.bgGrey,
                                      shape: BoxShape.circle),
                                  child: SvgPicture.asset(
                                    AppAssets.userIcon,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                          const SizedBox(width: 13),
                          Text(
                            "Tap to change",
                            style: AppTextStyles.largeButtonText
                                .copyWith(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextFieldHeader(title: "First name"),
                  const CustomTextField(
                    hintText: "First name",
                    initialValue: "Semira",
                    readOnly: true,
                    isDisabled: true,
                  ),
                  const SizedBox(height: 10),
                  const TextFieldHeader(title: "Middle name", isOptional: true),
                  const CustomTextField(
                    hintText: "Middle name",
                    initialValue: "Alomo",
                    readOnly: true,
                    isDisabled: true,
                  ),
                  const SizedBox(height: 10),
                  const TextFieldHeader(title: "Last name"),
                  const CustomTextField(
                    hintText: "Last name",
                    initialValue: "Yesufu",
                    readOnly: true,
                    isDisabled: true,
                  ),
                  const SizedBox(height: 10),
                  const TextFieldHeader(title: "Phone number"),
                  PhoneNumberWithDialCodeTextField(
                    initialValue: "+2341234567890".replaceFirst("+234", ""),
                    isEnabled: false,
                  ),
                  const Spacer(),
                  Center(
                    child: AppButton(
                        onTap: () {
                          model.uploadImage(context);
                        },
                        isActive: model.path.isNotEmpty,
                        buttonText: "Save changes"),
                  ),
                  const SizedBox(height: 35)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
