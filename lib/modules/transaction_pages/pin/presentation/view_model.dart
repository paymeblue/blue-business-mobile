import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/beneficiary/set/request/set_beneficiary_request.dart';
import 'package:blue_business/core/models/beneficiary/set/response/set_beneficiary_response.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/models/transaction/pay/credit/request/credit_request.dart';
import 'package:blue_business/core/models/transaction/pay/data/pay_data.dart';
import 'package:blue_business/core/models/transaction/pay/response/pay_response.dart';
import 'package:blue_business/core/models/transaction/pay/withdraw/request/withdraw_request.dart';
import 'package:blue_business/core/models/transaction/verify/data/verified_receiver_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmTransactionPinViewModel extends BaseViewModel {
  late Size size;
  late String id;
  AppStateValues stateValues = locator<AppStateValues>();
  late TransactionService transactionService =
      TransactionService(DioConfig.dio(stateValues.accessToken));

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  String _pin = "";
  String get pin => _pin;
  set pin(String p) {
    _pin = p;
    notifyListeners();
  }

  onButtonTap(BuildContext context, String mode, int? amount,
      String? transactionId, VerifiedReceiverData? data) async {
    if (mode == "withdraw") {
      withdraw(amount!, context).then((value) {
        if (value != null) {
          if (StorageValues.enableBiometrics == "true") {
            savePin();
          }
          context.go("${RoutePaths.successPath}/$transactionId/$mode",
              extra: value);
        }
      });
    } else {
      completeTransaction(transactionId!, context, data!).then((value) {
        if (value != null) {
          if (StorageValues.enableBiometrics == "true") {
            savePin();
          }
          context.go("${RoutePaths.successPath}/$transactionId/$mode",
              extra: value);
        }
      });
    }
  }

  completeWithBiometrics(BuildContext context, String mode, int? amount,
      String? transactionId, VerifiedReceiverData? data) async {
    bool canContinue = await Biometrics.biometrics();
    if (canContinue) {
      pin = StorageValues.pin;
      if (context.mounted) {
        onButtonTap(context, mode, amount, transactionId, data);
      }
    }
  }

  Future<PayData?> withdraw(int amount, BuildContext context) async {
    AppLoader.start();

    WithdrawRequest request =
        WithdrawRequest(amount: (amount / 100).toString(), passcode: pin);

    PayResponse resp =
        await transactionService.withdraw(request).onError((error, stackTrace) {
      return PayResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status != "success") {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();

    return resp.data;
  }

  Future<PayData?> completeTransaction(String transactionId,
      BuildContext context, VerifiedReceiverData data) async {
    AppLoader.start();

    CreditRequest request =
        CreditRequest(transactionId: transactionId, passcode: pin);

    PayResponse resp =
        await transactionService.pay(request).onError((error, stackTrace) {
      return PayResponse(message: AppErrorHandler.getErrorMessage(error));
    });
    if (!locator<AppStateValues>().hasSavedBeneficiary &&
        resp.status == "success") {
      await saveBeneficiary(data);
    }

    if (resp.status != "success") {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();

    return resp.data;
  }

  getSecurityQuestion(BuildContext context) async {
    AppLoader.start();
    GetQuestionResponse resp = await transactionService
        .getSecurityQuestion(stateValues.currentUser!.phone)
        .onError((error, stackTrace) => GetQuestionResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (context.mounted) goToForgotPin(context, resp.data?.question);
    AppLoader.stop();
  }

  goToForgotPin(BuildContext context, SecurityQuestion? question) {
    GoRouterState state = GoRouterState.of(context);
    stateValues.resetPath = state.matchedLocation;
    stateValues.extra = state.extra;
    context.go(RoutePaths.pinRecoveryPhonePath, extra: question);
  }

  savePin() {
    StorageValues.pin = pin;
    StorageHelpers.setVal(StorageKeys.pinKey, pin);
  }

  saveBeneficiary(VerifiedReceiverData data) async {
    SetBeneficiaryRequest request =
        SetBeneficiaryRequest(identifier: data.receiver.walletCode!);

    SetBeneficiaryResponse resp = await transactionService
        .addBeneficiary(request)
        .onError((error, stackTrace) {
      return SetBeneficiaryResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
    } else {
      AppNotification.error(message: resp.message);
    }

    locator<AppStateValues>().hasSavedBeneficiary = true;
  }
}
