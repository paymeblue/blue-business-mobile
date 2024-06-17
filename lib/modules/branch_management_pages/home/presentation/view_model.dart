import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BranchHomeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    selectedType = types[0];
    branchPagingController.addPageRequestListener((pageKey) {
      getBranches(pageKey);
    });
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  PagingController<int, Branch> branchPagingController =
      PagingController<int, Branch>(firstPageKey: 1);

  List<String> types = ["Weekly", "Monthly", "Yearly"];

  late String _type;
  String get selectedType => _type;
  set selectedType(String v) {
    _type = v;
    notifyListeners();
  }

  onTypeChanged(String t) {
    selectedType = t;
  }

  goToAddBranch(BuildContext context) {
    context.push(RoutePaths.addBranchPath);
  }

  getBranches(int page) async {
    try {
      GetBranchesResponse response = await BranchService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .getAllBranches(page: page, limit: 50)
          .onError(
            (error, stackTrace) => GetBranchesResponse(
                message: AppErrorHandler.getErrorMessage(error)),
          );

      if (response.status == "success") {
        if (response.data!.loadMore) {
          branchPagingController.appendPage(response.data!.data, page + 1);
        } else {
          branchPagingController.appendLastPage(response.data!.data);
        }

        notifyListeners();
      } else {
        branchPagingController.error = response.message;
      }
    } catch (e) {
      branchPagingController.error = AppErrorHandler.getErrorMessage(e);
    }
  }
}
