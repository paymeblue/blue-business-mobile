import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrPaymentViewModel extends BaseViewModel {
  late Size size;
  late InitiateTransactionData data;

  init(BuildContext context, InitiateTransactionData d) {
    size = context.mediaQuery.size;
    data = d;
  }

  MobileScannerController mobileScannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );

  detect(BarcodeCapture capture, BuildContext context) {
    // String val = capture.barcodes.first.rawValue!;
    // mobileScannerController.stop();

    // verify(val).then((value) {
    //   if (value.status == "success") {
    //     context.go("${RoutePaths.confirmPaymentPath}/blue-user/${data.id}",
    //         extra: value.data);
    //   } else {
    //     AppNotification.error(message: value.message);
    //     mobileScannerController.start();
    //   }
    // });
  }
}
