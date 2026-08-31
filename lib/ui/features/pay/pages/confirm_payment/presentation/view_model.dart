import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

class ConfirmTransactionViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context, ConfirmTransactionViewArgs args) {
    size = context.mediaQuery.size;

    if (args.mode != PaymentMode.withdrawal) {
      if (args.receiver!.walletCode == null) {
        AppNotification.warning(
          message: "You're about to send money to a non-blue user",
        );
      }
    }
  }

  bool _saveBeneficiary = false;
  bool get saveBeneficiary => _saveBeneficiary;
  set saveBeneficiary(bool v) {
    _saveBeneficiary = v;
    notifyListeners();
  }

  void goToNext(BuildContext context, ConfirmTransactionViewArgs args) {
    locator<AppStateValues>().hasSavedBeneficiary = !saveBeneficiary;
    locator<AppRouter>().push(CompletePaymentRoute(args: args));
  }
}
