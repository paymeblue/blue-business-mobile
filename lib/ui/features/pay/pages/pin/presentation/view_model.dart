import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/transaction/pay/response/pay_response.dart';
import 'package:blue_business/core/models/transaction/pay/withdraw/request/withdraw_request.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompletePaymentViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
    useBiometrics = StorageValues.enableBiometrics == "true";
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  bool _useBiometrics = false;
  bool get useBiometrics => _useBiometrics;
  set useBiometrics(bool v) {
    _useBiometrics = v;
    notifyListeners();
  }

  completeWithBiometrics(
      BuildContext context, ConfirmTransactionViewArgs args) async {
    bool canContinue = await Biometrics.biometrics();
    if (canContinue) {
      pin = StorageValues.pin;
      if (context.mounted) {
        onButtonTap(context, args);
      }
    }
  }

  onButtonTap(BuildContext context, ConfirmTransactionViewArgs args) {
    if (args.mode == PaymentMode.withdrawal) {
    } else {}
  }

  withdraw(BuildContext context, int amount) async {
    AppLoader.start();

    WithdrawRequest request =
        WithdrawRequest(amount: (amount / 100).toString(), passcode: pin);

    PayResponse resp = await TransactionService()
        .withdraw(request)
        .onError((error, stackTrace) {
      return PayResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "withdraw",
          "request": request.toString(),
          "response_model": "PayResponse"
        },
      ));
    });

    if (resp.status != "success") {
      if (context.mounted) {
        context.popUntilPath(RoutePaths.home);
        context.push(RoutePaths.createPin);
      }
    }

    AppLoader.stop();
  }

  savePin() {
    StorageValues.pin = pin;
    StorageHelpers.setVal(StorageKeys.pinKey, pin);
  }
}
