import 'dart:developer';

import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction_detail/response/transaction_detail_response.dart';
import 'package:blue_business/core/models/transaction_history/response/transaction_history_response.dart';
import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TransactionHistoryViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
    selectedType = types[0];

    transactionController.addPageRequestListener((pageKey) {
      getTransactions(pageKey);
    });
  }

  List<String> types = ["All", "Credit", "Debit"];

  late String _type;
  String get selectedType => _type;
  set selectedType(String v) {
    _type = v;
    notifyListeners();
  }

  goBack(BuildContext context) {
    context.router.back();
  }

  int limit = 50;

  filterAction() {
    BlueBottomSheet.filter(
      alertTypes,
      statuses,
      type,
      status,
      date,
      pickDate,
      selectedDate: (value) {
        date = value;
      },
      selectedType: (value) {
        log(value);
        type = value;
      },
      selectedStatus: (value) {
        status = value;
      },
      refresh: transactionController.refresh,
    );
  }

  PagingController<int, TransactionHistory> transactionController =
      PagingController<int, TransactionHistory>(firstPageKey: 1);

  getTransactions(int page) async {
    try {
      TransactionResponse resp = await TransactionService()
          .getTransactions(
        page,
        limit,
        type: selectedType.toLowerCase() == "all"
            ? null
            : selectedType.toLowerCase(),
        paymentMode: type.isEmpty ? null : getType(type),
        date: date.isEmpty ? null : date,
        status: status.isEmpty ? null : status.toLowerCase(),
      )
          .onError((error, stackTrace) {
        return TransactionResponse(
            message: AppErrorHandler.getErrorMessage(
          error,
          {
            "request_name": "get_transactions",
            "response_model": "TransationResponse"
          },
        ));
      });
      if (resp.status == "success") {
        List<TransactionHistory> t = resp.data!.data;

        if (resp.data!.loadMore) {
          transactionController.appendPage(t, page + 1);
        } else {
          transactionController.appendLastPage(t);
        }
      } else {
        transactionController.error = resp.message;
      }
    } catch (e) {
      transactionController.error = AppErrorHandler.getErrorMessage(e);
    }
  }

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
    "Wallet Topup",
    "Airtime",
    "Data",
    "Electricity",
    "Cable TV"
  ];

  List<String> statuses = [
    "Successful",
    "Pending",
    "Failed",
  ];

  String _transactiontype = "";
  String get type => _transactiontype;
  set type(String m) {
    _transactiontype = m;
    notifyListeners();
  }

  String _transactionStatus = "";
  String get status => _transactionStatus;
  set status(String m) {
    _transactionStatus = m;
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

    return selectedDate?.toIso8601String();
  }

  String getType(String t) {
    if (t == "Blue to Blue") {
      return "blue-user";
    } else if (t == "Phone number") {
      return "phone";
    } else if (t == "Withdraawal") {
      return "withdrawal";
    } else if (t == "Wallet Topup") {
      return "wallet_topup";
    } else if (t == "Electricity") {
      return "power";
    } else if (t == "Cable TV") {
      return "tv";
    } else {
      return t.toLowerCase();
    }
  }

  getTransactionDetails(
      TransactionHistory transaction, BuildContext context) async {
    AppLoader.start();

    TransactionDetailResponse response = await TransactionService()
        .getTransactionDetails(
      transactionReference: transaction.transactionId.toString(),
      service: getService(transaction.paymentMode),
    )
        .onError((error, stackTrace) {
      return TransactionDetailResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "get_transaction_details",
          "response_model": "TransactionDetailResponse"
        },
      ));
    });

    if (response.status == "success") {
      if (context.mounted) {
        handleDetailResponse(getService(transaction.paymentMode),
            transaction.transactionType, response, context);
      }
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  handleDetailResponse(String mode, String type,
      TransactionDetailResponse response, BuildContext context) {
    dynamic extra;
    if (mode == "payment") {
      extra = PaymentDetail.fromJson(response.data);
      context.router.push(PaymentDetailsRoute(detail: extra));
    } else if (mode == "airtime") {
      extra = AirtimeDetails.fromJson(response.data);
      context.router.push(AirtimeDetailsRoute(detail: extra));
    } else if (mode == "power") {
      extra = PowerDetails.fromJson(response.data);
      context.router.push(PowerDetailsRoute(detail: extra));
    } else if (mode == "data") {
      extra = DataDetails.fromJson(response.data);
      context.router.push(DataDetailsRoute(detail: extra));
    } else if (mode == "tv") {
      extra = CableDetails.fromJson(response.data);
      context.router.push(CableDetailsRoute(detail: extra));
    }

    return;
  }

  String getService(String mode) {
    switch (mode) {
      case "airtime":
      case "power":
      case "data":
        return mode;
      case "cable-tv":
        return "tv";
      default:
        return "payment";
    }
  }
}
