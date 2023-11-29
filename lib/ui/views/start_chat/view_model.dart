import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/messaging_state_manager.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/core/models/nessages.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/login/view.dart';
// import 'package:blue_business/ui/views/message/view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_loader.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

class StartChatViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late PaymentStateManager paymentStateManager;
  late MessagingStateManager messagingStateManager;

  init(BuildContext context) async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    paymentStateManager =
        Provider.of<PaymentStateManager>(appContext!, listen: false);
    messagingStateManager =
        Provider.of<MessagingStateManager>(appContext!, listen: false);
    if (paymentStateManager.contacts.isEmpty) {
      await getAllContacts(context);
    }

    Timeout.resetTimer();
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

  onSelectContact(Contact contact) {
    if (contact.phones != null &&
        contact.phones!.length == 1 &&
        contact.phones![0].value != null) {
      paymentStateManager.phone = contact.phones![0].value ?? "";
      controller.text = contact.phones![0].value ?? "";

      showNewContactBottomSheet();
    }
  }

  TextEditingController controller = TextEditingController();

  String _newContact = "";
  String get newContact => _newContact;
  set newContact(String v) {
    _newContact = v;
    notifyListeners();
  }

  String? onNewContactChaged(String? v) {
    newContact = v ?? "";
    return v;
  }

  String? onNewContactSaved(String? v) {
    newContact = v ?? "";
    return v;
  }

  goToConversation(Chat v) {
    messagingStateManager.current = v;
    appStateManager.conversation = true;
    messagingStateManager.peer = "";
    appStateManager.startChat = false;
  }

  getPeer(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await chatService.getPeerDetails(
    //     identifier: messagingStateManager.peer);

    // AppLoader.hide();

    // if (!resp["status"]) {
    //   AppNotification.error(message: resp["message"], context: appContext!);
    // } else {
    //   var data = resp['data'];

    Chat c = Chat(
        peerId: "uuuuuu",
        peerfirstName: "John",
        peerlastName: "Doe",
        lastMessage: "",
        peerFcmToken: "dhdsjsksjsdkjsdkdsjdks",
        peerNotification: true,
        senderName: "",
        receiverToken: "",
        avatarUrl: "",
        timeStamp: DateTime.now().toIso8601String());

    goToConversation(c);
    // }
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
                            messagingStateManager.peer = phone;
                            Navigator.pop(context);
                            showNewContactBottomSheet();
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

  Future<String?> onSearchContactsChanged(String? val) async {
    if (val != null && val.isNotEmpty) {
      paymentStateManager.contacts =
          await ContactsService.getContacts(query: val);
    } else {
      paymentStateManager.contacts = await ContactsService.getContacts();
    }
    return val;
  }

  showNewContactBottomSheet() {
    showModalBottomSheet(
        context: appContext!,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return StatefulBuilder(builder: (context, setState) {
            return Container(
                height: MediaQuery.of(context).viewInsets.bottom + 300,
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "New Contact",
                        style: AppTextStyles.subHeader.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextFieldHeader(title: "Blue wallet ID/phone number"),
                    CustomTextField(
                      initialValue: messagingStateManager.peer,
                      hintText: "Blue wallet ID/phone number",
                      onChanged: (v) {
                        setState(() {
                          messagingStateManager.peer = v ?? "";
                        });
                      },
                      onSaved: (v) {
                        setState(() {
                          messagingStateManager.peer = v ?? "";
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: AppButton(
                          onTap: () {
                            Navigator.pop(context);

                            getPeer(context);
                          },
                          isActive: messagingStateManager.peer.isNotEmpty,
                          buttonText: "Save contact"),
                    ),
                  ],
                ));
          });
        });
  }
}
