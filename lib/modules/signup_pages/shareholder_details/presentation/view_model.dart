import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/shareholders/get/response/get_shareholders_response.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShareholderDetailsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, SignupData data) {
    size = context.mediaQuery.size;

    getShareholders(data);
  }

  goBack(BuildContext context, SignupData data) {
    context.go(RoutePaths.registerProgressPath, extra: data);
  }

  goToNext(BuildContext context,
      {Shareholders? shareholder, required SignupData data}) {
    Map<String, dynamic> extra = {"data": data};

    if (shareholder != null) {
      extra["shareholder"] = shareholder;
    }
    context.push(RoutePaths.addShareholdersKycPath, extra: extra);
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

  getShareholders(SignupData data) async {
    gettingShareholders = true;
    GetShareholdersResponse response = await AuthService(DioConfig.dio())
        .getShareholders(userId: data.businessId!)
        .onError((error, stackTrace) => GetShareholdersResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      shareholders = response.data ?? [];
    } else {
      AppNotification.error(message: response.message);
    }

    gettingShareholders = false;
  }
}
