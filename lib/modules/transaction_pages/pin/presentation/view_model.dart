import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/storage/functions.dart';
import 'package:blue_business/core/io/storage/keys.dart';
import 'package:blue_business/core/models/security_question/get/question/security_question.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/biometics.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmTransactionPinViewModel extends BaseViewModel {
  late Size size;
  late String id;
  AppStateValues stateValues = locator<AppStateValues>();

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
      String? transactionId, VerifiedReceiver? data) async {
    if (mode == "withdraw") {
      // withdraw(amount!, context).then((value) {
      //   if (value != null) {
      //     if (StorageValues.enableBiometrics == "true") {
      //       savePin();
      //     }
      //     context.go("${RoutePaths.successPath}/$transactionId/$mode",
      //         extra: value);
      //   }
      // });
    } else {
      // completeTransaction(transactionId!, context, data!).then((value) {
      //   if (value != null) {
      //     if (StorageValues.enableBiometrics == "true") {
      //       savePin();
      //     }
      //     context.go("${RoutePaths.successPath}/$transactionId/$mode",
      //         extra: value);
      //   }
      // });
    }
  }

  completeWithBiometrics(BuildContext context, String mode, int? amount,
      String? transactionId, VerifiedReceiver? data) async {
    bool canContinue = await Biometrics.biometrics();
    if (canContinue) {
      pin = StorageValues.pin;
      if (context.mounted) {
        onButtonTap(context, mode, amount, transactionId, data);
      }
    }
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
}
