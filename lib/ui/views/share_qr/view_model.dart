import 'dart:typed_data';

import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ShareQrViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;

    Timeout.resetTimer();
  }

  ScreenshotController screenshotController = ScreenshotController();

  downloadAndShareQr() async {
    Uint8List? img;
    await screenshotController.capture().then((value) {
      img = value;
    }).catchError((onError) {
      AppNotification.error(message: onError.toString(), context: appContext!);
    });
    if (img != null) {
      XFile image =
          XFile.fromData(img!, name: "semira_blue_qr", mimeType: "png");

      Share.shareXFiles([image]);
    } else {
      AppNotification.error(
          message: "An error occurred while dowloading the QR Code",
          context: appContext!);
    }
  }
}
