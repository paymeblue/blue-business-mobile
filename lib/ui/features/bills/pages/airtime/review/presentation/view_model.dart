import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';

class ReviewAirtimeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  goToNext(BuildContext context, ReviewAirtimeData data) {
    locator<AppRouter>().push(ConfirmAirtimePinRoute(data: data));
  }
}
