import 'dart:typed_data';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:blue_business/core/models/transaction/receipt/data/transaction/receipt_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class SuccessViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goToHome(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  ReceiptData? _r;
  ReceiptData? get receipt => _r;
  set receipt(ReceiptData? r) {
    _r = r;
    notifyListeners();
  }

  ScreenshotController screenshotController = ScreenshotController();

  downloadAndShareQr(PayData data) async {
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
        BlueToast.primaryWithcon("Receipt shared");
      });
    } else {}
    AppLoader.stop();
  }
}
