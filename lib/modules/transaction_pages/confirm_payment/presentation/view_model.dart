import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/transaction/verify/receiver/verified_receiver.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionShellViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, VerifiedReceiver? data) {
    size = context.mediaQuery.size;

    if (data?.walletCode == null) {
      AppNotification.warning(
          message: "You're about to send money to a non-blue user");
    }
  }

  bool _saveBeneficiary = false;
  bool get saveBeneficiary => _saveBeneficiary;
  set saveBeneficiary(bool v) {
    _saveBeneficiary = v;
    notifyListeners();
  }

  goToNext(BuildContext context, String? id, String mode, int? amount,
      VerifiedReceiver? data) {
    locator<AppStateValues>().hasSavedBeneficiary = false;
    context.go("${RoutePaths.transactionPinPath}/$mode/$id",
        extra: mode == "withdraw" ? amount : data);
  }
}
