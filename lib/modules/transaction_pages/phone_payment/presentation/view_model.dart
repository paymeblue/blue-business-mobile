import 'dart:async';
import 'dart:developer';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/popup/popup.dart';
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
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
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

  CountryCode? _country;
  CountryCode? get selectedCountry => _country;
  set selectedCountry(CountryCode? v) {
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

  bool _loading = false;
  bool get loadingContacts => _loading;
  set loadingContacts(bool ld) {
    _loading = ld;
    notifyListeners();
  }

  getAllContacts() async {
    loadingContacts = true;
    try {
      var status = await Permission.contacts.status;
      log(status.toString());
      if (status.isGranted) {
        contacts = await ContactsService.getContacts();
      } else {
        await Permission.contacts.request().then((v) async {
          log(v.toString());
          if (v.isGranted) {
            contacts = await ContactsService.getContacts();
          }
        });
      }
    } catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
    }

    loadingContacts = false;
  }

  List<PopupModel> popupItems(Contact contact) {
    return contact.phones!
        .map(
          (e) => PopupModel(
            title: e.value ?? "",
            icon: const SizedBox(
              height: 18,
              width: 18,
              child: Icon(
                Icons.phone_enabled_outlined,
                color: AppColors.primary,
                size: 20,
              ),
            ),
            onTap: () {
              if (e.value != null) {
                String phone = e.value!;
                if (phone.startsWith(selectedCountry!.dialCode)) {
                  phone = phone.replaceFirst(selectedCountry!.dialCode, "");
                }
                if (phone.startsWith("0")) {
                  phone = phone.substring(1);
                }
                phoneController.text =
                    phone.replaceAll((RegExp(r'[^0-9]')), "");
                recipientController.text = contact.displayName ?? "";
                notifyListeners();
              }
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
        contacts = await ContactsService.getContacts(query: val);
      } else {
        contacts = await ContactsService.getContacts();
      }
      loadingContacts = false;
    });
    return val;
  }

  onButtonTap(BuildContext context) {
    verify().then((value) {
      log(value.toString());
      if (value.status == "success") {
        if (context.mounted) {
          context.go(
              "${RoutePaths.confirmPaymentPath}/phone/${data.transactionId}",
              extra: value.data);
        }
      } else {
        AppNotification.error(message: value.message);
      }
    });
  }

  Future<VerifiedReceiverResponse> verify() async {
    AppLoader.start();

    VerifiedReceiverRequest request = VerifiedReceiverRequest(
      receiver: formatPhone(),
      transactionId: data.transactionId,
      receiverName: recipientController.text,
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

  String formatPhone() {
    String number = phoneController.text.replaceAll(" ", "");

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
    }
    if (number.startsWith(selectedCountry!.dialCode)) {
      number = number.replaceFirst(selectedCountry!.dialCode, "");
    }

    return selectedCountry!.dialCode + number;
  }
}
