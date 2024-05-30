import 'dart:io';
import 'dart:typed_data';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/bills/electricity/vend/data/vend_electricity_data.dart';
import 'package:blue_business/core/models/transaction_detail/power/power_details.dart';
import 'package:blue_business/core/models/transaction_detail/response/transaction_detail_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class VendElectricitySuccessViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goToHome(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  PowerDetails? _details;
  PowerDetails? get powerDetails => _details;
  set powerDetails(PowerDetails? d) {
    _details = d;
    notifyListeners();
  }

  getTransactionDetails(VendElectricityData transaction) async {
    AppLoader.start();

    TransactionDetailResponse response = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getTransactionDetails(
      transactionReference: transaction.transactionId.toString(),
      service: "power",
    )
        .onError((error, stackTrace) {
      return TransactionDetailResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (response.status == "success") {
      powerDetails = PowerDetails.fromJson(response.data);
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
          name: "receipt_${powerDetails!.transactionId}", mimeType: "png");

      Share.shareXFiles(
        [image],
      ).then((value) {
        if (Platform.isIOS) BlueToast.primaryWithcon("Receipt shared");
      });
    } else {}
  }
}
