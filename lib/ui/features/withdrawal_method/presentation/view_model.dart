import 'package:blue_business/core/api/profile_service/profile_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/auto_withdrawal/auto_withdrawal.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

class WithdrawalMethodViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context) {
    size = context.mediaQuery.size;

    isEnabled = locator<AppStateValues>().isAutoWithdrawalEnabled;
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  bool _isEnabled = false;
  bool get isEnabled => _isEnabled;
  set isEnabled(bool value) {
    _isEnabled = value;
    notifyListeners();
  }

  Future<void> onAutoWithdrawalChanged(bool val) async {
    AutoWithdrawalRequest request = AutoWithdrawalRequest(
      autoWithdrawalEnabled: val,
    );

    AutoWithdrawalResponse resp = await ProfileService()
        .toggleAutoWithdrawal(request: request)
        .onError((error, stacktrace) {
          return AutoWithdrawalResponse(
            message: AppErrorHandler.getErrorMessage(error),
          );
        });

    if (resp.status != 'success') {
      AppNotification.error(message: resp.message);
      isEnabled = !val;
    } else {
      locator<AppStateValues>().isAutoWithdrawalEnabled = val;
    }
  }

  void goToInitiateWithdrawal(BuildContext context) {
    locator<AppRouter>().replace(
      InitiateTransactionRoute(mode: PaymentMode.withdrawal),
    );
  }
}
