import 'dart:async';
import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/beneficiary/blue_beneficiary.dart';
import 'package:blue_business/core/models/recently_paid/item/recently_paid_item.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BluePaymentViewModel extends BaseViewModel {
  late Size size;
  late InitiateTransactionData data;

  init(BuildContext context, InitiateTransactionData d) {
    size = context.mediaQuery.size;
    data = d;

    beneficiaryController.addPageRequestListener((pageKey) {});
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

  onButtonTap(BuildContext context) {}

  onChanged(String? v) {
    notifyListeners();
  }

  onTapBeneficiaryTile(BlueBeneficiary item) {
    identifierController.text = item.identifier;
    name = "${item.firstName} ${item.lastName}";
    notifyListeners();
  }
}
