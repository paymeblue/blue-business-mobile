import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';

import 'package:blue_business/core/utils/extensions.dart';

class WalletViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  goToInitiatePayment(BuildContext context) {
    locator<AppRouter>().push(InitiateTransactionRoute());
  }

  goToBills(BuildContext context) {
    locator<AppRouter>().push(BillsRoute());
  }

  goToWithdrawalMethod(BuildContext context) {
    locator<AppRouter>().push(WithdrawalMethodRoute());
  }
}
