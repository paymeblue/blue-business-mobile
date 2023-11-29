import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/models/beneficiary.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_loader.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class PaymentMethodPagesViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late PaymentStateManager paymentStateManager;
  late Size size;

  init(BuildContext context) async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    paymentStateManager =
        Provider.of<PaymentStateManager>(appContext!, listen: false);
    if (paymentStateManager.method == PaymentMethod.phone) {
      await getAllContacts(context);
    }

    size = MediaQuery.of(appContext!).size;
  }

  blueInit(context) {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    paymentStateManager =
        Provider.of<PaymentStateManager>(appContext!, listen: false);

    bluePagingController.addPageRequestListener((pageKey) {
      getBlueBeneficiaries(context, pageKey);
    });
    size = MediaQuery.of(appContext!).size;
  }

  String? onRecipientNameChanged(String? val) {
    paymentStateManager.recipientName = val ?? "";
    return val;
  }

  String? onRecipientNameSaved(String? val) {
    paymentStateManager.recipientName = val ?? "";
    return val;
  }

  List<Beneficiary> _beneficiaries = [];

  List<Beneficiary> get beneficiaries => _beneficiaries;

  set beneficiaries(List<Beneficiary> list) {
    _beneficiaries = list;
    notifyListeners();
  }

  verifyReceiver(BuildContext context) async {
    appStateManager.paymentMethod = false;
    appStateManager.confirmPayment = true;
  }

  detect(BarcodeCapture capture, BuildContext context) {
    String value = capture.barcodes.first.rawValue!;
    mobileScannerController.stop();
    paymentStateManager.walletId = value;

    verifyReceiver(context);
  }

  showSelectNumberBottomSheet(Contact contact, int index) {
    List<Item> phones = <Item>[
      for (var i in contact.phones!)
        if (i.value != null) i
    ];

    showModalBottomSheet(
        isScrollControlled: true,
        context: appContext!,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Container(
              height: 300,
              width: size.width,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Text("Choose a number", style: AppTextStyles.header),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      itemCount: phones.length,
                      itemBuilder: (constext, i) {
                        return GestureDetector(
                          onTap: () {
                            String phone = phones[i]
                                .value!
                                .replaceAll("+234", "")
                                .replaceAll(" ", "");
                            paymentStateManager.phone = phone;
                            paymentStateManager.contactIndex = index;
                            paymentStateManager.recipientName =
                                "${contact.givenName} ${contact.middleName} ${contact.familyName ?? ""}";
                            nameController.text =
                                "${contact.givenName} ${contact.middleName ?? ""} ${contact.familyName ?? ""}";
                            controller.text = phone;
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 40,
                            decoration: const BoxDecoration(),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      shape: BoxShape.circle),
                                  child: Image.asset(AppAssets.phoneImage),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Text(
                                    phones[i].value!,
                                    style: AppTextStyles.subHeader.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, i) =>
                          const SizedBox(height: 20),
                    ),
                  ),
                ],
              ));
        });
  }

  MobileScannerController mobileScannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );

  String? onWalletIdChanged(String? val) {
    String s = val ?? "";
    if (!(RegExp((r"[a-zA-Z]+?").toString()).hasMatch(s))) {
      s = "+234${s[0] == "0" ? s.replaceFirst("0", "") : s}";
    }
    paymentStateManager.walletId = s;
    return val;
  }

  TextEditingController controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController walletIdController = TextEditingController();

  onSelectContact(Contact contact) {
    if (contact.phones != null &&
        contact.phones!.length == 1 &&
        contact.phones![0].value != null) {
      paymentStateManager.phone = contact.phones![0].value ?? "";
      paymentStateManager.recipientName =
          "${contact.givenName} ${contact.familyName ?? ""}";
      nameController.text = "${contact.givenName} ${contact.familyName ?? ""}";
      controller.text = contact.phones![0].value ?? "";
    }
  }

  Future<String?> onWalletIdSaved(String? val) async {
    if (val != null && val.isNotEmpty) {
      paymentStateManager.contacts =
          await ContactsService.getContacts(query: val);
    } else {
      paymentStateManager.contacts = await ContactsService.getContacts();
    }
    return val;
  }

  goToPasscodeScreen(BuildContext context) {
    appStateManager.passcode = true;
  }

  Future<String?> onSearchContactsChanged(String? val) async {
    if (val != null && val.isNotEmpty) {
      paymentStateManager.contacts =
          await ContactsService.getContacts(query: val);
    } else {
      paymentStateManager.contacts = await ContactsService.getContacts();
    }
    return val;
  }

  String? onSearchBeneficiariesSaved(String? val) {
    search(val ?? "");
    return val;
  }

  String? onSearchBeneficiariesChanged(String? val) {
    search(val ?? "");
    return val;
  }

  search(String v) {
    List<Beneficiary> wallets = [];
    if (v.isNotEmpty) {
      for (var element in allBeneficiaries) {
        if (element.identifier.toLowerCase().startsWith(v.toLowerCase())) {
          wallets.add(element);
        }
      }
    } else {
      wallets = allBeneficiaries;
    }
    beneficiaries = wallets;
  }

  String? onSearchContactsSaved(String? val) {
    return val;
  }

  getAllContacts(BuildContext context) async {
    AppLoader.showOverlay(context);
    PermissionStatus status = await Permission.contacts.status;
    if (status.isGranted) {
      paymentStateManager.contacts = await ContactsService.getContacts();
    } else {
      await Permission.contacts.request().then((value) async {
        paymentStateManager.contacts = await ContactsService.getContacts();
      });
    }
    AppLoader.hide();
  }

  onPhoneChanged(PhoneNumber n) {
    paymentStateManager.phone = n.number;
    paymentStateManager.contactIndex = null;
  }

  onPhoneSaved(PhoneNumber? n) {
    paymentStateManager.phone = n!.number;
    paymentStateManager.contactIndex = null;
  }

  List<Beneficiary> _allBeneficiaries = [], _recent = [];
  List<Beneficiary> get allBeneficiaries => _allBeneficiaries;
  List<Beneficiary> get recentBeneficiaries => _recent;
  set allBeneficiaries(List<Beneficiary> l) {
    _allBeneficiaries = l;
    notifyListeners();
  }

  set recentBeneficiaries(List<Beneficiary> l) {
    _recent = l;
    notifyListeners();
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

  int pageSize = 5;

  final PagingController<int, Beneficiary> bluePagingController =
      PagingController(firstPageKey: 1);

  getBlueBeneficiaries(BuildContext context, int page) async {
    // AppLoader.showOverlay(context);
    // try {
    //   var response = await paymentService.getAllBeneficiaries(
    //       page: page, limit: pageSize, type: BeneficiaryType.blue);

    //   if (!response['status']) {
    //     AppNotification.error(message: response[''], context: appContext!);
    //   } else {
    //     List data = response['data']['data'];
    //     if (data.isNotEmpty) {
    //       allBeneficiaries = data.map<Beneficiary>((e) {
    //         return Beneficiary(
    //             id: e["id"],
    //             identifier: e["identifier"],
    //             beneficiaryType: type(e["type"]),
    //             firstName: e["first_name"],
    //             lastName: e["last_name"]);
    //       }).toList();
    //     }

    //     final isLastPage = (page * pageSize) > allBeneficiaries.length;
    //     if (isLastPage) {
    //       bluePagingController.appendLastPage(allBeneficiaries);
    //     } else {
    //       bluePagingController.appendPage(allBeneficiaries, page + 1);
    //     }
    //   }
    // } catch (pageError) {
    //   bluePagingController.error = pageError;
    // }
    // if (context.mounted) getRecent(context);
  }

  getRecent(BuildContext context) async {
    // var resp = await paymentService.getRecentlyPaid();

    // AppLoader.hide();
    // if (!resp['status']) {
    //   AppNotification.error(message: resp[''], context: appContext!);
    // } else {
    //   List data = resp['data']['beneficiaries'];
    //   // log(data.toString());
    //   if (data.isNotEmpty) {
    //     recentBeneficiaries = data.map<Beneficiary>((e) {
    //       return Beneficiary(
    //           id: e["id"] ?? 0,
    //           identifier: e["wallet_code"],
    //           beneficiaryType: BeneficiaryType.blue,
    //           firstName: e["first_name"],
    //           lastName: e["last_name"]);
    //     }).toList();
    //   }
    // }
  }

  @override
  void dispose() {
    controller.dispose();
    walletIdController.dispose();
    bluePagingController.dispose();
    mobileScannerController.dispose();
    super.dispose();
  }
}
