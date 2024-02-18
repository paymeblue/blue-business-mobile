import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/models/business_profile/location/request/busines_location_request.dart';
import 'package:blue_business/core/models/business_profile/name/response/busines_name_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddBusinessLocationViewModel extends BaseViewModel {
  late Size size;
  AuthService authService = AuthService();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  String? _state, _lga;
  String? get state => _state;
  String? get lga => _lga;

  set state(String? v) {
    _state = v;
    notifyListeners();
  }

  set lga(String? v) {
    _lga = v;
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  sendAddress(BuildContext context, int id) async {
    AppLoader.start();

    BusinessLocationRequest request = BusinessLocationRequest(
      address: addressController.text,
      lga: lga!,
      state: state!,
      city: cityController.text,
    );

    BusinessNameResponse resp = await authService
        .addBusinessAddress(
          id.toString(),
          request,
        )
        .onError((error, stackTrace) => BusinessNameResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      if (context.mounted) {
        context.go(RoutePaths.homePath);
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  bool isActive() {
    return lga != null &&
        state != null &&
        addressController.text.isNotEmpty &&
        cityController.text.isNotEmpty;
  }
}
