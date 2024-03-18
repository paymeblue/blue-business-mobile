import 'dart:convert';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/chat_service/chat_service.dart';
import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_user/chat/chat.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MessageHomeViewModel extends BaseViewModel {
  late Size size;
  ChatService chatService = ChatService();

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goTostartConversation(BuildContext context) {
    context.go(RoutePaths.startConversationPath);
  }

  goToqrScan(BuildContext context) {
    context.go(RoutePaths.chatQrPath);
  }

  onTileTap(Chat chat, BuildContext context) {
    late ChatResponseData peer;
    ChatResponseData sender =
        ChatResponseData.fromJson(jsonDecode(chat.sender));
    ChatResponseData receiver =
        ChatResponseData.fromJson(jsonDecode(chat.receiver));
    if (receiver.walletCode == locator<AppStateValues>().wallet!.walletCode) {
      peer = sender;
    } else {
      peer = receiver;
    }
    int unreadCount = chat.unreadCount;
    if (peer == ChatResponseData.fromJson(jsonDecode(chat.sender))) {
      unreadCount = 0;
      chatService.updateChatRoom(
          chat.copyWith(unreadCount: unreadCount, updateType: "unread"));
    }
    context.go(RoutePaths.chatDetailsPath,
        extra: {"peer": peer, "unread": unreadCount});
  }
}
