import 'dart:io';

import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/chat_state_manager.dart';
import 'package:blue_business/core/managers/messaging_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/conversations/view.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ConversationViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late MessagingStateManager messagingStateManager;
  late ChatStateManager chatStateManager;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    chatStateManager =
        Provider.of<ChatStateManager>(appContext!, listen: false);
    messagingStateManager =
        Provider.of<MessagingStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
    setMessages();
    Timeout.resetTimer();
  }

  late Size size;

  List<Message> messages = [];

  setMessages() => messages = [
        Message(
            message: "Hi, can you please send me money?",
            dateTime: DateTime(2023, 05, 08, 21, 12).toIso8601String(),
            sender: "FM",
            type: MessageType.received),
        Message(
            message: "Sure, I will send you \$400,000 naira shortly",
            dateTime: DateTime(2023, 05, 08, 21, 15).toIso8601String(),
            sender: "SY",
            type: MessageType.sent),
        Message(
            message: "Semira yesufu just sent \$400,000 Click here.",
            dateTime: DateTime(2023, 05, 08, 21, 20).toIso8601String(),
            sender: "SY",
            type: MessageType.payment),
        Message(
            message: "Thank you Odogwu 1",
            dateTime: DateTime(2023, 05, 08, 22, 12).toIso8601String(),
            sender: "FM",
            type: MessageType.received),
      ];

  ScrollController scrollController = ScrollController();

  onSend() {
    List<Message> m = messages;
    try {
      if (chatStateManager.message.text.isNotEmpty ||
          chatStateManager.media.isNotEmpty ||
          chatStateManager.docName.isNotEmpty) {
        m.add(Message(
            message: chatStateManager.message.text,
            dateTime: DateTime.now().toIso8601String(),
            image: chatStateManager.media,
            sender: "SY",
            doc: chatStateManager.doc,
            docName: chatStateManager.docName,
            type: MessageType.sent));

        chatStateManager.media = "";
        chatStateManager.docName = "";
        chatStateManager.doc = null;
        messages = m;
        formKey.currentState!.reset();

        Future.delayed(const Duration(milliseconds: 2500), () {
          m.add(Message(
              message: "Dummy reply",
              dateTime: DateTime.now().toIso8601String(),
              image: chatStateManager.media,
              sender: "FM",
              doc: chatStateManager.doc,
              docName: chatStateManager.docName,
              type: MessageType.received));

          chatStateManager.media = "";
          chatStateManager.docName = "";
          chatStateManager.doc = null;
          messages = m;

          double end = scrollController.position.maxScrollExtent + 80;
          scrollController.animateTo(end,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut);
        });
        chatStateManager.message.clear();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          double end = scrollController.position.maxScrollExtent + 80;
          scrollController.animateTo(end,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut);
        });
      }
    } catch (e) {
      // log(e.toString());
    }
  }

  pickImageFromCamera() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);

    if (image != null) {
      chatStateManager.media = image.path;
    }
  }

  int? _pages;
  int? get pages => _pages;
  set pages(int? p) {
    _pages = p;
    notifyListeners();
  }

  pickImageFromGalery() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      chatStateManager.media = image.path;
    }
  }

  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx', 'doc'],
    );

    if (result != null) {
      String? path = result.files.single.path;
      if (path != null) {
        File file = File(path);
        chatStateManager.docName = result.files.single.name;
        chatStateManager.doc = file;
      }
    }
  }

  List<AttachmentOption> options() {
    return [
      AttachmentOption(
          icon: icon(Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              AppAssets.blueBgLogo,
              fit: BoxFit.scaleDown,
              height: 18,
              width: 18,
            ),
          )),
          title: "Blue wallet ID",
          onTap: () {
            Navigator.pop(appContext!);
            chatStateManager.isScanning = false;
            appStateManager.walletId = true;
          }),
      AttachmentOption(
          icon: icon(SvgPicture.asset(
            AppAssets.scanBlueIcon,
            fit: BoxFit.scaleDown,
            height: 18,
            width: 18,
          )),
          title: "QR - Code",
          onTap: () {
            Navigator.pop(appContext!);
            chatStateManager.isScanning = true;
            appStateManager.walletId = true;
          }),
      AttachmentOption(
          icon: icon(SvgPicture.asset(
            AppAssets.cameraIcon,
            fit: BoxFit.scaleDown,
            height: 18,
            width: 18,
            theme: SvgTheme(currentColor: AppColors.primaryColor),
          )),
          title: "Camera",
          onTap: () async {
            Navigator.pop(appContext!);
            await pickImageFromCamera();
          }),
      AttachmentOption(
          icon: icon(SvgPicture.asset(
            AppAssets.photoLibraryIcon,
            fit: BoxFit.scaleDown,
            height: 18,
            width: 18,
            theme: SvgTheme(currentColor: AppColors.primaryColor),
          )),
          title: "Photo & Video Library",
          onTap: () async {
            Navigator.pop(appContext!);
            await pickImageFromGalery();
          }),
      AttachmentOption(
          icon: icon(SvgPicture.asset(
            AppAssets.documentIcon,
            fit: BoxFit.scaleDown,
            height: 18,
            width: 18,
            theme: SvgTheme(currentColor: AppColors.primaryColor),
          )),
          title: "Documents",
          onTap: () async {
            Navigator.pop(appContext!);
            await pickFile();
          })
    ];
  }

  Widget icon(Widget i) {
    return Container(
      height: 38,
      width: 38,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: i,
    );
  }

  showAttachmentBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: appContext!,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Container(
            width: size.width,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Share attachment",
                  style: AppTextStyles.subHeader.copyWith(
                      fontSize: 16.5,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textcolor),
                ),
                const SizedBox(height: 20),
                ...List.generate(options().length, (index) {
                  return GestureDetector(
                    onTap: options()[index].onTap,
                    child: Container(
                      width: size.width,
                      height: 60,
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          options()[index].icon,
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Text(
                            options()[index].title,
                            style: AppTextStyles.subHeader
                                .copyWith(color: AppColors.textcolor),
                          )),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                            color: AppColors.textcolor,
                          )
                        ],
                      ),
                    ),
                  );
                })
              ],
            ),
          );
        });
  }

  @override
  void dispose() {
    scrollController.dispose();
    Timeout.dispose();
    super.dispose();
  }
}

class AttachmentOption {
  final Widget icon;
  final String title;
  final VoidCallback onTap;

  AttachmentOption(
      {required this.icon, required this.title, required this.onTap});
}
