import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/functions.dart';
import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/models/beneficiary/payment/set/request/set_beneficiary_request.dart';
import 'package:blue_business/core/models/beneficiary/payment/set/response/set_beneficiary_response.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/models/transaction/pay/credit/request/credit_request.dart';
import 'package:blue_business/core/models/transaction/pay/response/pay_response.dart';
import 'package:blue_business/core/models/transaction/pay/withdraw/request/withdraw_request.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view.dart';
import 'package:blue_business/ui/features/pay/pages/success/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:flutter/material.dart';

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
      withdraw(context, args);
    } else {
      completeTransaction(context, args);
    }
  }

  completeTransaction(
      BuildContext context, ConfirmTransactionViewArgs args) async {
    AppLoader.start();

    CreditRequest request =
        CreditRequest(transactionId: args.transactionId!, passcode: pin);

    PayResponse resp =
        await TransactionService().pay(request).onError((error, stackTrace) {
      return PayResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "pay",
          "request": request.toString(),
          "response_model": "PayResponse"
        },
      ));
    });

    if (resp.status == "success") {
      if (!locator<AppStateValues>().hasSavedBeneficiary &&
          args.receiver?.walletCode != null) {
        await saveBeneficiary(args.receiver!);
      }
      if (StorageValues.enableBiometrics == "true") {
        savePin();
      }
      if (context.mounted) {
        PaymentSuccessViewArgs extra =
            PaymentSuccessViewArgs(mode: args.mode, data: resp.data!);

        context.push(RoutePaths.walletPaymentSuccess, extra: extra);
      }
    } else {
      if (context.mounted) {
        context.popUntilPath(RoutePaths.home);
        context.push(
          RoutePaths.walletPaymentFailure,
          extra: resp.message ??
              "Something went wrong when trying to process this transaction",
        );
      }
    }
    AppLoader.stop();
  }

  saveBeneficiary(VerifiedReceiver data) async {
    SetBeneficiaryRequest request =
        SetBeneficiaryRequest(identifier: data.walletCode!);

    SetBeneficiaryResponse resp = await TransactionService()
        .addBeneficiary(request)
        .onError((error, stackTrace) {
      return SetBeneficiaryResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "add_beneficiary",
          "request": request.toString(),
          "response_model": "SetBeneficiaryResponse"
        },
      ));
    });

    if (resp.status == "success") {
      BlueToast.primaryWithoutIcon(resp.message ??
          "This user has been successfully saved as a beneficiary.");
    } else {
      BlueToast.primaryWithoutIcon(
          resp.message ?? "An error occurred. Beneficiary could not be saved");
    }

    locator<AppStateValues>().hasSavedBeneficiary = true;
  }

  withdraw(BuildContext context, ConfirmTransactionViewArgs args) async {
    AppLoader.start();

    WithdrawRequest request =
        WithdrawRequest(amount: (args.amount! / 100).toString(), passcode: pin);

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

    if (resp.status == "success") {
      if (StorageValues.enableBiometrics == "true") {
        savePin();
      }
      if (context.mounted) {
        context.popUntilPath(RoutePaths.home, true);
        PaymentSuccessViewArgs extra =
            PaymentSuccessViewArgs(mode: args.mode, data: resp.data!);

        context.push(RoutePaths.walletPaymentSuccess, extra: extra);
      }
    } else {
      if (context.mounted) {
        context.popUntilPath(RoutePaths.home);
        context.push(
          RoutePaths.walletPaymentFailure,
          extra: resp.message ??
              "Something went wrong when trying to process this transaction",
        );
      }
    }

    AppLoader.stop();
  }

  savePin() {
    StorageValues.pin = pin;
    StorageHelpers.setVal(StorageKeys.pinKey, pin);
  }

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp = await AuthService()
        .getSecurityQuestion(locator<AppStateValues>().currentUser!.phone)
        .onError((error, stackTrace) => GetQuestionResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_security_question",
                "response_model": "GetQuestionResponse"
              },
            )));

    if (context.mounted) {
      context
          .push<bool>(RoutePaths.initiateResetPin, extra: resp.data)
          .then((val) {
        if (val == true) {
          AppNotification.success(message: resp.message);
        }
      });
    }
    AppLoader.stop();
  }
}
