import 'dart:io';

import 'package:blue_business/core/config/firebase/remote_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/connection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = MediaQuery.sizeOf(context);

    ConnectionHelper.initialiseNetworkCheck(context);

    await StorageValues.getLoginValues();

    if (context.mounted) await _checkForUpdate(context);

    if (StorageValues.username.isNotEmpty) {
      if (StorageValues.skipWelcome == "true") {
        if (context.mounted) context.router.replace(LoginRoute());
      } else {
        await StorageHelpers.setVal(
            StorageKeys.skipWelcomeKey, true.toString());
        if (context.mounted) context.router.replace(WelcomeRoute());
      }
    } else {
      if (context.mounted) context.router.replace(WelcomeRoute());
    }
  }

  Future<void> _checkForUpdate(BuildContext context) async {
    final remoteConfigService = await RemoteConfigService.initialize();

    final isUpdateRequired = await remoteConfigService.isUpdateRequired();
    final forceUpdate = remoteConfigService.forceUpdate;
    final minimumVersion = remoteConfigService.minimumVersion;

    if (isUpdateRequired) {
      if (context.mounted) {
        _showUpdateDialog(context, forceUpdate, minimumVersion);
      }
    }
  }

  void _showUpdateDialog(
      BuildContext context, bool forceUpdate, String minimumVersion) {
    showDialog(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      barrierDismissible: !forceUpdate,
      builder: (ctx) => Theme(
        data: Theme.of(ctx).copyWith(
          dialogTheme: DialogTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: AlertDialog(
          actionsPadding: const EdgeInsets.only(bottom: 10, right: 10),
          title: Text(
            'Update ${forceUpdate ? "Required" : "Available"}',
            style: AppTextStyles.header.copyWith(fontSize: 15.sp),
          ),
          content: Text(
            forceUpdate
                ? 'A mandatory update to version $minimumVersion is required to continue using this app.'
                : 'An update to version $minimumVersion is available. Please update for the best experience.',
            style: AppTextStyles.subHeader.copyWith(fontSize: 13.sp),
          ),
          actions: [
            if (!forceUpdate)
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(), // Dismiss dialog
                child: Text(
                  'Later',
                  style: AppTextStyles.smallButtonText.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.bodyTextColor2,
                  ),
                ),
              ),
            TextButton(
              onPressed: () {
                if (!forceUpdate) Navigator.of(ctx).pop();
                _redirectToAppStore();
              },
              child: Text(
                'Update',
                style: AppTextStyles.smallButtonText.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _redirectToAppStore() {
    late String url;
    if (Platform.isAndroid) {
      url =
          "https://play.google.com/store/apps/details?id=com.roman_dev.blueMobile";
    } else {
      url = "https://apps.apple.com/ng/app/paymeblue/id6452384963";
    }
    Uri uri = Uri.parse(url);

    launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
