import 'dart:async';
import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/config/storage/database.dart';
import 'package:blue_business/core/models/beneficiary/electricity/electricity_beneficiary.dart';
import 'package:blue_business/core/models/beneficiary/payment/blue_beneficiary.dart';
import 'package:blue_business/core/models/beneficiary/payment/get/response/get_beneficiary_response.dart';
import 'package:blue_business/core/models/beneficiary/payment/set/response/set_beneficiary_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/dialogs.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ManageBeneficiariesViewModel extends BaseViewModel {
  late Size size;

  void init(BuildContext context) {
    size = context.mediaQuery.size;

    beneficiaryController.addPageRequestListener((pageKey) {
      getBeneficiaries(pageKey);
    });

    getElectricityBeneficiariesFromLocal();
  }

  void goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  void onFilterChanged(String? v) {
    if (v.orEmpty.isNotEmpty) {
      selectedType = v!;
    }
  }

  String? _type;
  String? get selectedType => _type;
  set selectedType(String? v) {
    _type = v;
    notifyListeners();
  }

  List<ElectricityBeneficiary> _electricityBeneficiaries = [];
  List<ElectricityBeneficiary> get electricityBeneficiaries =>
      _electricityBeneficiaries;
  set electricityBeneficiaries(List<ElectricityBeneficiary> v) {
    _electricityBeneficiaries = v;
    notifyListeners();
  }

  List<ElectricityBeneficiary> _allElectricityBeneficiaries = [];
  List<ElectricityBeneficiary> get allElectricityBeneficiaries =>
      _allElectricityBeneficiaries;
  set allElectricityBeneficiaries(List<ElectricityBeneficiary> v) {
    _allElectricityBeneficiaries = v;
    notifyListeners();
  }

  FetchState _getLocalBeneficiaryState = FetchState.success;
  FetchState get getLocalBeneficiaryState => _getLocalBeneficiaryState;
  set getLocalBeneficiaryState(FetchState v) {
    _getLocalBeneficiaryState = v;
    notifyListeners();
  }

  final dbHelper = DatabaseHelper();
  Future<void> getElectricityBeneficiariesFromLocal() async {
    getLocalBeneficiaryState = FetchState.loading;

    try {
      dbHelper.getBeneficiaries().then((b) async {
        allElectricityBeneficiaries = b;
        electricityBeneficiaries = b;
      });
    } catch (e) {
      getLocalBeneficiaryState = FetchState.error;
    }
  }

  void onDeletelectricityBeneficiary(ElectricityBeneficiary beneficiary) {
    BlueDialog.primary(
      title: "Delete beneficiary",
      subtitle:
          "Are you sure you want to remove ${beneficiary.receiver} as a beneficiary?",
      onDelete: () {
        deleElectricityBeneficiary(beneficiary.id!);
      },
    );
  }

  void deleElectricityBeneficiary(int id) {
    getLocalBeneficiaryState = FetchState.loading;

    try {
      dbHelper.deleteBeneficiary(id).then((b) async {
        getElectricityBeneficiariesFromLocal();
      });
    } catch (e) {
      getLocalBeneficiaryState = FetchState.error;
    }
  }

  void onElectricitySearchChanged(String? v) {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(milliseconds: 500), () async {
      if (v.orEmpty.isEmpty) {
        electricityBeneficiaries = allElectricityBeneficiaries;
      } else {
        electricityBeneficiaries = allElectricityBeneficiaries
            .where((b) => b.receiver.contains(v!))
            .toList();
      }
    });
  }

  List<String> filters = ["Blue to Blue pay", "Electricity"];

  String _q = "";
  String get query => _q;
  set query(String q) {
    _q = q;
    notifyListeners();
  }

  Timer? searchTimer;

  void onSearchChanged(String? v) {
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
  Future<void> getBeneficiaries(int page) async {
    try {
      GetBeneficiaryResponse resp = await TransactionService()
          .searchBeneficiaries(page, limit, query.isEmpty ? null : query)
          .onError((error, stackTrace) {
            return GetBeneficiaryResponse(
              message: AppErrorHandler.getErrorMessage(error, {
                "request_name": "search_beneficiary",
                "response_model": "GetBeneficiaryResponse",
              }),
            );
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

  Future<void> deleteBeneficiary(int id) async {
    AppLoader.start();
    try {
      SetBeneficiaryResponse resp = await TransactionService()
          .deleteBeneficiary(id)
          .onError((error, stackTrace) {
            return SetBeneficiaryResponse(
              message: AppErrorHandler.getErrorMessage(error, {
                "request_name": "delete_beneficiary",
                "response_model": "DeleteBeneficiaryResponse",
              }),
            );
          });

      if (resp.status == "success") {
        beneficiaryController.refresh();
      } else {
        AppNotification.error(message: resp.message);
      }
    } catch (e) {
      String err = AppErrorHandler.getErrorMessage(e, {
        "request_name": "delete_beneficiary",
        "response_model": "DeleteBeneficiaryResponse",
      });

      AppNotification.error(message: err);
    }
    AppLoader.stop();
  }
}
