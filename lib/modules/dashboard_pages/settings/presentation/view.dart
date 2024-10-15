import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/modules/dashboard_pages/settings/widgets/setting_section_container.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

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
            body: Container(
              height: model.size.height,
              width: model.size.width,
              color: AppColors.white,
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
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: AppButton.ghostPrimary(
        title:
            "Log out ${locator<AppStateValues>().currentUser!.business.name}",
        // ${locator<AppStateValues>().currentUser!.firstName.toUpperCase()}",
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
          height: 22,
          width: 22,
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
            const SizedBox(
              height: 90,
              width: 90,
              child: Center(
                child: BlueAvatar(
                  radius: 32,
                  // imageUrl: locator<AppStateValues>().currentUser!.displayPic,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 32,
                width: 32,
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
