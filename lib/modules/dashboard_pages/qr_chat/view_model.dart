import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dash_service/dash_service.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_receiver/response/chat_receiver_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';

class QrChatViewModel extends BaseViewModel {
  late Size size;
  TransactionService transactionService = TransactionService();
  late DashService dashService = DashService();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  MobileScannerController mobileScannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );

  goBack(BuildContext context) {
    Provider.of<AppStateValues>(context, listen: false).hasNewMessage = false;
    context.go(RoutePaths.messagePath);
  }

  detect(BarcodeCapture capture, BuildContext context) {
    String val = capture.barcodes.first.rawValue!;
    mobileScannerController.stop();

    getPeer(val).then((value) {
      if (value.status == "success") {
        ChatResponseData recipient = value.data!;
        context.go(RoutePaths.chatDetailsPath,
            extra: {"peer": recipient, "unread": 0});
      } else {
        AppNotification.error(message: value.message);
        mobileScannerController.start();
      }
    });
  }

  getPeer(String identifier) async {
    AppLoader.start();

    ChatReceiverResponse resp =
        await dashService.getReceiver(identifier).onError((error, stackTrace) {
      return ChatReceiverResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    AppLoader.stop();
    return resp;
  }
}
