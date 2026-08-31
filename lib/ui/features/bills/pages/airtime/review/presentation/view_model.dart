import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/extensions.dart';

class ReviewAirtimeViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  void goToNext(BuildContext context, ReviewAirtimeData data) {
    locator<AppRouter>().push(ConfirmAirtimePinRoute(data: data));
  }
}
