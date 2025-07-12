import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/initiate/request/initiate_transaction_request.dart';
import 'package:blue_business/core/models/transaction/initiate/response/initiate_transaction_response.dart';
import 'package:blue_business/core/models/withdrawal_account/get/response/withdrawal_account_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class InitiateTransactionViewModel extends BaseViewModel {
  late Size size;
  PaymentMode? paymentMode;

  init(BuildContext context, PaymentMode? p) {
    size = context.mediaQuery.size;

    paymentMode = p;
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

  onButtonTap(BuildContext context) {
    if (paymentMode == PaymentMode.withdrawal) {
      if (locator<AppStateValues>().withdrawalAccount == null) {
        getWithdrawalAccount(context);
      } else {
        goToConfirm(context);
      }
    } else {
      BlueBottomSheet.paymentMethod(amountController.text).then(
        (value) {
          if (value != null) {
            paymentMode = value;
            if (context.mounted) initiateTransaction(context);
          }
        },
      );
    }
  }

  initiateTransaction(BuildContext context) async {
    int? amountInKobo =
        int.tryParse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ""));
    AppLoader.start();

    InitiateTransactionRequest request = InitiateTransactionRequest(
      amount: (amountInKobo! / 100).toString(),
      narration: descriptionController.text.isEmpty
          ? null
          : descriptionController.text,
      paymentMode: paymentMode!.key,
    );

    InitiateTransactionResponse resp =
        await TransactionService().initiateTransaction(request);
    if (resp.status != "success") {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();

    if (resp.status == "success") {
      if (context.mounted) {
        goToVerify(context, resp.data!);
      }
    } else {
      AppNotification.error(message: resp.message);
    }
  }

  getWithdrawalAccount(BuildContext context) async {
    AppLoader.start();

    WithdrawalAccountResponse resp = await TransactionService()
        .getWithdrawalAccount()
        .onError((error, stackTrace) {
      return WithdrawalAccountResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "get_withdrawal_account",
          "response_model": "WithdrawalAccountResponse"
        },
      ));
    });

    if (resp.status == "success") {
      if (resp.data != null) {
        locator<AppStateValues>().withdrawalAccount = resp.data;
        if (context.mounted) goToConfirm(context);
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

  goToConfirm(BuildContext context) {
    int? amountInKobo =
        int.tryParse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ""));
    ConfirmTransactionViewArgs args = ConfirmTransactionViewArgs(
      mode: paymentMode!,
      amount: amountInKobo,
    );

    context.push(RoutePaths.confirmTransaction, extra: args);
  }

  goToVerify(BuildContext context, InitiateTransactionData data) {
    VerifyReceiverArgs args =
        VerifyReceiverArgs(data: data, mode: paymentMode!);
    context.push(RoutePaths.verifyReceiver, extra: args);
  }
}

class VerifyReceiverArgs {
  VerifyReceiverArgs({required this.data, required this.mode});

  final InitiateTransactionData data;
  final PaymentMode mode;
}
