import 'dart:io';
import 'dart:typed_data';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/bills/data/vend/data/vend_data_data.dart';
import 'package:blue_business/core/models/transaction_detail/data/data_details.dart';
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

class VendDataSuccessViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goToHome(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  DataDetails? _details;
  DataDetails? get dataDetails => _details;
  set dataDetails(DataDetails? d) {
    _details = d;
    notifyListeners();
  }

  getTransactionDetails(VendDataData transaction) async {
    AppLoader.start();

    // TransactionDetailResponse response = await TransactionService(
    //         DioConfig.dio(locator<AppStateValues>().accessToken))
    //     .getTransactionDetails(
    //   transactionReference: transaction.transactionId.toString(),
    //   service: "data",
    // )
    //     .onError((error, stackTrace) {
    //   return TransactionDetailResponse(
    //       message: AppErrorHandler.getErrorMessage(error));
    // });

    // if (response.status == "success") {
    //   dataDetails = DataDetails.fromJson(response.data);
    //   downloadAndShareQr();
    // } else {
    //   AppNotification.error(message: response.message);
    // }

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
          name: "receipt_${dataDetails!.transactionId}", mimeType: "png");

      Share.shareXFiles(
        [image],
      ).then((value) {
        if (Platform.isIOS) BlueToast.primaryWithcon("Receipt shared");
      });
    } else {}
  }
}
