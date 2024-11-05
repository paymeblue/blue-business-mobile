import 'dart:io';

import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/api/profile_service/profile_service.dart';
import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/delete_account/delete/request/delete_request.dart';
import 'package:blue_business/core/models/delete_account/delete/response/delete_response.dart';
import 'package:blue_business/core/models/delete_account/get_reasons/reason/reason.dart';
import 'package:blue_business/core/models/delete_account/get_reasons/response/get_reason_response.dart';
import 'package:blue_business/core/models/notification/toggle/response/toggle_notification_response.dart';
import 'package:blue_business/core/models/settings_option%20copy/settings_option.dart';
import 'package:blue_business/core/models/settings_section/settings_section.dart';
import 'package:blue_business/core/models/upload_avatar/response/upload_avatar_response.dart';
import 'package:blue_business/core/models/withdrawal_account/get/response/withdrawal_account_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/ui/widgets/modals/dialogs.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    notificationStatus = locator<AppStateValues>().notificationStatus;
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

  uploadImage(File file) async {
    AppLoader.start();

    UploadAvatarResponse resp = await ProfileService()
        .uploadDisplayPicture(file)
        .onError((error, stackTrace) => UploadAvatarResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "upload_display_picture",
                "response_model": "UploadAvatarResponse"
              },
            )));

    if (resp.status == "success") {
      locator<AppStateValues>().currentUser =
          locator<AppStateValues>().currentUser!.copyWith(
                displayPicture: resp.data!.displayPicture,
              );
      notifyListeners();

      AppNotification.success(
          message: "Your profile picture has been updated and is loading.");
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  goToChangePassword(BuildContext context) {
    context.push(RoutePaths.changePassword);
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
    context.push(RoutePaths.changePin);
  }

  List<SettingsSection> sections(BuildContext context) => [
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

  getReasons(BuildContext context) async {
    AppLoader.start();

    GetReasonResponse resp =
        await AuthService().getReasons().onError((error, stackTrace) {
      return GetReasonResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {"request_name": "get_reasons", "response_model": "GetReasonResponse"},
      ));
    });

    AppLoader.stop();
    if (resp.status == "success") {
      BlueDialog.reason(reasons: resp.data!).then((value) {
        if (value != null) {
          BlueDialog.deleteAccount(onDelete: () {
            deleteAccount(value, context);
          });
        }
      });
    } else {
      AppNotification.error(message: resp.message);
    }
  }

  deleteAccount(Reason reason, BuildContext context) async {
    AppLoader.start();
    DeleteRequest request = DeleteRequest(reasonId: reason.id.toString());

    DeleteResponse resp =
        await AuthService().deleteAccount(request).onError((error, stackTrace) {
      return DeleteResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "delete_account",
          "request": request.toString(),
          "response_model": "DeleteResponse"
        },
      ));
    });

    if (resp.status == "success") {
      if (context.mounted) {
        await logout(context);

        if (context.mounted) context.go(RoutePaths.welcome);
      }
      StorageHelpers.deleteAll();
      StorageValues.deleteLoginValues();
      locator<AppStateValues>().clear();
      AppNotification.success(message: resp.message);
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

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
      context.go(RoutePaths.login);
    }
    locator<AppStateValues>().notificationState =
        NotificationState.logoutSuccess;
    RefreshTimer().cancelTimer();

    AppLoader.stop();
  }

  List<SettingsOption> staffManagementOption(BuildContext context) => [
        SettingsOption(
          icon: AppAssets.images.icons.staffManagement.svg(),
          title: "Manage business branch",
          subtitle: "Track and monitor your business branches.",
          onTap: () {
            goToBranchManagementHome(context);
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
          title: "Personal details",
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
            height: 20.h,
            width: 36.w,
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
            height: 20.h,
            width: 36.w,
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
            height: 38.h,
            width: 38.w,
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
            height: 38.h,
            width: 38.w,
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
        ),
      ];
  bool _isChanging = false;
  bool get isChanging => _isChanging;
  set isChanging(bool v) {
    _isChanging = v;
    notifyListeners();
  }

  toggleNotifications(bool v) async {
    if (!isChanging) {
      isChanging = true;
      AppLoader.start();

      ToggleNotificationResponse resp = await ProfileService()
          .toggleNotificationStatus(status: v ? 1 : 0)
          .onError((error, stackTrace) {
        return ToggleNotificationResponse(
            message: AppErrorHandler.getErrorMessage(
          error,
          {
            "request_name": "toggle_notifications",
            "response_model": "NotificationResponse"
          },
        ));
      });

      if (resp.status == "success") {
        notificationStatus = v;
        locator<AppStateValues>().notificationStatus = v;
        AppNotification.success(message: resp.message);
      } else {
        AppNotification.error(message: resp.message);
      }

      AppLoader.stop();
      isChanging = false;
    }
  }

  goToManageBeneficiaries(BuildContext context) {
    context.push(RoutePaths.beneficiary);
  }

  goToBranchManagementHome(BuildContext context) {
    context.push(RoutePaths.settingsToBranches);
  }

  goToStaffManagementHome(BuildContext context) {
    context.push(RoutePaths.settingsToStaff);
  }

  goToBlueWeb() async {
    Uri url = Uri.parse("https://paymeblue.com/business");

    await launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  Future getWithdrawalAccount(BuildContext context) async {
    AppLoader.start();

    WithdrawalAccountResponse resp = await TransactionService()
        .getWithdrawalAccount()
        .onError((error, stackTrace) {
      return WithdrawalAccountResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "get_withdrawal_account",
          "response_model": "WithdrawalResponse"
        },
      ));
    });

    if (resp.status == "success") {
      if (resp.data != null) {
        locator<AppStateValues>().withdrawalAccount = resp.data;
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    if (context.mounted) goToWithdrawalBank(context);
    AppLoader.stop();
  }

  goToPaymentLinkHistory(BuildContext context) {
    context.push(RoutePaths.paymentLinkHistory);
  }

  goToPersonalInfo(BuildContext context) {
    context.push(RoutePaths.personalInfo);
  }

  goToWithdrawalBank(BuildContext context) {
    context.push(RoutePaths.withdrawalInfo);
  }

  goToAccountRecovery(BuildContext context) {
    context.push(RoutePaths.accountRecovery);
  }
}
