import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';

class ConfirmTransactionViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, ConfirmTransactionViewArgs args) {
    size = context.mediaQuery.size;

    if (args.mode != PaymentMode.withdrawal) {
      if (args.receiver!.walletCode == null) {
        AppNotification.warning(
            message: "You're about to send money to a non-blue user");
      }
    }
  }

  bool _saveBeneficiary = false;
  bool get saveBeneficiary => _saveBeneficiary;
  set saveBeneficiary(bool v) {
    _saveBeneficiary = v;
    notifyListeners();
  }

  goToNext(BuildContext context, ConfirmTransactionViewArgs args) {
    locator<AppStateValues>().hasSavedBeneficiary = !saveBeneficiary;
    context.push(RoutePaths.transactionPin, extra: args);
  }
}
