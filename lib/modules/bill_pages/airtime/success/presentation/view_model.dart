import 'dart:io';
import 'dart:typed_data';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/bills/airtime/vend/data/vend_airtime_data.dart';
import 'package:blue_business/core/models/transaction_detail/airtime/airtime_details.dart';
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

class VendAirtimeSuccessViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goToHome(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  AirtimeDetails? _details;
  AirtimeDetails? get airtimeDetails => _details;
  set airtimeDetails(AirtimeDetails? d) {
    _details = d;
    notifyListeners();
  }

  getTransactionDetails(VendAirtimeData transaction) async {
    AppLoader.start();

    // TransactionDetailResponse response = await TransactionService(
    //         DioConfig.dio(locator<AppStateValues>().accessToken))
    //     .getTransactionDetails(
    //   transactionReference: transaction.transactionId.toString(),
    //   service: "airtime",
    // )
    //     .onError((error, stackTrace) {
    //   return TransactionDetailResponse(
    //       message: AppErrorHandler.getErrorMessage(error));
    // });

    // if (response.status == "success") {
    //   airtimeDetails = AirtimeDetails.fromJson(response.data);
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
          name: "receipt_${airtimeDetails!.transactionId}", mimeType: "png");

      Share.shareXFiles(
        [image],
      ).then((value) {
        if (Platform.isIOS) BlueToast.primaryWithcon("Receipt shared");
      });
    } else {}
  }
}
