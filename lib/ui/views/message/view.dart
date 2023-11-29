import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/qr_overlay.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'view_model.dart';

class MessageHomeView extends StatefulWidget {
  final VoidCallback onBackTap;
  const MessageHomeView({super.key, required this.onBackTap});

  @override
  State<MessageHomeView> createState() => _MessageHomeViewState();
}

class _MessageHomeViewState extends State<MessageHomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<MessageViewModel>(
        model: MessageViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.show(
                onBackTap: widget.onBackTap,
                leadingIcon: Icons.arrow_back_ios_new,
                elevation: 0),
            body: !model.isScanning
                ? Container(
                    height: size.height,
                    width: size.width,
                    margin: const EdgeInsets.only(top: 40),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Chats",
                                style: AppTextStyles.header,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                model.isScanning = true;
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 1000),
                                margin: const EdgeInsets.only(left: 16),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xFFE5E6E8))),
                                child: SvgPicture.asset(
                                  AppAssets.scanIcon,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: model.goToStartChat,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 1000),
                                margin: const EdgeInsets.only(left: 16),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border:
                                        Border.all(color: AppColors.midGrey)),
                                child: SvgPicture.asset(
                                  AppAssets.newMessageIcon,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        if (model.conversations.isNotEmpty)
                          SearchTextField(
                            hintText: "Search conversations",
                            onChanged: model.onSearchChanged,
                            onSaved: model.onSearchSaved,
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: model.conversations.isEmpty
                                ? EmptyConversationContainer(
                                    onStartChat: model.goToStartChat,
                                  )
                                : ConversationContainer(
                                    onTap: (conversation) {
                                      model.goToConversation(conversation);
                                    },
                                    conversations: model.conversations))
                      ],
                    ),
                  )
                : QrScanContainer(
                    controller: model.mobileScannerController,
                    detect: model.detect,
                  ),
          );
        });
  }
}

class ErrorWidget extends StatelessWidget {
  final String? errMessage;
  const ErrorWidget({super.key, this.errMessage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.only(bottom: 52),
        decoration: BoxDecoration(color: AppColors.error),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 180,
              width: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(.1),
                  shape: BoxShape.circle),
              child: Container(
                height: 170,
                width: 170,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(.3),
                    shape: BoxShape.circle),
                child: Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(.6),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.error,
                    size: 145,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                errMessage ?? "An unknown error occurred.",
                style: AppTextStyles.subHeader.copyWith(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer()
          ],
        ));
  }
}

class QrScanContainer extends StatefulWidget {
  final MobileScannerController controller;
  final Function(BarcodeCapture capture) detect;
  const QrScanContainer(
      {super.key, required this.controller, required this.detect});

  @override
  State<QrScanContainer> createState() => _QrScanContainerState();
}

class _QrScanContainerState extends State<QrScanContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MobileScanner(
          controller: widget.controller,
          errorBuilder: (context, excp, _) {
            return ErrorWidget(
              errMessage: excp.errorDetails!.message,
            );
          },
          onDetect: widget.detect,
        ),
        QRScannerOverlay(overlayColour: Colors.black.withOpacity(.3))
      ],
    );
  }
}

class ConversationContainer extends StatefulWidget {
  final List<Conversation> conversations;
  final Function(Conversation) onTap;
  const ConversationContainer(
      {super.key, required this.conversations, required this.onTap});

  @override
  State<ConversationContainer> createState() => _ConversationContainerState();
}

class _ConversationContainerState extends State<ConversationContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            decoration: const BoxDecoration(),
            alignment: Alignment.centerRight,
            child: Text(
              "Mark all as read",
              style: AppTextStyles.indicatorText,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, i) {
                  Conversation conversation = widget.conversations[i];
                  return GestureDetector(
                    onTap: () {
                      widget.onTap(conversation);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(6)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 15),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Container(
                            height: 38,
                            width: 38,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.success),
                            child: conversation.image == null
                                ? Center(
                                    child: Text(
                                      "${conversation.firstName[0].toUpperCase()}${conversation.lastName[0].toUpperCase()}",
                                      style: AppTextStyles.indicatorText
                                          .copyWith(
                                              color: AppColors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700),
                                    ),
                                  )
                                : Image.asset(conversation.image!),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${conversation.firstName} ${conversation.lastName}",
                                  style: AppTextStyles.subHeader
                                      .copyWith(color: AppColors.textcolor),
                                ),
                                Text(
                                  conversation.message,
                                  style: AppTextStyles.subText.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "06:04 PM",
                                style: AppTextStyles.subText.copyWith(
                                    fontSize: 13.5,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              conversation.unreadCount > 0
                                  ? Container(
                                      height: 28,
                                      width: 28,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.primaryColor),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "${conversation.unreadCount}",
                                        style: AppTextStyles.largeButtonText
                                            .copyWith(
                                                fontSize: 13,
                                                color: AppColors.white),
                                      ),
                                    )
                                  : const SizedBox()
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                itemCount: widget.conversations.length))
      ],
    );
  }
}

class EmptyConversationContainer extends StatelessWidget {
  final VoidCallback onStartChat;
  const EmptyConversationContainer({super.key, required this.onStartChat});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(top: 61),
      child: Column(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration:
                BoxDecoration(color: AppColors.bgGrey, shape: BoxShape.circle),
            child: Image.asset(AppAssets.activeNavItemIcon('message')),
          ),
          const SizedBox(height: 10),
          Text(
            "No conversation yet",
            style: AppTextStyles.subHeader.copyWith(fontSize: 18),
          ),
          GestureDetector(
            onTap: onStartChat,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(),
              child: Text(
                "Start Chat",
                style: AppTextStyles.indicatorText.copyWith(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
