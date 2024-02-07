import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/chat_user/chat/chat.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/dashboard_pages/message/widget/chat_tile.dart';
import 'package:blue_business/widgets/paging/error.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class MessageHomeView extends StatefulWidget {
  const MessageHomeView({super.key});

  @override
  State<MessageHomeView> createState() => _MessageHomeViewState();
}

class _MessageHomeViewState extends State<MessageHomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<MessageHomeViewModel>(
      model: MessageHomeViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              height: model.size.height,
              width: model.size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerAndActions(model),
                  25.verticalGap,
                  Expanded(
                    child: chatRoomStreamBuilder(model),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget chatRoomStreamBuilder(MessageHomeViewModel model) {
    return StreamBuilder(
      stream: model.chatService.getChatRooms(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return PagingError.firstPage(snapshot.error.toString(), () {});
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BlueLoadingTile.withImage(),
            itemCount: 4,
            separatorBuilder: (context, index) => 20.verticalGap,
          );
        } else if (!snapshot.hasData) {
          return emptyStateWidget(model);
        } else if (snapshot.data!.isEmpty) {
          return emptyStateWidget(model);
        }
        return ListView.separated(
          itemBuilder: (ctx, i) {
            Chat chat = snapshot.data![i];
            return ChatTile(
              chat: chat,
              onTap: () {
                model.onTileTap(chat, context);
              },
            );
          },
          separatorBuilder: (ctx, i) => 12.verticalGap,
          itemCount: snapshot.data!.length,
        );
      },
    );
  }

  Widget emptyStateWidget(MessageHomeViewModel model) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 52,
            width: 52,
            padding: const EdgeInsets.all(13),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.midGrey,
            ),
            child: AppAssets.images.navbarIcons.active.message.svg(),
          ),
          12.verticalGap,
          Text(
            "No conversations yet",
            style: AppTextStyles.header.copyWith(fontSize: 18.5),
          ),
          GestureDetector(
            onTap: () {
              model.goTostartConversation(context);
            },
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(),
              child: Text(
                "Start chat",
                style: AppTextStyles.subHeader.copyWith(
                  color: AppColors.primary,
                  fontSize: 15.5,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget headerAndActions(MessageHomeViewModel model) {
    return Row(
      children: [
        Text(
          "Chats",
          style: AppTextStyles.header,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            model.goToqrScan(context);
          },
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.grey,
                )),
            child: AppAssets.images.icons.scan.svg(),
          ),
        ),
        12.horizontalGap,
        GestureDetector(
          onTap: () {
            model.goTostartConversation(context);
          },
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.grey,
                )),
            child: AppAssets.images.icons.newMessage.svg(),
          ),
        ),
      ],
    );
  }
}
