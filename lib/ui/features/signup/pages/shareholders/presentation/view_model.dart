import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/shareholders/get/response/get_shareholders_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

class ShareholderDetailsViewModel extends BaseViewModel {
  late Size size;
  late SignupData data;

  init(BuildContext context, SignupData d) async {
    size = context.mediaQuery.size;
    data = d;

    await getShareholders();
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop(data);
  }

  goToNext(BuildContext context, {Shareholders? shareholder}) {
    ShareholderKycViewArgs extra =
        ShareholderKycViewArgs(data: data, shareholder: shareholder);
    locator<AppRouter>()
        .push<SignupData>(ShareholderKycRoute(args: extra))
        .then((val) {
      if (val != null) {
        data = val;
      }
    });
  }

  List<Shareholders> _shareholders = [];
  List<Shareholders> get shareholders => _shareholders;
  set shareholders(List<Shareholders> s) {
    _shareholders = s;
    notifyListeners();
  }

  bool _gettingShareholders = false;
  bool get gettingShareholders => _gettingShareholders;
  set gettingShareholders(bool v) {
    _gettingShareholders = v;
    notifyListeners();
  }

  getShareholders() async {
    gettingShareholders = true;
    GetShareholdersResponse response =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .getShareholders(userId: data.businessId!)
            .onError((error, stackTrace) => GetShareholdersResponse(
                    message: AppErrorHandler.getErrorMessage(
                  error,
                  {
                    "request_name": "get_shareholders",
                    "response_model": "GetshareholdersResponse"
                  },
                )));

    if (response.status == "success") {
      shareholders = response.data ?? [];
    } else {
      AppNotification.error(message: response.message);
    }

    gettingShareholders = false;
  }
}
