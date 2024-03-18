import 'dart:convert';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_user/chat/chat.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatTile extends StatelessWidget {
  final Chat chat;
  final VoidCallback onTap;
  const ChatTile({super.key, required this.chat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.brightBlue,
      highlightColor: AppColors.paleBlue,
      onTap: onTap,
      child: Container(
        height: 75,
        width: context.mediaQuery.size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlueAvatar(
              radius: 19,
              imageUrl: peer().displayPic,
            ),
            10.horizontalGap,
            Expanded(
              child: textColumn(),
            ),
            10.horizontalGap,
            timeColumn()
          ],
        ),
      ),
    );
  }

  Column timeColumn() {
    bool isSender =
        peer() == ChatResponseData.fromJson(jsonDecode(chat.receiver));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          DateFormat.jm().format(DateTime.parse(chat.timeStamp)),
          style: AppTextStyles.smallText.copyWith(
            color: AppColors.primary,
          ),
        ),
        if (!isSender && chat.unreadCount > 0)
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primary),
            alignment: Alignment.center,
            child: Text(
              chat.unreadCount.toString(),
              style: AppTextStyles.smallText,
            ),
          )
      ],
    );
  }

  Column textColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${peer().firstName} ${peer().lastName}",
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        Text(
          chat.message ?? "You have just started this conversation",
          style: AppTextStyles.smallText.copyWith(
            color: AppColors.bodyTextColor,
            fontStyle: chat.message == null ? FontStyle.italic : null,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }

  ChatResponseData peer() {
    ChatResponseData sender =
        ChatResponseData.fromJson(jsonDecode(chat.sender));
    ChatResponseData receiver =
        ChatResponseData.fromJson(jsonDecode(chat.receiver));
    if (receiver.walletCode == locator<AppStateValues>().wallet!.walletCode) {
      return sender;
    } else {
      return receiver;
    }
  }
}
