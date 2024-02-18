import 'dart:typed_data';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/payment_link/payment_link.dart';
import 'package:blue_business/core/models/payment_link/response/payment_link_response.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/models/transaction/receipt/data/payment_link/receipt_record.dart';
import 'package:blue_business/core/models/transaction/receipt/response/paymentLink/receipt_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class PaymentLinkHistoryViewModel extends BaseViewModel {
  late Size size;
  TransactionService transactionService = TransactionService();

  init(BuildContext context) {
    size = context.mediaQuery.size;

    selectedStatus = statusList[0];
    paymentLinkController.addPageRequestListener((pageKey) {
      getPaymentLinkHistory(pageKey);
    });
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.settingsPath);
    }
  }

  List<PopupModel> popupItems(PaymentLinkItem item) {
    return [
      PopupModel(
        title: "Share receipt",
        icon: const SizedBox(
          height: 18,
          width: 18,
          child: Icon(
            Icons.share_outlined,
            color: AppColors.textColor,
            size: 20,
          ),
        ),
        onTap: () {
          getTransactionReceipt(item);
        },
      ),
    ];
  }

  onStatusChanged(String v) {
    selectedStatus = v;
    paymentLinkController.refresh();
  }

  late String _status;
  String get selectedStatus => _status;
  set selectedStatus(String v) {
    _status = v;
    notifyListeners();
  }

  PagingController<int, PaymentLinkItem> paymentLinkController =
      PagingController<int, PaymentLinkItem>(firstPageKey: 1);

  List<String> statusList = ["All", "Sent", "Withdrawn", "Cancelled"];

  bool showDate(int i) {
    PaymentLinkItem transaction = paymentLinkController.itemList![i];
    DateTime currentDate = DateTime.parse(transaction.createdAt);
    DateTime? previousDate;
    if (i > 0) {
      previousDate =
          DateTime.parse(paymentLinkController.itemList![i - 1].createdAt);
    }

    return previousDate == null ||
        (previousDate.year != currentDate.year) ||
        (previousDate.month != currentDate.month) ||
        (previousDate.day != currentDate.day);
  }

  int limit = 50;
  getPaymentLinkHistory(int page) async {
    try {
      PaymentLinkResponse resp = await transactionService
          .getPaymentLinkHistory(page, limit, getStatus(selectedStatus))
          .onError((error, stackTrace) {
        return PaymentLinkResponse(
            message: AppErrorHandler.getErrorMessage(error));
      });

      if (resp.status == "success") {
        paymentLinkController.error = resp.message;
      } else {
        List<PaymentLinkItem> i = resp.data!.data;

        if (resp.data!.loadMore) {
          paymentLinkController.appendPage(i, page + 1);
        } else {
          paymentLinkController.appendLastPage(i);
        }
      }
    } catch (e) {
      paymentLinkController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  String getStatus(String v) {
    if (v.toLowerCase() == "sent") {
      v = "fulfilled";
    }
    return v.toLowerCase();
  }

  PaymentLinkReceiptRecord? _r;
  PaymentLinkReceiptRecord? get receipt => _r;
  set receipt(PaymentLinkReceiptRecord? r) {
    _r = r;
    notifyListeners();
  }

  getTransactionReceipt(PaymentLinkItem data) async {
    AppLoader.start();

    PaymentLinkReceiptResponse resp = await transactionService
        .getPaymentLinkReceipt(data.transactionId.toString())
        .onError((error, stackTrace) {
      return PaymentLinkReceiptResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      receipt = resp.data!;
      receipt = receipt!.copyWith(
        status: data.status,
        receivedBy: "+${receipt!.receivedBy}",
      );
      await Future.delayed(const Duration(milliseconds: 350), () {
        downloadAndShareQr(data);
      });
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  ScreenshotController screenshotController = ScreenshotController();

  downloadAndShareQr(PaymentLinkItem data) async {
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
