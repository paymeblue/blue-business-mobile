import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/verify/request/verified_receiver_request.dart';
import 'package:blue_business/core/models/transaction/verify/response/verified_receiver_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';

class QrPaymentViewModel extends BaseViewModel {
  late Size size;
  late InitiateTransactionData data;

  void init(BuildContext context, InitiateTransactionData d) {
    size = context.mediaQuery.size;
    data = d;
    checkCameraStatus();
  }

  Future<void> checkCameraStatus() async {
    canUseCamera = await Permission.camera.request().isGranted;

    if (!canUseCamera) {
      mobileScannerController.stop();
      openAppSettings().then((val) {
        if (val) {
          checkCameraStatus();
        } else {
          AppNotification.error(
            message:
                "Please check that Blue Business can use your camera and try again",
          );
        }
      });
    }
  }

  bool _canUseCamera = true;
  bool get canUseCamera => _canUseCamera;
  set canUseCamera(bool v) {
    _canUseCamera = v;
    notifyListeners();
  }

  MobileScannerController mobileScannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );

  void detect(BarcodeCapture capture, BuildContext context) {
    String val = capture.barcodes.first.rawValue!;
    mobileScannerController.stop();

    List<String> values = val.split("_");

    if (context.mounted) {
      verify(
        values.first,
        context,
        values.length > 2 ? int.tryParse(values[2]) : null,
      );
    }
  }

  Future<void> verify(
    String identifier,
    BuildContext context, [
    int? branchId,
  ]) async {
    AppLoader.start();

    VerifiedReceiverRequest request = VerifiedReceiverRequest(
      receiver: identifier,
      transactionId: data.transactionId,
      branchId: branchId.toString(),
    );

    VerifiedReceiverResponse resp = await TransactionService()
        .verifyReceiver(request)
        .onError((error, stackTrace) {
          return VerifiedReceiverResponse(
            message: AppErrorHandler.getErrorMessage(error, {
              "request_name": "verify_receiver",
              "request": request.toString(),
              "response_model": "VerifiedReceiverResponse",
            }),
          );
        });

    if (resp.status == "success") {
      if (context.mounted) {
        ConfirmTransactionViewArgs args = ConfirmTransactionViewArgs(
          mode: PaymentMode.qr,
          receiver: resp.data!,
          transactionId: data.transactionId,
        );
        locator<AppRouter>().replace(ConfirmTransactionRoute(args: args));
      }
    } else {
      AppNotification.error(message: resp.message);
      mobileScannerController.start();
    }

    AppLoader.stop();
  }
}
