import 'dart:io';
import 'dart:typed_data';

import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/bills/cable/vend/data/vend_cable_data.dart';
import 'package:blue_business/core/models/transaction_detail/cable/cable_details.dart';
import 'package:blue_business/core/models/transaction_detail/response/transaction_detail_response.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class VendCableSuccessViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  CableDetails? _details;
  CableDetails? get cableDetails => _details;
  set cableDetails(CableDetails? d) {
    _details = d;
    notifyListeners();
  }

  goTohome(BuildContext context) {
    context.popUntilRoute(HomeRoute(), true);
  }

  getTransactionDetails(VendCableData transaction) async {
    AppLoader.start();

    TransactionDetailResponse response = await TransactionService()
        .getTransactionDetails(
      transactionReference: transaction.transactionId.toString(),
      service: "tv",
    )
        .onError((error, stackTrace) {
      return TransactionDetailResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "get_transaction_detail",
          "response_model": "TransactionDetailResponse"
        },
      ));
    });

    if (response.status == "success") {
      cableDetails = CableDetails.fromJson(response.data);
      downloadAndShareQr();
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  ScreenshotController screenshotController = ScreenshotController();

  downloadAndShareQr() async {
    Uint8List? img;
    await screenshotController.capture().then((value) {
      img = value;
    }).catchError((onError) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(onError));
    });
    if (img != null) {
      XFile image = XFile.fromData(img!,
          name: "receipt_${cableDetails!.transactionId}",
          mimeType: "image/png");

      Share.shareXFiles(
        [image],
      ).then((value) {
        if (Platform.isIOS && value.status == ShareResultStatus.success) {
          BlueToast.primaryWithcon("Receipt shared");
        }
      });
    } else {}
  }
}
