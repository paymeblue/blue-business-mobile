import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_user/message/blue_message.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/modules/chat_details/widgets/message_tile.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'view_model.dart';

class ChatDetailView extends StatefulWidget {
  final ChatResponseData recipient;
  final int unreadCount;
  const ChatDetailView({
    super.key,
    required this.recipient,
    this.unreadCount = 0,
  });

  @override
  State<ChatDetailView> createState() => _ChatDetailViewState();
}

class _ChatDetailViewState extends State<ChatDetailView> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      model: ChatDetailsViewModel(),
      onModelReady: (model) =>
          model.init(context, widget.unreadCount, widget.recipient),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return Scaffold(
          backgroundColor: const Color(0xFfF6F6F6),
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context, widget.recipient);
            },
            icon: Icons.arrow_back_ios_new,
            title: appbarTitleWidget(model),
          ),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: messageStreamBuilder(model),
                ),
              ),
              bottomNavContainer(model)
            ],
          ),
        );
      },
    );
  }

  Widget messageStreamBuilder(ChatDetailsViewModel model) {
    return StreamBuilder(
      stream: model.chatService.getMessages(widget.recipient),
      builder: (context, snapshot) {
        model.gettingMessage =
            snapshot.connectionState == ConnectionState.waiting;
        if (snapshot.hasError) {
          return PagingError.firstPage(snapshot.error.toString(), () {});
        } else if (!snapshot.hasData) {
          return NoItems.firstPage("We could not find any massages");
        } else if (snapshot.data!.isEmpty) {
          return NoItems.firstPage("No messages yet");
        }
        model.lastMessage = snapshot.data![snapshot.data!.length - 1];
        return ListView.separated(
          padding: const EdgeInsets.only(top: 35, bottom: 12),
          shrinkWrap: true,
          controller: model.controller,
          itemBuilder: (ctx, i) {
            BlueMessage message = snapshot.data![i];
            bool mergeTime = false;
            DateTime? previousTime;

            DateTime currentTime = DateTime.parse(message.timeStamp);
            if (i > 0) {
              previousTime = DateTime.parse(snapshot.data![i - 1].timeStamp);
            }
            if (i != snapshot.data!.length - 1) {
              DateTime nextTime =
                  DateTime.parse(snapshot.data![i + 1].timeStamp);

              String current = message.senderId;
              String prev = snapshot.data![i + 1].senderId;
              if ((nextTime.difference(currentTime) <=
                      const Duration(minutes: 1)) &&
                  current == prev) {
                mergeTime = true;
              }
            }

            return Column(
              children: [
                if (previousTime == null ||
                    (previousTime.year != currentTime.year) ||
                    (previousTime.month != currentTime.month) ||
                    (previousTime.day != currentTime.day)) ...[
                  dateIndicator(DateTime.parse(message.timeStamp)),
                  20.verticalGap,
                ],
                MessageTile(
                  message: message,
                  avatar: message.senderId ==
                          locator<AppStateValues>().wallet!.walletCode
                      ? locator<AppStateValues>().currentUser!.displayPic
                      : widget.recipient.displayPic,
                  mergeTime: mergeTime,
                ),
              ],
            );
          },
          separatorBuilder: (ctx, i) => 4.verticalGap,
          itemCount: snapshot.data!.length,
        );
      },
    );
  }

  Widget dateIndicator(DateTime date) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
          color: AppColors.bodyTextColor,
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        getDate(date),
        style: AppTextStyles.smallText,
      ),
    );
  }

  String getDate(DateTime date) {
    DateTime now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return "Today";
    } else if (date == now.subtract(const Duration(days: 1))) {
      return "Yesterday";
    } else if (date.year == now.year) {
      return DateFormat.MMMd().format(date);
    } else {
      return DateFormat.yMMMd().format(date);
    }
  }

  Widget bottomNavContainer(ChatDetailsViewModel model) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.only(bottom: 35, left: 16, right: 16, top: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   height: 24,
          //   width: 24,
          //   decoration: const BoxDecoration(),
          //   child: const Icon(
          //     Icons.add,
          //     color: AppColors.textColor,
          //     size: 22,
          //   ),
          // ),
          // 7.horizontalGap,
          // Container(
          //   height: 24,
          //   width: 24,
          //   decoration: const BoxDecoration(),
          //   child: AppAssets.images.icons.camera.svg(),
          // ),
          // 10.horizontalGap,
          Expanded(
            child: BlueTextField.message(
              hint: "Write a message...",
              controller: model.messageController,
              node: model.messageFieldNode,
            ),
          ),
          5.horizontalGap,
          GestureDetector(
            onTap: () {
              model.saveChatRoom(widget.recipient);
            },
            child: Container(
              height: 36,
              width: 36,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: AppAssets.images.icons.send.svg(),
            ),
          )
        ],
      ),
    );
  }

  Column appbarTitleWidget(ChatDetailsViewModel model) {
    return Column(
      children: [
        Text(
          "${widget.recipient.firstName} ${widget.recipient.lastName}",
          style: AppTextStyles.header.copyWith(fontSize: 18.5),
        ),
        GestureDetector(
          onTap: () {
            model.copyWalletId(widget.recipient.walletCode);
          },
          child: Container(
            width: 215,
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Blue Wallet",
                      style: AppTextStyles.subText
                          .copyWith(color: AppColors.primary),
                    ),
                    TextSpan(
                      text: " - ${widget.recipient.walletCode}",
                      style: AppTextStyles.subText
                          .copyWith(color: AppColors.primary),
                    ),
                  ]),
                ),
                7.horizontalGap,
                AppAssets.images.icons.copy.svg(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
