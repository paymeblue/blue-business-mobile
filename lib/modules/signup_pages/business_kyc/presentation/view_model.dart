import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/shareholders/add/request/add_shareholders_request.dart';
import 'package:blue_business/core/models/shareholders/create/request/create_shareholders_request.dart';
import 'package:blue_business/core/models/shareholders/create/response/create_shareholders_response.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupBusinessKycViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController bvnController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  goToNext(BuildContext context, SignupData data) {
    context.go("/register${RoutePaths.pinPath}", extra: data);
  }

  goBack(BuildContext context) {
    context.pop();
  }

  bool isActive(Shareholders? shareholder) {
    return (shareholder != null ||
            (firstNameController.text.isNotEmpty &&
                lastNameController.text.isNotEmpty)) &&
        bvnController.text.length >= 10;
  }

  addShareholderBvn(
      Shareholders shareholder, SignupData data, BuildContext context) async {
    AppLoader.start();
    AddShareholdersRequest request = AddShareholdersRequest(
        bvn: bvnController.text,
        shareholderId: shareholder.id,
        userId: data.id);

    SignupResponse response = await AuthService(DioConfig.dio())
        .addShareholderBvn(request: request)
        .onError((error, stackTrace) =>
            SignupResponse(message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (context.mounted) goToNext(context, response.data!);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  createShareholder(SignupData data, BuildContext context) async {
    AppLoader.start();
    CreateShareholdersRequest request = CreateShareholdersRequest(
        bvn: bvnController.text,
        businessId: data.businessId!,
        userId: data.id,
        name: "${firstNameController.text} ${lastNameController.text}");

    CreateShareholdersResponse response = await AuthService(DioConfig.dio())
        .createShareholder(request: request)
        .onError((error, stackTrace) => CreateShareholdersResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (response.status == "success") {
      if (context.mounted) {
        goToNext(context, data.copyWith(businessKycCompleted: true));
      }
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }
}
