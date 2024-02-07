import 'dart:convert';
import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/chat_service/chat_service.dart';
import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_user/chat/chat.dart';
import 'package:blue_business/core/models/chat_user/message/blue_message.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ChatDetailsViewModel extends BaseViewModel {
  late Size size;
  late AppStateValues stateValues;
  ChatService chatService = ChatService();

  init(BuildContext context, int count, ChatResponseData user) {
    size = context.mediaQuery.size;
    stateValues = Provider.of<AppStateValues>(context, listen: false);

    messageFieldNode.addListener(() {
      if (messageFieldNode.hasFocus) {
        Future.delayed(const Duration(milliseconds: 500), () {
          controller = ScrollController(
              initialScrollOffset: controller.position.maxScrollExtent);
        });
      }
    });

    List<String> ids = [
      user.walletCode,
      locator<AppStateValues>().wallet!.walletCode
    ];
    ids.sort();

    String channelId = ids.join("_");
    stateValues.channelId = channelId;

    chatService.listenForChanges(user.walletCode);

    stateValues.unreadCount = count;
  }

  scrollDown() {
    controller.jumpTo(
      controller.position.maxScrollExtent,
    );
  }

  @override
  dispose() {
    messageController.dispose();
    messageFieldNode.dispose();
    controller.dispose();
    super.dispose();
  }

  late BlueMessage lastMessage;

  goBack(BuildContext context, ChatResponseData user) {
    if (lastMessage.senderId != locator<AppStateValues>().wallet!.walletCode) {
      List<String> ids = [
        user.walletCode,
        locator<AppStateValues>().wallet!.walletCode
      ];
      ids.sort();

      String channelId = ids.join("_");
      ChatResponseData me = ChatResponseData(
        firstName: locator<AppStateValues>().currentUser!.firstName,
        lastName: locator<AppStateValues>().currentUser!.lastName,
        walletCode: locator<AppStateValues>().wallet!.walletCode,
        fcmToken: locator<AppStateValues>().fcmToken,
        displayPic: locator<AppStateValues>().currentUser!.displayPic,
      );
      Chat chat = Chat(
        channelId: channelId,
        receiver: jsonEncode(user.toJson()),
        fcmToken: locator<AppStateValues>().fcmToken,
        sender: jsonEncode(me.toJson()),
        timeStamp: lastMessage.timeStamp,
        senderName: "${user.firstName} ${user.lastName}",
        peerToken: user.fcmToken,
        message: lastMessage.message,
        unreadCount: 0,
      );

      chatService.updateChatRoom(chat.copyWith(updateType: "unread"));
      stateValues.unreadCount = 0;
    }
    stateValues.hasNewMessage = false;
    stateValues.channelId = "";
    context.go(RoutePaths.messagePath);
  }

  copyWalletId(String walletId) {
    Clipboard.setData(ClipboardData(text: walletId)).then((value) {
      BlueToast.primaryWithcon("Copied to clipboard");
    });
  }

  TextEditingController messageController = TextEditingController();
  ScrollController controller = ScrollController();
  FocusNode messageFieldNode = FocusNode();

  bool _loading = false;
  bool get sending => _loading;
  set sending(bool v) {
    _loading = v;
    notifyListeners();
  }

  bool _gettingMessage = false;
  bool get gettingMessage => _gettingMessage;
  set gettingMessage(bool v) {
    _gettingMessage = v;
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 300), () => scrollDown());
  }

  saveChatRoom(ChatResponseData user) async {
    if (messageController.text.isNotEmpty) {
      sending = true;
      String m = messageController.text;
      messageController.clear();
      List<String> ids = [
        user.walletCode,
        locator<AppStateValues>().wallet!.walletCode
      ];
      ids.sort();

      String channelId = ids.join("_");
      ChatResponseData me = ChatResponseData(
        firstName: locator<AppStateValues>().currentUser!.firstName,
        lastName: locator<AppStateValues>().currentUser!.lastName,
        walletCode: locator<AppStateValues>().wallet!.walletCode,
        fcmToken: locator<AppStateValues>().fcmToken,
        displayPic: locator<AppStateValues>().currentUser!.displayPic,
      );

      BlueMessage message = BlueMessage(
        message: m,
        senderId: locator<AppStateValues>().wallet!.walletCode,
        timeStamp: DateTime.now().toIso8601String(),
      );

      Chat chat = Chat(
        channelId: channelId,
        receiver: jsonEncode(user.toJson()),
        fcmToken: user.fcmToken,
        sender: jsonEncode(me.toJson()),
        timeStamp: message.timeStamp,
        message: m,
        peerToken: user.fcmToken,
        senderName:
            "${locator<AppStateValues>().currentUser!.firstName} ${locator<AppStateValues>().currentUser!.lastName}",
        unreadCount: stateValues.unreadCount + 1,
      );

      await chatService.saveMessage(chat, message);

      sending = false;
      Future.delayed(const Duration(milliseconds: 500), () => scrollDown());
    }
  }
}
