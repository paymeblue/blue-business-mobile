import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dash_service/dash_service.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/payment_option/payment_option.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/initiate/request/initiate_transaction_request.dart';
import 'package:blue_business/core/models/transaction/initiate/response/initiate_transaction_response.dart';
import 'package:blue_business/core/models/withdrawal_account/get/response/withdrawal_account_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitiatePaymentViewModel extends BaseViewModel {
  late Size size;

  TransactionService transactionService = TransactionService();
  DashService dashService = DashService();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  bool isActive() {
    int? amountInKobo =
        int.tryParse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ""));
    return amountController.text.isNotEmpty &&
        amountInKobo != null &&
        amountInKobo >= 20000;
  }

  startTransaction(BuildContext context, bool isWithdrawal) {
    if (!isWithdrawal) {
      BlueBottomSheet.paymentMethod(amountController.text).then((value) {
        initiateTransaction(getModeString(value)).then((val) {
          if (val != null) {
            locator<AppStateValues>().narration = descriptionController.text;
            context.go(
              "${RoutePaths.verifyReceiverPath}/${getModeString(value)}",
              extra: val,
            );
          }
        });
      });
    } else {
      int? amountInKobo =
          int.tryParse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ""));
      if (locator<AppStateValues>().withdrawalAccount == null) {
        getWithdrawalAccount().then((value) {
          if (locator<AppStateValues>().withdrawalAccount != null) {
            context.go("${RoutePaths.confirmPaymentPath}/withdraw/0",
                extra: amountInKobo);
          }
        });
      } else {
        context.go("${RoutePaths.confirmPaymentPath}/withdraw/0",
            extra: amountInKobo);
      }
    }
  }

  Future<InitiateTransactionData?> initiateTransaction(
      String paymentMode) async {
    int? amountInKobo =
        int.tryParse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ""));
    AppLoader.start();

    InitiateTransactionResponse resp =
        await transactionService.initiateTransaction(InitiateTransactionRequest(
      amount: (amountInKobo! / 100).toString(),
      narration: descriptionController.text.isEmpty
          ? null
          : descriptionController.text,
      paymentMode: paymentMode == "qr" ? "blue-user" : paymentMode,
    ));
    if (resp.status != "success") {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();

    return resp.data;
  }

  Future getWithdrawalAccount() async {
    AppLoader.start();

    WithdrawalAccountResponse resp =
        await dashService.getWithdrawalAccount().onError((error, stackTrace) {
      return WithdrawalAccountResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      if (resp.data != null) {
        locator<AppStateValues>().withdrawalAccount = resp.data;
      } else {
        AppNotification.error(
            message:
                "You do not have a payout account setup. Please go to Settings > Withdrawal Account to set one up.");
      }
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  String getModeString(PaymentMode value) {
    switch (value) {
      case PaymentMode.blue:
        return "blue-user";
      case PaymentMode.qr:
        return "qr";
      case PaymentMode.phone:
        return "phone";
      case PaymentMode.offline:
        return "offline";
    }
  }
}
