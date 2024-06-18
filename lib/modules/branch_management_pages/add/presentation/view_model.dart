import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/branches/create/data/create_branch_request.dart';
import 'package:blue_business/core/models/branches/create/response/create_branch_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AddBranchViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.pop();
  }

  TextEditingController sizeController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  createBranch(BuildContext context) async {
    AppLoader.start();

    CreateBranchRequest request = CreateBranchRequest(
        name: nameController.text,
        staffSize: sizeController.text,
        location: locationController.text);

    CreateBranchResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .createBranch(request: request)
        .onError(
          (error, stackTrace) => CreateBranchResponse(
              message: AppErrorHandler.getErrorMessage(error)),
        );

    if (response.status == "success") {
      if (context.mounted) goBack(context);
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }
}
