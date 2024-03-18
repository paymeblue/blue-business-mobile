import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/chat_user/message/blue_message.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MessageTile extends StatelessWidget {
  final BlueMessage message;
  final String? avatar;
  final bool mergeTime;
  const MessageTile(
      {super.key, required this.message, this.avatar, this.mergeTime = false});

  @override
  Widget build(BuildContext context) {
    return message.senderId == locator<AppStateValues>().wallet!.walletCode
        ? senderTile()
        : receiverTile();
  }

  Widget senderTile() {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 320, minHeight: 40),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    )),
                child: Align(
                  alignment: Alignment.center,
                  widthFactor: 1,
                  child: Text(
                    message.message,
                    style: AppTextStyles.smallText.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              if (!mergeTime) ...[
                4.verticalGap,
                Text(
                  DateFormat.jm().format(DateTime.parse(message.timeStamp)),
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor,
                  ),
                )
              ]
            ],
          ),
          12.horizontalGap,
          mergeTime
              ? 38.horizontalGap
              : BlueAvatar(
                  radius: 19,
                  imageUrl: avatar,
                )
        ],
      ),
    );
  }

  Widget receiverTile() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          mergeTime
              ? 38.horizontalGap
              : BlueAvatar(
                  radius: 19,
                  imageUrl: avatar,
                ),
          12.horizontalGap,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 320, minHeight: 40),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    )),
                child: Align(
                  alignment: Alignment.center,
                  widthFactor: 1,
                  child: Text(
                    message.message,
                    style: AppTextStyles.smallText.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor),
                  ),
                ),
              ),
              if (!mergeTime) ...[
                4.verticalGap,
                Text(
                  DateFormat.jm().format(DateTime.parse(message.timeStamp)),
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor,
                  ),
                )
              ]
            ],
          ),
        ],
      ),
    );
  }
}
