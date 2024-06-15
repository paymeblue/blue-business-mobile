import 'dart:io';
import 'dart:typed_data';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/transaction_detail/power/power_details.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class PowerDetailsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  ScreenshotController screenshotController = ScreenshotController();

  downloadAndShareQr(PowerDetails data) async {
    Uint8List? img;
    await screenshotController.capture().then((value) {
      img = value;
    }).catchError((onError) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(onError));
    });
    if (img != null) {
      XFile image = XFile.fromData(img!,
          name: "receipt_${data.transactionId}", mimeType: "png");

      Share.shareXFiles(
        [image],
      ).then((value) {
        if (Platform.isIOS) BlueToast.primaryWithcon("Receipt shared");
      });
    } else {}
    AppLoader.stop();
  }
}
