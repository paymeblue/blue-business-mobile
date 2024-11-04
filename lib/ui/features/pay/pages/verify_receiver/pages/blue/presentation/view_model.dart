import 'dart:async';
import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/beneficiary/payment/blue_beneficiary.dart';
import 'package:blue_business/core/models/beneficiary/payment/get/response/get_beneficiary_response.dart';
import 'package:blue_business/core/models/recently_paid/response/recently_paid_response.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/models/transaction/verify/request/verified_receiver_request.dart';
import 'package:blue_business/core/models/transaction/verify/response/verified_receiver_response.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/pay/pages/confirm_payment/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
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

  List<BlueBeneficiary> _items = [];
  List<BlueBeneficiary> get recentlyPaidItems => _items;
  set recentlyPaidItems(List<BlueBeneficiary> i) {
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
      GetBeneficiaryResponse resp = await TransactionService()
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

  getRecentlyPaid() async {
    loading = true;
    RecentlyPaidResponse resp = await TransactionService()
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
      recentlyPaidItems = resp.data ?? [];
    } else {
      AppNotification.error(message: resp.message);
    }
    loading = false;
  }

  onChanged(String? v) {
    notifyListeners();
  }

  verify(BuildContext context) async {
    String identifier = identifierController.text;
    if (!identifierController.text.contains(RegExp(r'[A-Za-z]'))) {
      if (identifier.startsWith("0") ||
          identifier.replaceFirst("+", "").startsWith("234")) {
        identifier = identifier.validPhone(countryCodes.firstWhere(
          (e) => e.countryCode == "NG",
        ));
      }
    }
    AppLoader.start();

    VerifiedReceiverRequest request = VerifiedReceiverRequest(
      receiver: identifier,
      transactionId: data.transactionId,
    );

    VerifiedReceiverResponse resp = await TransactionService()
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

    if (resp.status == "success") {
      if (context.mounted) {
        ConfirmTransactionViewArgs args = ConfirmTransactionViewArgs(
          mode: PaymentMode.blue,
          receiver: resp.data,
          transactionId: data.transactionId,
        );
        context.push(RoutePaths.confirmTransaction, extra: args);
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  onTapRecentlyPaid(BlueBeneficiary item) {
    identifierController.text = item.identifier;
    name = item.name;
    notifyListeners();
  }

  onTapBeneficiaryTile(BlueBeneficiary item) {
    identifierController.text = item.identifier;
    name = item.name;
    notifyListeners();
  }
}
