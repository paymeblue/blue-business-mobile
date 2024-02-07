import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/verify/request/verified_receiver_request.dart';
import 'package:blue_business/core/models/transaction/verify/response/verified_receiver_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrPaymentViewModel extends BaseViewModel {
  late Size size;
  late InitiateTransactionData data;
  TransactionService transactionService =
      TransactionService(DioConfig.dio(locator<AppStateValues>().accessToken));

  init(BuildContext context, InitiateTransactionData d) {
    size = context.mediaQuery.size;
    data = d;
  }

  MobileScannerController mobileScannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );

  detect(BarcodeCapture capture, BuildContext context) {
    String val = capture.barcodes.first.rawValue!;
    mobileScannerController.stop();

    verify(val).then((value) {
      if (value.status == "success") {
        context.go(
            "${RoutePaths.confirmPaymentPath}/blue-user/${data.transactionId}",
            extra: value.data);
      } else {
        AppNotification.error(message: value.message);
        mobileScannerController.start();
      }
    });
  }

  Future<VerifiedReceiverResponse> verify(String identifier) async {
    AppLoader.start();

    VerifiedReceiverRequest request = VerifiedReceiverRequest(
      receiver: identifier,
    );

    VerifiedReceiverResponse resp = await transactionService
        .verifyReceiver(data.id, request)
        .onError((error, stackTrace) {
      return VerifiedReceiverResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    AppLoader.stop();
    return resp;
  }
}
