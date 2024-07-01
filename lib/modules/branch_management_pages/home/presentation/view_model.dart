import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/branch_service/branch_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/branches/create/response/create_branch_response.dart';
import 'package:blue_business/core/models/branches/details/response/get_branch_response.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/dialogs.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  goToAddBranch(BuildContext context, [Branch? branch]) {
    context.push(RoutePaths.addBranchPath, extra: branch).then((v) {
      branchPagingController.refresh();
    });
  }

  TextEditingController searchController = TextEditingController();

  Timer? searchTimer;
  Future<String?> onSearchChanged(String? val) async {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(milliseconds: 1500), () async {
      branchPagingController.refresh();
    });
    return val;
  }

  getBranches(int page) async {
    try {
      GetBranchesResponse response = await BranchService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .getAllBranches(
            page: page,
            limit: 50,
            search:
                searchController.text.isEmpty ? null : searchController.text,
          )
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

  onDeleteBranch(BuildContext context, Branch branch) {
    BlueDialog.primary(
        title: "Delete branch",
        subtitle: "Are you sure you want to delete ${branch.name.sentenceCase}",
        onDelete: () {
          deleteBranch(context, branch);
        });
  }

  deleteBranch(BuildContext context, Branch branch) async {
    AppLoader.start();

    CreateBranchResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .deleteBranch(id: branch.id)
        .onError(
          (error, stackTrace) => CreateBranchResponse(
              message: AppErrorHandler.getErrorMessage(error)),
        );

    if (response.status == "success") {
      branchPagingController.refresh();
    } else {
      AppNotification.error(message: response.message);
    }
    AppLoader.stop();
  }

  getBranch(BuildContext context, int id) async {
    AppLoader.start();

    GetBranchResponse response = await BranchService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getBranchById(id: id)
        .onError(
          (error, stackTrace) => GetBranchResponse(
              message: AppErrorHandler.getErrorMessage(error)),
        );

    if (response.status == "success") {
      if (context.mounted) goToAddBranch(context, response.data);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  goToBranchInsights(BuildContext context, Branch branch) {
    context.push(RoutePaths.branchInsightsPath, extra: branch);
  }
}
