import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TransactionHistoryViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
    selectedType = types[0];

    transactionController.addPageRequestListener((pageKey) {});
  }

  List<String> types = ["All", "Credit", "Debit"];

  late String _type;
  String get selectedType => _type;
  set selectedType(String v) {
    _type = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(RoutePaths.homePath);
    }
  }

  int limit = 50;

  filterAction() {
    BlueBottomSheet.filter(
      alertTypes,
      type,
      date,
      pickDate,
      selectedDate: (value) {
        date = value;
      },
      selectedType: (value) {
        type = value;
      },
      refresh: transactionController.refresh,
    );
  }

  PagingController<int, TransactionHistory> transactionController =
      PagingController<int, TransactionHistory>(firstPageKey: 1);

  bool showDate(int i) {
    TransactionHistory transaction = transactionController.itemList![i];
    DateTime currentDate = DateTime.parse(transaction.createdAt);
    DateTime? previousDate;
    if (i > 0) {
      previousDate =
          DateTime.parse(transactionController.itemList![i - 1].createdAt);
    }

    return previousDate == null ||
        (previousDate.year != currentDate.year) ||
        (previousDate.month != currentDate.month) ||
        (previousDate.day != currentDate.day);
  }

  onTypeChanged(String v) {
    selectedType = v;
    transactionController.refresh();
  }

  String _date = "";
  String get date => _date;
  set date(String v) {
    _date = v;
    notifyListeners();
  }

  List<String> alertTypes = [
    "Blue to Blue",
    "Phone number",
    "Withdrawal",
    "Wallet Topup"
  ];

  String _transactiontype = "";
  String get type => _transactiontype;
  set type(String m) {
    _transactiontype = m;
    notifyListeners();
  }

  Future<String?> pickDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      initialDate: date.isNotEmpty ? DateTime.parse(date) : DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      currentDate: DateTime.now(),
      confirmText: "Select".toUpperCase(),
      builder: (context, child) {
        return Theme(
            data: ThemeData(
              colorScheme: ColorScheme(
                brightness: Theme.of(context).brightness,
                primary: AppColors.primary,
                onPrimary: AppColors.white,
                secondary: AppColors.brightBlue,
                onSecondary: AppColors.white,
                error: AppColors.error,
                onError: AppColors.white,
                // background: AppColors.white,
                // onBackground: AppColors.primary,
                surface: AppColors.grey,
                onSurface: AppColors.primary,
              ),
            ),
            child: child!);
      },
    );

    if (selectedDate != null) {
      return selectedDate.toIso8601String();
    } else {
      return null;
    }
  }

  String getType(String t) {
    if (t == "Blue to Blue") {
      return "blue-user";
    } else if (t == "Phone number") {
      return "phone";
    } else if (t == "Withdraawal") {
      return "withdrawal";
    } else {
      return "wallet_topup";
    }
  }
}
