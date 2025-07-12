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
    context.router.maybePop();
  }

  goToInitiatePayment(BuildContext context) {
    context.router.push(InitiateTransactionRoute());
  }

  goToBills(BuildContext context) {
    context.router.push(BillsRoute());
  }

  goToWithdrawalMethod(BuildContext context) {
    context.router.push(WithdrawalMethodRoute());
  }
}
