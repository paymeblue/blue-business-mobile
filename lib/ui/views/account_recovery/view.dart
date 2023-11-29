import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/account_recovery/view_model.dart';
import 'package:blue_business/ui/views/settings/view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountRecoveryView extends StatefulWidget {
  const AccountRecoveryView({super.key});

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.accountRecoveryPath,
        key: ValueKey(AppPages.accountRecoveryPath),
        child: const AccountRecoveryView());
  }

  @override
  State<AccountRecoveryView> createState() => _AccountRecoveryViewState();
}

class _AccountRecoveryViewState extends State<AccountRecoveryView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<AccountRecoveryViewModel>(
      model: AccountRecoveryViewModel(),
      onDispose: (p0) {
        Timeout.dispose();
      },
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return GestureDetector(
          onTap: () {
            Timeout.resetTimer();
          },
          onPanDown: (details) {
            Timeout.resetTimer();
          },
          child: Scaffold(
            appBar: BlueAppBar.show(
                onBackTap: () {
                  model.appStateManager.accountRecovery = false;
                  if (!model.appStateManager.dashboard) {
                    model.appStateManager.goToDashboard();
                  }
                },
                leadingIcon: Icons.arrow_back_ios_new),
            body: Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.only(top: 55),
              child: Column(
                children: [
                  const ProfileSectionHeader(
                    title: "CHANGE PHONE NUMBER",
                  ),
                  RecoverySectionOptions(children: [
                    RecoveryListTile(
                      item: SettingsListItem(
                          icon: SvgPicture.asset(AppAssets.recoveryCodeIcon,
                              fit: BoxFit.scaleDown),
                          title: "Recovery code",
                          subtitle:
                              "Generate a set of recovery phrase just in case you lose your phone number",
                          trailing: const SizedBox(),
                          onTap: () {
                            model.method = RecoveryMethod.code;
                            model.showBottomSheet();
                          }),
                    ),
                  ]),
                  const ProfileSectionHeader(
                    title: "RESET PIN",
                  ),
                  RecoverySectionOptions(children: [
                    RecoveryListTile(
                      item: SettingsListItem(
                          icon: SvgPicture.asset(AppAssets.securityQuestionIcon,
                              fit: BoxFit.scaleDown),
                          title: "Security questions",
                          subtitle: "Set security questions to reset PIN",
                          trailing: const SizedBox(),
                          onTap: () {
                            model.method = RecoveryMethod.question;
                            model.showBottomSheet();
                          }),
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  RecoverySectionOptions(children: [
                    RecoveryListTile(
                      item: SettingsListItem(
                          icon: SvgPicture.asset(AppAssets.recoveryPhoneIcon,
                              fit: BoxFit.scaleDown),
                          title: "Recovery Phone",
                          subtitle:
                              "We’ll use this number to recovery your account",
                          trailing: const SizedBox(),
                          onTap: () {
                            model.method = RecoveryMethod.phone;
                            model.showBottomSheet();
                          }),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class RecoverySectionOptions extends StatelessWidget {
  const RecoverySectionOptions({
    super.key,
    required this.children,
  });

  final List<RecoveryListTile> children;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13.5),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(5)),
      child: Column(children: children),
    );
  }
}

class RecoveryListTile extends StatelessWidget {
  final SettingsListItem item;
  const RecoveryListTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: item.onTap,
      leading: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.bgGrey,
        ),
        child: item.icon,
      ),
      title: Text(
        item.title,
        style: AppTextStyles.subHeader.copyWith(color: AppColors.textcolor),
      ),
      subtitle: item.subtitle != null
          ? Text(item.subtitle!,
              style: AppTextStyles.subText
                  .copyWith(fontSize: 13, fontWeight: FontWeight.w400))
          : null,
    );
  }
}
