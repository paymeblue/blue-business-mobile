import 'dart:async';
import 'dart:developer';

import 'package:blue_business/core/api/branch_service/branch_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/branches/branch.dart';
import 'package:blue_business/core/models/branches/create/response/create_branch_response.dart';
import 'package:blue_business/core/models/branches/details/response/get_branch_response.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/dialogs.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BranchHomeViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    branchPagingController.addPageRequestListener((pageKey) {
      log("GETTTING BRANCHES");
      getBranches(pageKey);
    });
  }

  PagingController<int, Branch> branchPagingController =
      PagingController<int, Branch>(firstPageKey: 1);

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
      GetBranchesResponse response = await BranchService()
          .getAllBranches(
            page: page,
            limit: 50,
            search:
                searchController.text.isEmpty ? null : searchController.text,
          )
          .onError(
            (error, stackTrace) => GetBranchesResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_all_branches",
                "response_model": "GetBranchesResponse"
              },
            )),
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

    CreateBranchResponse response =
        await BranchService().deleteBranch(id: branch.id).onError(
              (error, stackTrace) => CreateBranchResponse(
                  message: AppErrorHandler.getErrorMessage(
                error,
                {
                  "request_name": "delete_branch",
                  "response_model": "CreateBranchResponse"
                },
              )),
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

    GetBranchResponse response =
        await BranchService().getBranchById(id: id).onError(
              (error, stackTrace) => GetBranchResponse(
                  message: AppErrorHandler.getErrorMessage(
                error,
                {
                  "request_name": "get_branch_by_id",
                  "response_model": "GetBranchResponse"
                },
              )),
            );

    if (response.status == "success") {
      if (context.mounted) goToAddBranch(context, response.data);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  goToBranchInsights(BuildContext context, Branch branch) {
    locator<AppRouter>().push<bool>(BranchInsightsRoute(branch: branch));
  }

  goToAddBranch(BuildContext context, [Branch? data]) {
    locator<AppRouter>()
        .push<bool>(EnterBranchDetailsRoute(branch: data))
        .then((val) {
      if (val == true) {
        branchPagingController.refresh();
      }
    });
  }
}
