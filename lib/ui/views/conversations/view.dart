import 'dart:io';

import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/chat_state_manager.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/conversations/view_model.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ConversationView extends StatefulWidget {
  const ConversationView({super.key});

  @override
  State<ConversationView> createState() => _ConversationViewState();

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.conversationPath,
        key: ValueKey(AppPages.conversationPath),
        child: const ConversationView());
  }
}

class _ConversationViewState extends State<ConversationView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ConversationViewModel>(
      model: ConversationViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (model) => model.dispose(),
      builder: (context, model, _) {
        return GestureDetector(
          onTap: () {
            Timeout.resetTimer();
          },
          onPanDown: (details) {
            Timeout.resetTimer();
          },
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 1,
              title: Stack(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (model.chatStateManager.media.isNotEmpty) {
                            model.chatStateManager.media = "";
                          } else if (model.chatStateManager.doc != null) {
                            model.chatStateManager.doc = null;
                            model.chatStateManager.docName = "";
                          } else {
                            model.appStateManager.conversation = false;
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1000),
                          margin: const EdgeInsets.only(left: 16),
                          height: 34,
                          width: 34,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: const Color(0xFFE5E6E8))),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.textcolor,
                            size: 16.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Favour Momoh",
                            style: AppTextStyles.header.copyWith(fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Blue Wallet - ",
                                      style: AppTextStyles.indicatorText
                                          .copyWith(
                                              fontSize: 14.5,
                                              fontWeight: FontWeight.w500)),
                                  TextSpan(
                                      text: "1234574574",
                                      style: AppTextStyles.subText.copyWith(
                                          fontWeight: FontWeight.w400)),
                                ]),
                              ),
                              const SizedBox(width: 10),
                              SvgPicture.asset(
                                AppAssets.copyIcon,
                                height: 13,
                                width: 13,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            body: Consumer<ChatStateManager>(
                builder: (context, chatStateManager, _) {
              return Container(
                height: model.size.height,
                width: model.size.width,
                decoration: const BoxDecoration(color: Color(0xFFF6F6F6)),
                child: Form(
                  key: model.formKey,
                  child: Column(
                    children: [
                      Expanded(
                          child: chatStateManager.media.isNotEmpty
                              ? Center(
                                  child: SingleChildScrollView(
                                      controller: model.scrollController,
                                      child: Image.file(
                                          File(chatStateManager.media))),
                                )
                              : chatStateManager.doc != null
                                  ? SingleChildScrollView(
                                      controller: model.scrollController,
                                      child: SizedBox(
                                          height: model.size.height - 250,
                                          width: model.size.width,
                                          child: SfPdfViewer.file(
                                              chatStateManager.doc!)))
                                  : MessageView(
                                      scrollController: model.scrollController,
                                      size: model.size,
                                      messages: model.messages,
                                    )),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(40, 145, 145, 145),
                                  offset: Offset(-5, -5),
                                  blurRadius: 15)
                            ]),
                        child: Column(
                          children: [
                            chatStateManager.docName.isNotEmpty
                                ? Container(
                                    margin: const EdgeInsets.all(12),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 8),
                                    // height: 65,
                                    width: model.size.width,
                                    decoration: BoxDecoration(
                                        color: AppColors.bgGrey,
                                        borderRadius: BorderRadius.circular(5)),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.attachment_outlined,
                                          color: AppColors.primaryColor,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Text(
                                            chatStateManager.docName,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppTextStyles.indicatorText
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : const SizedBox(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 40, top: 25, right: 20, left: 20),
                              child: Row(
                                children: [
                                  chatStateManager.doc == null &&
                                          chatStateManager.media.isEmpty
                                      ? Row(
                                          children: [
                                            GestureDetector(
                                              onTap: model
                                                  .showAttachmentBottomSheet,
                                              child: Icon(
                                                Icons.add,
                                                size: 24,
                                                color: AppColors.textcolor,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            GestureDetector(
                                              onTap: model.pickImageFromCamera,
                                              child: SvgPicture.asset(
                                                AppAssets.cameraIcon,
                                                height: 22,
                                                width: 22,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                          ],
                                        )
                                      : const SizedBox(),
                                  Expanded(
                                      child: MessageTextField(
                                    hintText: "Write a message",
                                    controller: chatStateManager.message,
                                    maxLines: 6,
                                    minLines: 1,
                                  )),
                                  const SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: model.onSend,
                                    child: Container(
                                      height: 45,
                                      width: 45,
                                      padding: const EdgeInsets.all(11),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.primaryColor),
                                      child: SvgPicture.asset(
                                        AppAssets.sendIcon,
                                        height: 17,
                                        width: 26,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}

class MessageView extends StatelessWidget {
  final List<Message> messages;
  final ScrollController scrollController;
  final Size size;
  const MessageView({
    super.key,
    required this.messages,
    required this.scrollController,
    required this.size,
  });

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ListView.builder(
          itemCount: messages.length,
          controller: scrollController,
          itemBuilder: (context, i) {
            if (messages[i].type == MessageType.received) {
              DateTime currentDate = DateTime.parse(messages[i].dateTime);
              DateTime? previousDate;
              if (i > 0) {
                previousDate = DateTime.parse(messages[i - 1].dateTime);
              }
              return Column(
                children: [
                  if (previousDate == null ||
                      (previousDate.year != currentDate.year) ||
                      (previousDate.month != currentDate.month) ||
                      (previousDate.day != currentDate.day))
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 15, bottom: 14),
                      decoration: BoxDecoration(
                          color: AppColors.bodyTextcolor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        getDate(DateTime.parse(messages[i].dateTime)),
                        style: AppTextStyles.smallText,
                      ),
                    ),
                  ReceivedMessageContainer(size: size, message: messages[i]),
                ],
              );
            } else {
              DateTime currentDate = DateTime.parse(messages[i].dateTime);
              DateTime? previousDate;
              if (i > 0) {
                previousDate = DateTime.parse(messages[i - 1].dateTime);
              }
              if (messages[i].type == MessageType.sent) {
                return Column(
                  children: [
                    if (previousDate == null ||
                        (previousDate.year != currentDate.year) ||
                        (previousDate.month != currentDate.month) ||
                        (previousDate.day != currentDate.day))
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 15, bottom: 14),
                        decoration: BoxDecoration(
                            color: AppColors.bodyTextcolor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          getDate(DateTime.parse(messages[i].dateTime)),
                          style: AppTextStyles.smallText,
                        ),
                      ),
                    SentMessageContainer(size: size, message: messages[i]),
                  ],
                );
              } else {
                DateTime currentDate = DateTime.parse(messages[i].dateTime);
                DateTime? previousDate;
                if (i > 0) {
                  previousDate = DateTime.parse(messages[i - 1].dateTime);
                }
                return Column(
                  children: [
                    if (previousDate == null ||
                        (previousDate.year != currentDate.year) ||
                        (previousDate.month != currentDate.month) ||
                        (previousDate.day != currentDate.day))
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 15, bottom: 14),
                        decoration: BoxDecoration(
                            color: AppColors.bodyTextcolor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          getDate(DateTime.parse(messages[i].dateTime)),
                          style: AppTextStyles.smallText,
                        ),
                      ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      margin: const EdgeInsets.symmetric(vertical: 17),
                      decoration: BoxDecoration(
                          color: AppColors.accentGreen,
                          borderRadius: BorderRadius.circular(3)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: AppColors.green,
                          ),
                          const SizedBox(width: 10.56),
                          Flexible(
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Semira yesufu just sent ",
                                    style: AppTextStyles.subText.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.dark)),
                                TextSpan(
                                    text: "\$400,000. ",
                                    style: AppTextStyles.subText.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.dark)),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                    text: " Click here",
                                    style: AppTextStyles.indicatorText.copyWith(
                                      fontSize: 14,
                                    ))
                              ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }
            }
          }),
    );
  }
}

class ReceivedMessageContainer extends StatelessWidget {
  const ReceivedMessageContainer({
    required this.size,
    required this.message,
    super.key,
  });

  final Size size;
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 17,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 32,
              width: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.bgGrey),
              child: Text(
                message.sender,
                style: AppTextStyles.indicatorText,
              ),
            ),
            const SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * .6,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      message.image.isNotEmpty
                          ? Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(5),
                                      topRight: const Radius.circular(5),
                                      bottomLeft: message.message.isNotEmpty
                                          ? Radius.zero
                                          : const Radius.circular(5)),
                                  image: DecorationImage(
                                      image: FileImage(
                                        File(message.image),
                                      ),
                                      fit: BoxFit.cover)),
                            )
                          : const SizedBox(),
                      message.docName.isNotEmpty
                          ? Container(
                              margin: const EdgeInsets.all(12),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              // height: 65,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.attachment_outlined,
                                    color: AppColors.textcolor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      message.docName,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyles.indicatorText
                                          .copyWith(
                                              color: AppColors.textcolor,
                                              fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox(),
                      message.message.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: SelectableText(
                                message.message,
                                style: AppTextStyles.subText
                                    .copyWith(color: AppColors.textcolor),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  DateFormat.jm().format(DateTime.parse(message.dateTime)),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 17,
        )
      ],
    );
  }
}

class SentMessageContainer extends StatelessWidget {
  const SentMessageContainer({
    required this.size,
    required this.message,
    super.key,
  });

  final Size size;
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 17,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: size.width * .6,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      message.image.isNotEmpty
                          ? Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(5),
                                      topRight: const Radius.circular(5),
                                      bottomLeft: message.message.isNotEmpty
                                          ? Radius.zero
                                          : const Radius.circular(5)),
                                  image: DecorationImage(
                                      image: FileImage(
                                        File(message.image),
                                      ),
                                      fit: BoxFit.cover)),
                            )
                          : const SizedBox(),
                      message.docName.isNotEmpty
                          ? Container(
                              margin: const EdgeInsets.all(12),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              // height: 65,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              alignment: Alignment.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.attachment_outlined,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      message.docName,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyles.indicatorText
                                          .copyWith(
                                              color: AppColors.white,
                                              fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox(),
                      message.message.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: SelectableText(
                                message.message,
                                style: AppTextStyles.subText
                                    .copyWith(color: AppColors.white),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  DateFormat.jm().format(DateTime.parse(message.dateTime)),
                ),
              ],
            ),
            const SizedBox(width: 6),
            Container(
                height: 32,
                width: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.bgGrey),
                child: Text(
                  message.sender,
                  style: AppTextStyles.indicatorText,
                )),
          ],
        ),
        const SizedBox(
          height: 17,
        )
      ],
    );
  }
}

class Message {
  final String message;
  final String dateTime;
  final MessageType type;
  final String image;
  final File? doc;
  final String sender;
  final WalletData? walletData;
  final String docName;

  Message(
      {required this.message,
      required this.dateTime,
      required this.type,
      required this.sender,
      this.image = "",
      this.docName = "",
      this.walletData,
      this.doc});
}

class WalletData {
  final String walletName;
  final String walletId;

  WalletData({
    required this.walletName,
    required this.walletId,
  });
}

enum MessageType { payment, sent, received }
