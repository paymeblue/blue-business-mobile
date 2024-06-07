import 'dart:io';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/timed_refresh.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/delete_account/get_reasons/reason/reason.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/dashboard_pages/settings/models/settings_option/settings_option.dart';
import 'package:blue_business/modules/dashboard_pages/settings/models/settings_section/settings_section.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    notificationStatus =
        locator<AppStateValues>().currentUser!.notificationStatus == 1;
    useBiometrics = StorageValues.enableBiometrics == "true";
  }

  bool _useBiometrics = false;
  bool get useBiometrics => _useBiometrics;
  set useBiometrics(bool v) {
    _useBiometrics = v;
    notifyListeners();
  }

  bool _notificationStatus = false;
  bool get notificationStatus => _notificationStatus;
  set notificationStatus(bool v) {
    _notificationStatus = v;
    notifyListeners();
  }

  setBiometricsValue(bool v) {
    if (v) {
      allowBiometrics();
    } else {
      denyBiometrics();
    }
  }

  pickImage() async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);

      if (result != null) {
        File file = File(result.files.single.path!);
        await uploadImage(file);
      } else {
        AppNotification.error(message: "No image selected");
      }
    } catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
    }
  }

  uploadImage(File file) async {}

  goToChangePassword(BuildContext context) {
    context.go(RoutePaths.changePasswordPath);
  }

  denyBiometrics() async {
    await StorageHelpers.setVal(
        StorageKeys.hasRequestedBiometricsKey, true.toString());
    await StorageHelpers.setVal(
        StorageKeys.enableBiometricsKey, false.toString());

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "false";

    useBiometrics = false;
  }

  allowBiometrics() async {
    await StorageHelpers.setVal(
        StorageKeys.hasRequestedBiometricsKey, true.toString());
    await StorageHelpers.setVal(
        StorageKeys.enableBiometricsKey, true.toString());

    StorageValues.hasRequestedBiometrics = "true";
    StorageValues.enableBiometrics = "true";

    useBiometrics = true;
  }

  goToChangePin(BuildContext context) {
    context.go(RoutePaths.changePinPath);
  }

  List<SettingsSection> sections(BuildContext context) => [
        SettingsSection(
          sectionTitle: "IDENTITY VERIFICATION",
          options: identityOption(context),
        ),
        SettingsSection(
          sectionTitle: "PROFILE SETTINGS",
          options: profileOption(context),
        ),
        SettingsSection(
          sectionTitle: "STAFF MANAGEMENT",
          options: staffManagementOption(context),
        ),
        SettingsSection(
          sectionTitle: "FINANCES AND CONTACT",
          options: financeOption(context),
        ),
        SettingsSection(
          sectionTitle: "SECURITY SETTINGS",
          options: securityOption(context),
        ),
        SettingsSection(
          sectionTitle: "HELP AND SUPPORT",
          options: supportOptions(),
        ),
        SettingsSection(
          sectionTitle: "DANGER ZONE!",
          options: dangerOption(context),
        )
      ];

  getReasons(BuildContext context) async {}

  deleteAccount(Reason reason, BuildContext context) async {}

  startLogout(BuildContext context) async {
    BlueDialog.primary(
      title: "Logout",
      subtitle: "Are you sure you want to logout",
      onDelete: () async {
        await logout(context, true);
      },
      confirmText: "Confirm",
    );
  }

  logout(BuildContext context, [bool logout = false]) async {
    AppLoader.start();

    if (context.mounted) {
      context.go(RoutePaths.loginPath);
    }
    locator<AppStateValues>().notificationState = NotificationState.success;
    RefreshTimer().cancelTimer();

    AppLoader.stop();
  }

  List<SettingsOption> identityOption(BuildContext context) => [
        SettingsOption(
            icon: AppAssets.images.icons.kyc.svg(),
            title: "Account upgrade",
            onTap: () async {
              await getKyc();
              if (context.mounted) context.go(RoutePaths.updateKycPath);
            },
            subtitle: "Increase your account limit"),
      ];

  List<SettingsOption> staffManagementOption(BuildContext context) => [
        SettingsOption(
          icon: AppAssets.images.icons.staffManagement.svg(),
          title: "Manage business branch",
          subtitle: "Track and monitor your business branches.",
          onTap: () {
            context.go(RoutePaths.branchManagementPath);
          },
        ),
        SettingsOption(
          icon: AppAssets.images.icons.staffManagement.svg(),
          title: "Manage your team",
          subtitle: "Invite staff, set roles and access",
          onTap: () {
            goToStaffManagementHome(context);
          },
        ),
      ];

  List<SettingsOption> profileOption(BuildContext context) => [
        SettingsOption(
          icon: AppAssets.images.icons.editInfo.svg(),
          title: "Personal info",
          onTap: () {
            goToPersonalInfo(context);
          },
        ),
        SettingsOption(
          icon: AppAssets.images.icons.recoverAccount.svg(),
          title: "Account recovery",
          subtitle: "Recovery your account anytime",
          onTap: () {
            goToAccountRecovery(context);
          },
        ),
      ];

  List<SettingsOption> financeOption(BuildContext context) => [
        SettingsOption(
          icon: AppAssets.images.icons.virtualBank.svg(),
          title: "Withdrawal bank",
          subtitle: "Link your personal bank account to make easy withdrawals",
          onTap: () {
            if (locator<AppStateValues>().withdrawalAccount == null) {
              getWithdrawalAccount(context);
            } else {
              goToWithdrawalBank(context);
            }
          },
        ),
        SettingsOption(
          icon: AppAssets.images.icons.beneficiaries.svg(),
          title: "Manage your beneficiaries",
          onTap: () {
            goToManageBeneficiaries(context);
          },
        ),
        SettingsOption(
          icon: AppAssets.images.icons.paymentLink.svg(),
          title: "Payment link history",
          onTap: () {
            goToPaymentLinkHistory(context);
          },
        ),
      ];

  List<SettingsOption> securityOption(BuildContext context) => [
        SettingsOption(
          icon: AppAssets.images.icons.notifications.svg(),
          title: "Notifications",
          subtitle: 'Enable or disable notifications',
          trailing: SizedBox(
            height: 20,
            width: 36,
            child: Transform.scale(
              scale: .5,
              child: CupertinoSwitch(
                value: notificationStatus,
                activeColor: AppColors.primary,
                trackColor: AppColors.midGrey,
                onChanged: toggleNotifications,
              ),
            ),
          ),
        ),
        SettingsOption(
          icon: AppAssets.images.icons.biometrics.svg(),
          title: "Biometrics",
          subtitle: "Enable or disable biometrics",
          trailing: SizedBox(
            height: 20,
            width: 36,
            child: Transform.scale(
              scale: .5,
              child: CupertinoSwitch(
                value: useBiometrics,
                activeColor: AppColors.primary,
                trackColor: AppColors.midGrey,
                onChanged: setBiometricsValue,
              ),
            ),
          ),
        ),
        SettingsOption(
          icon: AppAssets.images.icons.pin.svg(),
          title: "Change PIN",
          onTap: () {
            goToChangePin(context);
          },
        ),
        SettingsOption(
          icon: AppAssets.images.icons.password.svg(),
          title: "Change password",
          onTap: () {
            goToChangePassword(context);
          },
        ),
      ];

  List<SettingsOption> supportOptions() => [
        SettingsOption(
          icon: AppAssets.images.icons.support.svg(),
          title: "Contact support",
          onTap: BlueBottomSheet.support,
        ),
        SettingsOption(
          icon: Container(
            height: 38,
            width: 38,
            decoration: const BoxDecoration(
                color: AppColors.midGrey, shape: BoxShape.circle),
            padding: const EdgeInsets.all(10.5),
            child: AppAssets.images.logos.blueBgLogo.image(),
          ),
          title: "About Blue",
          onTap: goToBlueWeb,
        ),
      ];

  List<SettingsOption> dangerOption(BuildContext context) => [
        SettingsOption(
          icon: Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: AppColors.error.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(10.5),
            child: AppAssets.images.icons.delete.svg(),
          ),
          title: "Delete Account",
          onTap: () {
            getReasons(context);
          },
          subtitle:
              "*Please note: Deleting your account means you might permanently lose access to your data",
        ),
      ];

  toggleNotifications(bool v) async {}

  goToManageBeneficiaries(BuildContext context) {
    context.go(RoutePaths.manageBeneficiaryPath);
  }

  goToStaffManagementHome(BuildContext context) {
    context.go(RoutePaths.staffManagementPath);
  }

  goToBlueWeb() async {
    Uri url = Uri.parse("https://paymeblue.com");

    await launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  getKyc() async {}

  Future getWithdrawalAccount(BuildContext context) async {}

  goToPaymentLinkHistory(BuildContext context) {
    context.go(RoutePaths.paymentLinkPath);
  }

  goToPersonalInfo(BuildContext context) {
    context.go(RoutePaths.viewPersonalInfoPath);
  }

  goToWithdrawalBank(BuildContext context) {
    context.go(RoutePaths.addWithdrawalBankPath);
  }

  goToAccountRecovery(BuildContext context) {
    context.go("${RoutePaths.accountRecoveryPath}/");
  }
}
