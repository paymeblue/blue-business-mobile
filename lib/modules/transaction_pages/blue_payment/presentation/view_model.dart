import 'dart:async';
import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/beneficiary/blue_beneficiary.dart';
import 'package:blue_business/core/models/beneficiary/get/response/get_beneficiary_response.dart';
import 'package:blue_business/core/models/recently_paid/item/recently_paid_item.dart';
import 'package:blue_business/core/models/recently_paid/response/recently_paid_response.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/verify/request/verified_receiver_request.dart';
import 'package:blue_business/core/models/transaction/verify/response/verified_receiver_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BluePaymentViewModel extends BaseViewModel {
  late Size size;
  late InitiateTransactionData data;

  init(BuildContext context, InitiateTransactionData d) {
    size = context.mediaQuery.size;
    data = d;

    beneficiaryController.addPageRequestListener((pageKey) {
      getBeneficiaries(pageKey);
    });
    getRecentlyPaid();
  }

  TextEditingController identifierController = TextEditingController();

  String _q = "";
  String get query => _q;
  set query(String q) {
    _q = q;
    notifyListeners();
  }

  String? _name;
  String? get name => _name;
  set name(String? q) {
    _name = q;
    notifyListeners();
  }

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool v) {
    _loading = v;
    notifyListeners();
  }

  List<RecentlyPaidItem> _items = [];
  List<RecentlyPaidItem> get recentlyPaidItems => _items;
  set recentlyPaidItems(List<RecentlyPaidItem> i) {
    _items = i;
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
        List<BlueBeneficiary> t = resp.data!.data;

        if (resp.data!.loadMore) {
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

  getRecentlyPaid() async {
    loading = true;
    RecentlyPaidResponse resp = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .getRecentlyPaid()
        .onError((error, stackTrace) {
      return RecentlyPaidResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "get_recently_paid",
          "response_model": "RecentlyPaidResponse"
        },
      ));
    });
    if (resp.status == "success") {
      recentlyPaidItems = resp.data!;
    } else {
      AppNotification.error(message: resp.message);
    }
    loading = false;
  }

  onButtonTap(BuildContext context) {
    verify().then((value) {
      if (value.status == "success") {
        context.go(
            "${RoutePaths.confirmPaymentPath}/blue-user/${data.transactionId}",
            extra: value.data);
      } else {
        AppNotification.error(message: value.message);
      }
    });
  }

  onChanged(String? v) {
    notifyListeners();
  }

  Future<VerifiedReceiverResponse> verify() async {
    String identifier = identifierController.text;
    if (!identifierController.text.contains(RegExp(r'[A-Za-z]'))) {
      if (identifier.startsWith("0")) {
        identifier = identifier.replaceFirst("0", "234");
      }
    }
    AppLoader.start();

    VerifiedReceiverRequest request = VerifiedReceiverRequest(
      receiver: identifier,
      transactionId: data.transactionId,
    );

    VerifiedReceiverResponse resp = await TransactionService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
        .verifyReceiver(request)
        .onError((error, stackTrace) {
      return VerifiedReceiverResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "verify_receiver",
          "request": request.toString(),
          "response_model": "VerifiedReceiverResponse"
        },
      ));
    });

    AppLoader.stop();
    return resp;
  }

  onTapRecentlyPaid(RecentlyPaidItem item) {
    identifierController.text = item.wWalletCode;
    name = "${item.uFirstName} ${item.uLastName}";
    notifyListeners();
  }

  onTapBeneficiaryTile(BlueBeneficiary item) {
    identifierController.text = item.identifier;
    name = "${item.firstName} ${item.lastName}";
    notifyListeners();
  }
}
