import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/beneficiaries_state_manager.dart';
import 'package:blue_business/core/models/beneficiary.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/manage_beneficiaries/pages/bill_beneficiaries.dart';
import 'package:blue_business/ui/views/manage_beneficiaries/pages/blue_beneficiaries.dart';
import 'package:blue_business/ui/views/manage_beneficiaries/pages/phone_beneficiaries.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class ManageBeneficiariesViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late BeneficiariesStateManager beneficiariesStateManager;
  PageController pageController = PageController();

  init(BuildContext context) {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    beneficiariesStateManager =
        Provider.of<BeneficiariesStateManager>(appContext!, listen: false);
    bluePagingController.addPageRequestListener((pageKey) {
      getBlueBeneficiaries(context, pageKey);
    });
    billPagingController.addPageRequestListener((pageKey) {
      getBlueBeneficiaries(context, pageKey);
    });
    phonePagingController.addPageRequestListener((pageKey) {
      getPhoneBeneficiaries(context, pageKey);
    });

    Timeout.resetTimer();
  }

  String _q = "";
  String get query => _q;
  set query(String v) {
    _q = v;
    notifyListeners();
  }

  Future onRefresh(BuildContext context) async {
    bluePagingController.addPageRequestListener((pageKey) {
      getBlueBeneficiaries(context, pageKey);
    });
    billPagingController.addPageRequestListener((pageKey) {
      getBlueBeneficiaries(context, pageKey);
    });
    phonePagingController.addPageRequestListener((pageKey) {
      getPhoneBeneficiaries(context, pageKey);
    });
  }

  List<String> types = ["Blue to blue", "Phone number", "Bills"];

  List<Widget> pages() => [
        BlueBeneficiariesPage(
          beneficiaries: beneficiariesStateManager.blueBeneficiaries,
          pagingController: bluePagingController,
        ),
        PhoneBeneficiariesPage(
          beneficiaries: beneficiariesStateManager.phoneBeneficiaries,
          pagingController: phonePagingController,
        ),
        BillsBeneficiariesPage(
          beneficiaries: beneficiariesStateManager.billBeneficiaries,
          pagingController: billPagingController,
        ),
      ];

  int pageSize = 20;

  final PagingController<int, Beneficiary> phonePagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, Beneficiary> billPagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, Beneficiary> bluePagingController =
      PagingController(firstPageKey: 1);

  getPhoneBeneficiaries(BuildContext context, int page) async {
    // AppLoader.showOverlay(context);
    // try {
    //   var response = {};
    //   if (query.isEmpty) {
    //     response = await paymentService.getAllBeneficiaries(
    //         page: page, limit: pageSize, type: BeneficiaryType.blue);
    //   } else {
    //     response = await paymentService.searchBeneficiaries(
    //         page: page, limit: pageSize, q: query);
    //   }
    //   if (!response['status']) {
    //     AppNotification.error(message: response[''], context: appContext!);
    //   } else {
    //     List data = response['data']['data'];
    //     List<Beneficiary> b = [];
    //     List<Beneficiary> bltemp = [];
    //     List<Beneficiary> ptemp = [];
    //     // List<Beneficiary> btemp = [];
    //     if (data.isNotEmpty) {
    //       b = data.map<Beneficiary>((e) {
    //         return Beneficiary(
    //             id: e["id"],
    //             identifier: e["identifier"],
    //             beneficiaryType: type(e["type"]),
    //             firstName: e["first_name"],
    //             lastName: e["last_name"]);
    //       }).toList();
    //     }

    //     for (var element in b) {
    //       if (element.beneficiaryType == BeneficiaryType.blue) {
    //         bltemp.add(element);
    //       } else {
    //         ptemp.add(element);
    //       }
    //     }

    //     beneficiariesStateManager.blueBeneficiaries = bltemp;
    //     beneficiariesStateManager.phoneBeneficiaries = ptemp;

    //     final isLastPage = response['data']['load_more'].toString() == "false";
    //     if (isLastPage) {
    //       phonePagingController
    //           .appendLastPage(beneficiariesStateManager.phoneBeneficiaries);
    //     } else {
    //       phonePagingController.appendPage(
    //           beneficiariesStateManager.phoneBeneficiaries, page + 1);
    //     }
    //   }
    // } catch (pageError) {
    //   phonePagingController.error = pageError;
    // }
    // AppLoader.hide();
  }

  getBlueBeneficiaries(BuildContext context, int page) async {
    // AppLoader.showOverlay(context);
    // try {
    //   var response = {};
    //   if (query.isEmpty) {
    //     response = await paymentService.getAllBeneficiaries(
    //         page: page, limit: pageSize, type: BeneficiaryType.blue);
    //   } else {
    //     response = await paymentService.searchBeneficiaries(
    //         page: page, limit: pageSize, q: query);
    //   }
    //   if (!response['status']) {
    //     AppNotification.error(message: response[''], context: appContext!);
    //   } else {
    //     List data = response['data']['data'];
    //     List<Beneficiary> b = [];
    //     List<Beneficiary> bltemp = [];
    //     List<Beneficiary> ptemp = [];
    //     // List<Beneficiary> btemp = [];
    //     if (data.isNotEmpty) {
    //       b = data.map<Beneficiary>((e) {
    //         return Beneficiary(
    //             id: e["id"],
    //             identifier: e["identifier"],
    //             beneficiaryType: type(e["type"]),
    //             firstName: e["first_name"],
    //             lastName: e["last_name"]);
    //       }).toList();
    //     }

    //     for (var element in b) {
    //       if (element.beneficiaryType == BeneficiaryType.blue) {
    //         bltemp.add(element);
    //       } else {
    //         ptemp.add(element);
    //       }
    //     }

    //     beneficiariesStateManager.blueBeneficiaries = bltemp;
    //     beneficiariesStateManager.phoneBeneficiaries = ptemp;

    //     final isLastPage = response['data']['load_more'].toString() == "false";
    //     if (isLastPage) {
    //       bluePagingController
    //           .appendLastPage(beneficiariesStateManager.blueBeneficiaries);
    //     } else {
    //       bluePagingController.appendPage(
    //           beneficiariesStateManager.blueBeneficiaries, page + 1);
    //     }
    //   }
    // } catch (pageError) {
    //   bluePagingController.error = pageError;
    // }
    // AppLoader.hide();
  }

  String? onSearchSaved(String? v) {
    query = v ?? "";
    if (beneficiariesStateManager.typeIndex == 0) {
      beneficiariesStateManager.blueBeneficiaries = [];
      bluePagingController.notifyPageRequestListeners(1);
    } else if (beneficiariesStateManager.typeIndex == 1) {
      beneficiariesStateManager.phoneBeneficiaries = [];
      phonePagingController.notifyPageRequestListeners(1);
    } else {
      beneficiariesStateManager.blueBeneficiaries = [];
      billPagingController.notifyPageRequestListeners(1);
    }
    return v;
  }

  deleteBeneficiary(BuildContext context, Beneficiary beneficiary) async {
    // AppLoader.showOverlay(context);

    // var resp =
    //     await paymentService.deleteBeneficiary(beneficiaryId: beneficiary.id);

    // AppLoader.hide();

    // if (!resp['status']) {
    //   if (context.mounted) {
    //     AppNotification.error(message: resp['message'], context: context);
    //   }
    // } else {
    //   if (context.mounted) {
    //     AppNotification.success(
    //         message: "Beneficiary deleted successfully.", context: context);
    //     if (beneficiary.beneficiaryType == BeneficiaryType.blue) {
    //       beneficiariesStateManager.blueBeneficiaries.remove(beneficiary);
    //     } else if (beneficiary.beneficiaryType == BeneficiaryType.phone) {
    //       beneficiariesStateManager.phoneBeneficiaries.remove(beneficiary);
    //     }
    //   }

    //   if (beneficiariesStateManager.typeIndex == 0) {
    //     bluePagingController.notifyPageRequestListeners(1);
    //   } else if (beneficiariesStateManager.typeIndex == 1) {
    //     phonePagingController.notifyPageRequestListeners(1);
    //   } else {
    //     billPagingController.notifyPageRequestListeners(1);
    //   }
    // }
  }

  showDeleteBeneficiaryDialog(Beneficiary beneficiary) {
    showDialog(
        context: appContext!,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            child: Container(
              height: 140,
              width: 273,
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Text(
                    "Delete Beneficiary",
                    style: AppTextStyles.subHeader.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.error),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Are you sure you want to remove ${beneficiary.firstName} as a beneficiary?",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.subText
                          .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            width: 273 / 2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.bgGrey),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5))),
                            child: Text(
                              "Cancel",
                              style: AppTextStyles.largeButtonText,
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          deleteBeneficiary(context, beneficiary);
                        },
                        child: Container(
                            width: 273 / 2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.bgGrey),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5))),
                            child: Text(
                              "Delete",
                              style: AppTextStyles.largeButtonText
                                  .copyWith(color: AppColors.error),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ),
          );
        });
  }

  BeneficiaryType type(String t) {
    switch (t) {
      case "phone":
        return BeneficiaryType.phone;
      case "blue-user":
        return BeneficiaryType.blue;
      case "bills":
        return BeneficiaryType.bills;
      default:
        return BeneficiaryType.blue;
    }
  }

  @override
  void dispose() {
    billPagingController.dispose();
    bluePagingController.dispose();
    phonePagingController.dispose();
    super.dispose();
  }
}
