import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/models/user.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:blue_business/utils/app_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

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
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return SafeArea(
            child: GestureDetector(
              onTap: () {
                Timeout.resetTimer();
              },
              onPanDown: (details) {
                Timeout.resetTimer();
              },
              child: Scaffold(
                body: SizedBox(
                  height: model.size.height,
                  width: model.size.width,
                  child: Column(
                    children: [
                      ProfileHeader(
                        user: User(id: 0, phone: "0011223344"),
                        onImageTap: () => model.pickImage(context),
                        onLogoutTap: () => model.showLogoutDialog(context),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const ProfileSectionHeader(
                                title: "IDENTITY AND KYC UPDATES",
                              ),
                              SectionOptions(children: [
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(AppAssets.kycIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Account Upgrade",
                                      subtitle: "Increase your Account Limit",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: model.goToUpdateKyc),
                                ),
                              ]),
                              const ProfileSectionHeader(
                                title: "PROFILE SETTINGS",
                              ),
                              SectionOptions(children: [
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.editInfoIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Personal details",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: model.goToPersonalDetails),
                                ),
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.recoverAccountIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Account recovery",
                                      subtitle: "Recovery your account anytime",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: model.goToAccountRecovery),
                                ),
                              ]),
                              const ProfileSectionHeader(
                                title: "FINANCES AND CONTACT",
                              ),
                              SectionOptions(children: [
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.virtualBankIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Withdrawal bank",
                                      subtitle:
                                          "Link your personal bank account to make easy withdrawals",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: () {
                                        model.appStateManager.addPayoutAccount =
                                            true;
                                      }),
                                ),
                                // if (model.appStateManager.currentUser!
                                //         .walletData!.accountNumber.isNotEmpty &&
                                //     model.appStateManager.currentUser!
                                //         .walletData!.bankName.isNotEmpty)
                                //   SettingsListTile(
                                //     item: SettingsListItem(
                                //         icon: SvgPicture.asset(
                                //             AppAssets.fundWalletIcon,
                                //             fit: BoxFit.scaleDown),
                                //         title: "Fund your wallet",
                                //         trailing: Icon(
                                //           Icons.arrow_forward_ios,
                                //           color: AppColors.textcolor,
                                //           size: 18,
                                //         ),
                                //         onTap: () {
                                //           model.appStateManager.fundWallet =
                                //               true;
                                //         }),
                                //   ),
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.beneficiariesIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Manage your beneficiaries",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: () {
                                        model.appStateManager.beneficiaries =
                                            true;
                                      }),
                                ),
                              ]),
                              const ProfileSectionHeader(
                                title: "SECURITY SETTINGS",
                              ),
                              SectionOptions(children: [
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.notificationIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Notifications",
                                      subtitle:
                                          "Enable or disable notifications",
                                      trailing: Transform.scale(
                                        scale: .65,
                                        child: Consumer<AuthStateManager>(
                                            builder: (context, auth, _) {
                                          return CupertinoSwitch(
                                              // value: auth.enableNotifications,
                                              value: true,
                                              activeColor:
                                                  AppColors.primaryColor,
                                              trackColor: AppColors.midGrey,
                                              thumbColor: AppColors.white,
                                              onChanged: (value) {
                                                // model
                                                //     .onNotificationValueChanged(
                                                //         value, context);
                                              });
                                        }),
                                      ),
                                      onTap: () {}),
                                ),
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.faceIdIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Biometrics",
                                      subtitle: "Enable or disable biometrics",
                                      trailing: Transform.scale(
                                        scale: .65,
                                        child: CupertinoSwitch(
                                            value: model.useBiometrics,
                                            activeColor: AppColors.primaryColor,
                                            trackColor: AppColors.midGrey,
                                            thumbColor: AppColors.white,
                                            onChanged:
                                                model.onBiometricsValueChanged),
                                      ),
                                      onTap: () {}),
                                ),
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(AppAssets.pinIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Change PIN",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: () {
                                        // model.authStateManager.newPasscode =
                                        //     true;
                                        // model.appStateManager.changePin = true;
                                      }),
                                ),
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.passwordIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Change Password",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: () {
                                        model.appStateManager.changePass = true;
                                      }),
                                ),
                              ]),
                              const ProfileSectionHeader(
                                title: "HELP AND SUPPORT",
                              ),
                              SectionOptions(children: [
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.supportIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Contact support",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: model.showSupportBottomSheet),
                                ),
                                SettingsListTile(
                                  item: SettingsListItem(
                                      icon: Image.asset(AppAssets.aboutBlueIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "About Blue",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: () {
                                        model.openAbout(context);
                                      }),
                                ),
                              ]),
                              ProfileSectionHeader(
                                title: "DANGER ZONE!",
                                titleColor: AppColors.error,
                              ),
                              SectionOptions(children: [
                                SettingsListTile(
                                  iconBGColor: AppColors.error.withOpacity(.15),
                                  item: SettingsListItem(
                                      icon: SvgPicture.asset(
                                          AppAssets.deleteIcon,
                                          fit: BoxFit.scaleDown),
                                      title: "Delete Account",
                                      subtitle:
                                          "*Please note: Deleting your account means you permanently lose access to all your data.",
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textcolor,
                                        size: 18,
                                      ),
                                      onTap: () {
                                        // model.getReasons(context);
                                      }),
                                ),
                              ]),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class SectionOptions extends StatelessWidget {
  const SectionOptions({
    super.key,
    required this.children,
  });

  final List<SettingsListTile> children;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 11.5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13.5),
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(5)),
      child: Column(children: children),
    );
  }
}

class SettingsListItem {
  final Widget trailing;
  final Widget icon;
  final String title;
  final String? subtitle;
  final Color? titleColor;
  final VoidCallback onTap;

  SettingsListItem({
    required this.trailing,
    required this.icon,
    required this.title,
    this.subtitle,
    this.titleColor,
    required this.onTap,
  });
}

class SettingsListTile extends StatelessWidget {
  final SettingsListItem item;
  final Color? iconBGColor;
  const SettingsListTile({
    super.key,
    required this.item,
    this.iconBGColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 11.5),
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconBGColor,
              ),
              child: item.icon,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: AppTextStyles.subHeader.copyWith(
                        color: item.titleColor ?? AppColors.textcolor),
                  ),
                  if (item.subtitle != null)
                    Text(item.subtitle!,
                        style: AppTextStyles.subText.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            item.trailing
          ],
        ),
      ),
    );
  }
}

class ProfileSectionHeader extends StatelessWidget {
  const ProfileSectionHeader({super.key, required this.title, this.titleColor});

  final String title;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: AppTextStyles.subText.copyWith(
            fontSize: 13, color: titleColor ?? AppColors.bodyTextcolor),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader(
      {super.key,
      required this.user,
      required this.onImageTap,
      required this.onLogoutTap});

  final User user;
  final VoidCallback onImageTap;
  final VoidCallback onLogoutTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            GestureDetector(
              onTap: onImageTap,
              child: Stack(
                children: [
                  Consumer<AppStateManager>(builder: (context, state, _) {
                    // if (state.currentUser!.displayPicture != null &&
                    //     state.currentUser!.displayPicture!
                    //         .startsWith("https")) {
                    //   return AvatarView(
                    //     radius: 43.75,
                    //     avatarType: AvatarType.CIRCLE,
                    //     imagePath: state.currentUser!.displayPicture!,
                    //     errorWidget: Container(
                    //       width: 87.5,
                    //       height: 87.5,
                    //       padding: const EdgeInsets.all(20),
                    //       decoration: BoxDecoration(
                    //           color: AppColors.bgGrey, shape: BoxShape.circle),
                    //       child: SvgPicture.asset(
                    //         AppAssets.userIcon,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //     placeHolder: Container(
                    //       width: 87.5,
                    //       height: 87.5,
                    //       padding: const EdgeInsets.all(20),
                    //       decoration: BoxDecoration(
                    //           color: AppColors.bgGrey, shape: BoxShape.circle),
                    //       child: SvgPicture.asset(
                    //         AppAssets.userIcon,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //   );
                    // } else {
                    return Container(
                        width: 87.5,
                        height: 87.5,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: AppColors.bgGrey, shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          AppAssets.userIcon,
                          fit: BoxFit.cover,
                        ));
                    // }
                  }),
                  if (user.displayPicture == null)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor),
                        child: SvgPicture.asset(
                          AppAssets.cameraWhiteIcon,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "${user.firstName} ${user.lastName}",
              style: AppTextStyles.header.copyWith(fontSize: 18),
            ),
            GestureDetector(
              onTap: () async {
                await Clipboard.setData(const ClipboardData(text: "ABCD1234FF"))
                    .then((value) {
                  AppToast.show(
                      message: "Copied to clipboard", context: context);
                });
              },
              child: DecoratedBox(
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Blue Wallet - ABCD1234FF",
                      style: AppTextStyles.subHeader,
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.midGrey,
                          )),
                      child: SvgPicture.asset(
                        AppAssets.copyIcon,
                        fit: BoxFit.scaleDown,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: onLogoutTap,
                child: Container(
                  height: 45,
                  width: 245,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(
                        color: AppColors.primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  alignment: Alignment.center,
                  child: Text(
                    "Log out ${user.firstName.toUpperCase()}",
                    style: AppTextStyles.largeButtonText
                        .copyWith(color: AppColors.primaryColor),
                  ),
                )),
          ],
        ));
  }
}

//08112515007
