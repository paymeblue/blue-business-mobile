import 'dart:async';

import 'package:blue_business/core/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/popup/popup.dart';
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
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';

class PhonePaymentViewModel extends BaseViewModel {
  late Size size;
  late InitiateTransactionData data;

  init(BuildContext context, InitiateTransactionData d) {
    size = context.mediaQuery.size;

    data = d;
    setSelectedCountry();
    getAllContacts();
  }

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  onChanged(String? v) {
    notifyListeners();
  }

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController recipientController = TextEditingController();

  List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;
  set contacts(List<Contact> c) {
    _contacts = c;
    notifyListeners();
  }

  List<Contact> _allContacts = [];
  List<Contact> get allContacts => _allContacts;
  set allContacts(List<Contact> c) {
    _allContacts = c;
    notifyListeners();
  }

  bool _loading = false;
  bool get loadingContacts => _loading;
  set loadingContacts(bool ld) {
    _loading = ld;
    notifyListeners();
  }

  List<PopupModel> popupItems(Contact contact) {
    return contact.phones
        .map(
          (e) => PopupModel(
            title: e.number,
            icon: const SizedBox(
              height: 18,
              width: 18,
              child: Icon(
                Icons.phone_enabled_outlined,
                color: AppColors.blue,
                size: 20,
              ),
            ),
            onTap: () {
              String phone = e.number;
              if (phone.startsWith(selectedCountry.dialCode)) {
                phone = phone.replaceFirst(selectedCountry.dialCode, "");
              }
              if (phone.startsWith("0")) {
                phone = phone.substring(1);
              }
              phoneController.text = phone.replaceAll((RegExp(r'[^0-9]')), "");
              recipientController.text = contact.displayName;
              notifyListeners();
            },
          ),
        )
        .toList();
  }

  Timer? searchTimer;
  Future<String?> onSearchContactsChanged(String? val) async {
    if (searchTimer != null) {
      searchTimer!.cancel();
    }

    searchTimer = Timer(const Duration(milliseconds: 1500), () async {
      loadingContacts = true;
      if (val != null && val.isNotEmpty) {
        contacts = allContacts
            .where(
                (v) => v.displayName.toLowerCase().contains(val.toLowerCase()))
            .toList();
      } else {
        contacts = allContacts;
      }
      loadingContacts = false;
    });
    return val;
  }

  Future getAllContacts() async {
    loadingContacts = true;
    try {
      var status = await Permission.contacts.status;
      if (status.isGranted) {
        allContacts = await FlutterContacts.getContacts(withProperties: true);
      } else {
        await Permission.contacts.request().then((v) async {
          if (v.isGranted) {
            allContacts = await FlutterContacts.getContacts();
          }
        });
      }
    } catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
    }

    contacts = allContacts;

    loadingContacts = false;
  }

  // onButtonTap(BuildContext context) {
  //   verify().then((value) {
  //     log(value.toString());
  //
  //   });
  // }

  verify(BuildContext context) async {
    AppLoader.start();

    VerifiedReceiverRequest request = VerifiedReceiverRequest(
      receiver: phoneController.text.validPhone(selectedCountry),
      receiverName: recipientController.text,
      transactionId: data.transactionId,
    );

    VerifiedReceiverResponse resp = await TransactionService()
        .verifyReceiver(request)
        .onError((error, stackTrace) {
      return VerifiedReceiverResponse(
          message: AppErrorHandler.getErrorMessage(error, {
        "request_name": "verify_receiver",
        "request": request.toString(),
        "response_model": "VerifiedReceiverResponse"
      }));
    });

    if (resp.status == "success") {
      if (context.mounted) {
        ConfirmTransactionViewArgs args = ConfirmTransactionViewArgs(
          mode: PaymentMode.phone,
          receiver: resp.data!,
          transactionId: data.transactionId,
        );
        context.push(RoutePaths.confirmTransaction, extra: args);
      }
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }
}
