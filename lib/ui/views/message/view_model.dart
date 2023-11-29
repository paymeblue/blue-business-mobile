import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/messaging_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';

class MessageViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late MessagingStateManager messagingStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    messagingStateManager =
        Provider.of<MessagingStateManager>(appContext!, listen: false);
    conversations = messagingStateManager.conversations;
  }

  bool _scanning = false;
  bool get isScanning => _scanning;

  set isScanning(bool v) {
    _scanning = v;
    notifyListeners();
  }

  goToConversation(Conversation v) {
    messagingStateManager.current = v;
    appStateManager.conversation = true;
  }

  MobileScannerController mobileScannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );

  List<Conversation> _conversations = [];
  List<Conversation> get conversations => _conversations;

  set conversations(List<Conversation> c) {
    _conversations = c;
    notifyListeners();
  }

  goToStartChat() {
    appStateManager.startChat = true;
  }

  String? onSearchChanged(String? v) {
    List<Conversation> c = [];
    if (v != null && v.isNotEmpty) {
      for (Conversation element in messagingStateManager.conversations) {
        if (element.firstName.contains(v) || element.lastName.contains(v)) {
          c.add(element);
        }
      }
    } else {
      c = messagingStateManager.conversations;
    }

    conversations = c;
    return v;
  }

  detect(BarcodeCapture capture) {
    String value = capture.barcodes.first.rawValue!;

    newContact = value;
    isScanning = false;
    mobileScannerController.stop();
    showNewContactBottomSheet();
  }

  String? onSearchSaved(String? v) {
    List<Conversation> c = [];
    if (v != null && v.isNotEmpty) {
      for (Conversation element in messagingStateManager.conversations) {
        if (element.firstName.contains(v) || element.lastName.contains(v)) {
          c.add(element);
        }
      }
    } else {
      c = messagingStateManager.conversations;
    }

    conversations = c;
    return v;
  }

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

  showNewContactBottomSheet() {
    showModalBottomSheet(
        isDismissible: false,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "New Contact",
                      style: AppTextStyles.subHeader
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Spacer(),
                  const TextFieldHeader(title: "Blue wallet ID/phone number"),
                  CustomTextField(
                    initialValue: newContact.isNotEmpty ? newContact : null,
                    hintText: "Blue wallet ID/phone number",
                    onChanged: onNewContactChaged,
                    onSaved: onNewContactSaved,
                  ),
                  const Spacer(),
                  Center(
                    child: AppButton(
                        onTap: () {
                          goToConversation(Conversation(
                              firstName: "John",
                              lastName: "Doe",
                              message: "",
                              dateTime: DateTime.now().toIso8601String()));
                          newContact = "";

                          Navigator.pop(context);
                        },
                        buttonText: "Save contact"),
                  ),
                ],
              ));
        });
  }

  @override
  void dispose() {
    mobileScannerController.dispose();
    super.dispose();
  }
}

class Conversation {
  final String firstName;
  final String lastName;
  final String message;
  final String dateTime;
  final String? image;
  final int unreadCount;

  Conversation(
      {required this.firstName,
      required this.lastName,
      required this.message,
      required this.dateTime,
      this.unreadCount = 0,
      this.image});
}
