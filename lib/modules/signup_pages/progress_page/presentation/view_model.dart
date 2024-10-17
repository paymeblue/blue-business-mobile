import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/shareholders/get/response/get_shareholders_response.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupProgressViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context, SignupData data) {
    size = context.mediaQuery.size;

    setProgress(data);
  }

  goToNext(BuildContext context, SignupData data) {
    if (progress == 1) {
      context.go(RoutePaths.registerBusinessDetailsPath, extra: data);
    } else if (progress == 2) {
      context.go(RoutePaths.registerShareholdersPath, extra: data);
    } else {
      context.go("/register${RoutePaths.pinPath}", extra: data);
    }
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.addAccountPhonePath);
    }
  }

  setProgress(SignupData data) {
    if (data.businessProfileCompleted) {
      progress = 1;
    }
    if (data.businessDetailsCompleted) {
      progress = 2;
    }
    if (data.businessKycCompleted) {
      progress = 3;
    }
  }

  int _progress = 1;
  int get progress => _progress;
  set progress(int n) {
    _progress = n;
    notifyListeners();
  }

  List<Map<String, dynamic>> progressSteps = [
    {
      "title": "Create Profile",
      "subtitle": "Create profile with your phone number, and password.",
    },
    {
      "title": "Business & Owner Details",
      "subtitle":
          "Provide us with your business name, category, size and CAC number.",
    },
    {
      "title": "KYC Verification",
      "subtitle":
          "Verify your identify as the owner/shareholder of the business.",
    }
  ];

  Future<List<Shareholders>?> getShareHolers(
      BuildContext context, int userId) async {
    AppLoader.start();
    GetShareholdersResponse response = await AuthService(DioConfig.dio())
        .getShareholders(userId: userId)
        .onError(
          (error, stackTrace) => GetShareholdersResponse(
              message: AppErrorHandler.getErrorMessage(
            error,
            {
              "request_name": "get_shareholders",
              "response_model": "GetShareHoldersResponse"
            },
          )),
        );

    return response.data;
  }
}
