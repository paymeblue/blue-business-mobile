import 'dart:async';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/chat_service/chat_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dash_service/dash_service.dart';
import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_receiver/response/chat_receiver_response.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class StartConversationViewModel extends BaseViewModel {
  late Size size;
  DashService dashService = DashService();
  ChatService chatService = ChatService();

  init(BuildContext context) {
    size = context.mediaQuery.size;
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

  goBack(BuildContext context) {
    Provider.of<AppStateValues>(context, listen: false).hasNewMessage = false;
    context.go(RoutePaths.messagePath);
  }

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

  TextEditingController searchController = TextEditingController();
  TextEditingController identifierController = TextEditingController();

  List<PopupModel> popupItems(Contact contact, BuildContext context) {
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
                phone = selectedCountry!.dialCode + phone;
                identifierController.text =
                    phone.replaceAll((RegExp(r'[^0-9]')), "");
                BlueBottomSheet.contact(identifierController, onConfirm: () {
                  getPeer(context);
                });
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

  getAllContacts() async {
    loadingContacts = true;
    try {
      PermissionStatus status = await Permission.contacts.status;
      if (status.isGranted) {
        contacts = await ContactsService.getContacts();
      } else {
        await Permission.contacts.request().then((value) async {
          contacts = await ContactsService.getContacts();
        });
      }
    } catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
    }

    loadingContacts = false;
  }

  getPeer(BuildContext context) async {
    AppLoader.start();

    ChatReceiverResponse resp = await dashService
        .getReceiver(formatIDentifier())
        .onError((error, stackTrace) {
      return ChatReceiverResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });
    if (resp.success) {
      ChatResponseData recipient = resp.data!;
      if (context.mounted) {
        context.go(RoutePaths.chatDetailsPath,
            extra: {"peer": recipient, "unread": 0});
      }
    } else {
      AppNotification.error(message: resp.message);
    }
    identifierController.clear();
    AppLoader.stop();
  }

  String formatIDentifier() {
    if (identifierController.text.contains(RegExp(r'[A-Za-z]'))) {
      return identifierController.text;
    } else {
      String number = identifierController.text.replaceAll(" ", "");
      if (number.startsWith("0")) {
        number = "234${number.substring(1)}";
      } else if (number.startsWith("+")) {
        number = number.replaceFirst("+", "");
      }
      return number;
    }
  }
}
