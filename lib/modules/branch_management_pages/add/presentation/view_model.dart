import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/branches/branch.dart';
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

  init(BuildContext context, Branch? branch) {
    size = context.mediaQuery.size;

    if (branch != null) {
      setInitialValues(branch);
    }
  }

  setInitialValues(Branch branch) {
    nameController.text = branch.name;
    locationController.text = branch.location;
    staffSize = branch.staffSize;
  }

  bool isActive(Branch? branch) {
    return (branch != null &&
            (branch.name != nameController.text ||
                branch.staffSize != staffSize ||
                branch.location != locationController.text)) ||
        (nameController.text.trimRight().isNotEmpty &&
            staffSize != null &&
            locationController.text.trimRight().isNotEmpty);
  }

  goBack(BuildContext context) {
    context.pop();
  }

  List<String> sizes = ["1 - 9", "10 - 49", "50 - 249", "> 250"];

  String? _staffSize;
  String? get staffSize => _staffSize;
  set staffSize(String? s) {
    _staffSize = s;
    notifyListeners();
  }

  TextEditingController locationController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  createBranch(BuildContext context) async {
    AppLoader.start();

    CreateBranchRequest request = CreateBranchRequest(
        name: nameController.text,
        staffSize: staffSize!,
        location: locationController.text);

    CreateBranchResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .createBranch(request: request)
        .onError(
          (error, stackTrace) => CreateBranchResponse(
              message: AppErrorHandler.getErrorMessage(
            error,
            {
              "request_name": "create_branch",
              "request": request.toString(),
              "response_model": "CreateBranchResponse"
            },
          )),
        );

    if (response.status == "success") {
      if (context.mounted) goBack(context);
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }

  editBranch(BuildContext context, Branch branch) async {
    AppLoader.start();

    CreateBranchRequest request = CreateBranchRequest(
        name: nameController.text,
        staffSize: staffSize!,
        location: locationController.text);

    CreateBranchResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .editBranch(request: request, id: branch.id)
        .onError(
          (error, stackTrace) => CreateBranchResponse(
              message: AppErrorHandler.getErrorMessage(
            error,
            {
              "request_name": "edit_branch",
              "request": request.toString(),
              "response_model": "CreateResponse"
            },
          )),
        );

    if (response.status == "success") {
      if (context.mounted) goBack(context);
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }
}
