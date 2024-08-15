import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/beneficiary/blue_beneficiary.dart';
import 'package:blue_business/core/models/beneficiary/get/response/get_beneficiary_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ManageBeneficiariesViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    beneficiaryController.addPageRequestListener((pageKey) {
      getBeneficiaries(pageKey);
    });

    selectedType = filters[0];
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.settingsPath);
    }
  }

  onFilterChanged(String v) {
    if (selectedType != v) {
      if (v == filters[0]) {
        beneficiaryController.refresh();
      }
    }

    selectedType = v;
  }

  late String _type;
  String get selectedType => _type;
  set selectedType(String v) {
    _type = v;
    notifyListeners();
  }

  List<String> filters = ["Blue to Blue", "Bills"];

  String _q = "";
  String get query => _q;
  set query(String q) {
    _q = q;
    notifyListeners();
  }

  Timer? searchTimer;

  onSearchChanged(String? v) {
    query = v ?? "";
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(seconds: 1), () {
      beneficiaryController.refresh();
    });
  }

  PagingController<int, BlueBeneficiary> beneficiaryController =
      PagingController(firstPageKey: 1);

  int limit = 50;
  getBeneficiaries(int page) async {
    try {
      GetBeneficiaryResponse resp = await TransactionService(
              DioConfig.dio(locator<AppStateValues>().accessToken))
          .searchBeneficiaries(
        page,
        limit,
        query.isEmpty ? null : query,
      )
          .onError((error, stackTrace) {
        return GetBeneficiaryResponse(
            message: AppErrorHandler.getErrorMessage(
          error,
          {
            "request_name": "search_beneficiary",
            "response_model": "GetBeneficiaryResponse"
          },
        ));
      });
      if (resp.status == "success") {
        List<BlueBeneficiary> t = resp.data;

        if (resp.paginationInfo!.loadMore) {
          beneficiaryController.appendPage(t, page + 1);
        } else {
          beneficiaryController.appendLastPage(t);
        }
      } else {
        beneficiaryController.error = resp.message;
      }
    } catch (e) {
      beneficiaryController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

  deleteBeneficiary(int id) async {
    AppLoader.start();
    String resp = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .deleteBeneficiary(id)
        .onError((error, stackTrace) {
      return AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "delete_beneficiary",
          "response_model": "DeleteBeneficiaryResponse"
        },
      );
    });

    if (resp.isEmpty) {
      beneficiaryController.refresh();
    } else {
      AppNotification.error(message: resp);
    }

    AppLoader.stop();
  }
}
