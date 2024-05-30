import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/create_business_profile/name/response/busines_name_response.dart';
import 'package:blue_business/core/models/create_business_profile/size/request/busines_size_request.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddBusinessSizeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  List<String> sizes = ["Less than 10", "10 - 49", "50 - 249", "250 or more"];

  String _size = "";
  String get selectedSize => _size;
  set selectedSize(String s) {
    _size = s;
    notifyListeners();
  }

  sendSize(BuildContext context, int id) async {
    AppLoader.start();

    BusinessSizeRequest request = BusinessSizeRequest(
      staffSizeMin: sizeMin(),
      staffSizeMax: sizeMax(),
    );

    BusinessNameResponse resp =
        await AuthService(DioConfig.dio(locator<AppStateValues>().accessToken))
            .addBusinessSize(id.toString(), request)
            .onError((error, stackTrace) => BusinessNameResponse(
                message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      if (context.mounted) {
        context.go("${RoutePaths.businessLocation}/$id");
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  int sizeMin() {
    switch (sizes.indexOf(selectedSize)) {
      case 0:
        return 0;
      case 1:
        return 10;
      case 2:
        return 50;
      case 3:
        return 250;
      default:
        return 0;
    }
  }

  int sizeMax() {
    switch (sizes.indexOf(selectedSize)) {
      case 0:
        return 9;
      case 1:
        return 49;
      case 2:
        return 249;
      case 3:
        return 3000;
      default:
        return 9;
    }
  }
}
