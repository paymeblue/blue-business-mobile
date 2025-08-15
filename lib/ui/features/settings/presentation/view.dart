import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/settings/widgets/setting_section_container.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SettingsViewModel>(
      model: SettingsViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  avatarButton(() {
                    model.pickImage();
                  }),
                  10.verticalGap,
                  nameText(),
                  walletDataText(),
                  20.verticalGap,
                  logoutButton(model, context),
                  28.verticalGap,
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.only(bottom: 15),
                      itemBuilder: (ctx, i) {
                        return SettingsSectionContainer(
                          section: model.sections(context)[i],
                          isDelete: i == model.sections(context).length - 1,
                        );
                      },
                      itemCount: model.sections(context).length,
                      separatorBuilder: (ctx, i) => 20.verticalGap,
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

  Widget logoutButton(SettingsViewModel model, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: AppButton.ghostPrimary(
        title:
            "Log out ${locator<AppStateValues>().currentUser!.business.name}",
        onTap: () {
          model.startLogout(context);
        },
        textColor: AppColors.error,
      ),
    );
  }

  Widget nameText() {
    return Text(
      locator<AppStateValues>().currentUser!.business.name,
      style: AppTextStyles.header.copyWith(fontSize: 18.sp),
    );
  }

  Widget walletDataText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Blue wallet - ${locator<AppStateValues>().wallet?.walletCode ?? ""}",
          style: AppTextStyles.subText,
        ),
        4.horizontalGap,
        Container(
          height: 22.h,
          width: 22.w,
          padding: const EdgeInsets.all(4),
          child: AppAssets.images.icons.copy.svg(),
        ),
      ],
    );
  }

  Widget avatarButton(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            SizedBox(
              height: 90.h,
              width: 90.w,
              child: Center(
                child: BlueAvatar(
                  radius: 32.sp,
                  imageUrl:
                      locator<AppStateValues>().currentUser!.displayPicture,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 32.h,
                width: 32.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                child: AppAssets.images.icons.cameraWhite.svg(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
