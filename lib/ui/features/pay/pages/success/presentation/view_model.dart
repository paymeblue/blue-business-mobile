import 'dart:io';
import 'dart:typed_data';

import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:blue_business/core/models/transaction/receipt/data/transaction/receipt_data.dart';
import 'package:blue_business/core/models/transaction/receipt/response/transaction/receipt_response.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class PaymentSuccessViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goToHome(BuildContext context) {
    context.popUntilPath(RoutePaths.home, true);
  }

  ReceiptData? _r;
  ReceiptData? get receipt => _r;
  set receipt(ReceiptData? r) {
    _r = r;
    notifyListeners();
  }

  getTransactionReceipt(PayData data) async {
    AppLoader.start();

    ReceiptResponse resp = await TransactionService()
        .getReceipt(data.transactionId)
        .onError((error, stackTrace) {
      return ReceiptResponse(
          message: AppErrorHandler.getErrorMessage(error, {
        "request_name": "get_receipt",
        "response_model": "ReceiptResponse"
      }));
    });

    if (resp.status == "success") {
      receipt = resp.data!;
      await Future.delayed(const Duration(milliseconds: 350), () {
        downloadAndShareQr(data);
      });
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
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
        if (Platform.isIOS) BlueToast.primaryWithcon("Receipt shared");
      });
    } else {}
    AppLoader.stop();
  }
}
