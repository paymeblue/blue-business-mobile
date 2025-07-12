import 'package:blue_business/core/api/profile_service/profile_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/auto_withdrawal/auto_withdrawal.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

import 'package:flutter/material.dart';

class WithdrawalMethodViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    isEnabled = locator<AppStateValues>().isAutoWithdrawalEnabled;
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.wallet);
    }
  }

  bool _isEnabled = false;
  bool get isEnabled => _isEnabled;
  set isEnabled(bool value) {
    _isEnabled = value;
    notifyListeners();
  }

  onAutoWithdrawalChanged(bool val) async {
    AutoWithdrawalRequest request =
        AutoWithdrawalRequest(autoWithdrawalEnabled: val);

    AutoWithdrawalResponse resp =
        await ProfileService().toggleAutoWithdrawal(request: request).onError(
      (error, stacktrace) {
        return AutoWithdrawalResponse(
            message: AppErrorHandler.getErrorMessage(error));
      },
    );

    if (resp.status != 'success') {
      AppNotification.error(message: resp.message);
      isEnabled = !val;
    } else {
      locator<AppStateValues>().isAutoWithdrawalEnabled = val;
    }
  }

  goToInitiateWithdrawal(BuildContext context) {
    context.pushReplacement(RoutePaths.initiateTransaction,
        extra: PaymentMode.withdrawal);
  }
}
