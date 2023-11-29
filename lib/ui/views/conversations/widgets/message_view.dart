import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/models/nessages.dart';
import 'package:blue_business/ui/views/conversations/widgets/empty_conversation.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'sent_message_bubble.dart';

class MessageView extends StatelessWidget {
  final List<BlueMessage> messages;
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
    return Consumer<AppStateManager>(builder: (context, model, _) {
      return Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 20),
        child: messages.isEmpty
            ? EmptyConversationWidget(
                size: size,
                scrollController: scrollController,
              )
            : ListView.builder(
                itemCount: messages.length,
                controller: scrollController,
                itemBuilder: (context, i) {
                  // if (messages[i].senderId !=
                  //     model.currentUser!.walletData!.walletCode) {
                  //   DateTime currentDate = messages[i].timeStamp;
                  //   DateTime? previousDate;
                  //   if (i > 0) {
                  //     previousDate = messages[i - 1].timeStamp;
                  //   }
                  //   return Column(
                  //     children: [
                  //       if (previousDate == null ||
                  //           (previousDate.year != currentDate.year) ||
                  //           (previousDate.month != currentDate.month) ||
                  //           (previousDate.day != currentDate.day))
                  //         Container(
                  //           padding: const EdgeInsets.all(10),
                  //           margin: const EdgeInsets.only(bottom: 14),
                  //           decoration: BoxDecoration(
                  //               color: AppColors.bodyTextcolor,
                  //               borderRadius: BorderRadius.circular(15)),
                  //           child: Text(
                  //             getDate(messages[i].timeStamp),
                  //             style: AppTextStyles.smallText,
                  //           ),
                  //         ),
                  //       ReceivedMessageContainer(
                  //           size: size, message: messages[i]),
                  //     ],
                  //   );
                  // } else {
                  DateTime currentDate = messages[i].timeStamp;
                  DateTime? previousDate;
                  if (i > 0) {
                    previousDate = messages[i - 1].timeStamp;
                  }
                  // if (messages[i].senderId ==
                  //     model.currentUser!.walletData!.walletCode) {
                  return Column(
                    children: [
                      if (previousDate == null ||
                          (previousDate.year != currentDate.year) ||
                          (previousDate.month != currentDate.month) ||
                          (previousDate.day != currentDate.day))
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(bottom: 14),
                          decoration: BoxDecoration(
                              color: AppColors.bodyTextcolor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            getDate(messages[i].timeStamp),
                            style: AppTextStyles.smallText,
                          ),
                        ),
                      SentMessageContainer(size: size, message: messages[i]),
                    ],
                  );
                  // } else {
                  //   DateTime currentDate = messages[i].timeStamp;
                  //   DateTime? previousDate;
                  //   if (i > 0) {
                  //     previousDate = messages[i - 1].timeStamp;
                  //   }
                  //   return Column(
                  //     children: [
                  //       if (previousDate == null ||
                  //           (previousDate.year != currentDate.year) ||
                  //           (previousDate.month != currentDate.month) ||
                  //           (previousDate.day != currentDate.day))
                  //         Container(
                  //           padding: const EdgeInsets.all(10),
                  //           margin:
                  //               const EdgeInsets.only(top: 15, bottom: 14),
                  //           decoration: BoxDecoration(
                  //               color: AppColors.bodyTextcolor,
                  //               borderRadius: BorderRadius.circular(15)),
                  //           child: Text(
                  //             getDate(messages[i].timeStamp),
                  //             style: AppTextStyles.smallText,
                  //           ),
                  //         ),
                  //       Container(
                  //         width: MediaQuery.of(context).size.width,
                  //         padding: const EdgeInsets.symmetric(
                  //             horizontal: 16, vertical: 12),
                  //         margin: const EdgeInsets.symmetric(vertical: 17),
                  //         decoration: BoxDecoration(
                  //             color: AppColors.accentGreen,
                  //             borderRadius: BorderRadius.circular(3)),
                  //         child: Row(
                  //           children: [
                  //             Icon(
                  //               Icons.check_circle_outline,
                  //               color: AppColors.green,
                  //             ),
                  //             const SizedBox(width: 10.56),
                  //             Flexible(
                  //               child: RichText(
                  //                 text: TextSpan(children: [
                  //                   TextSpan(
                  //                       text: "Semira yesufu just sent ",
                  //                       style: AppTextStyles.subText.copyWith(
                  //                           fontSize: 14,
                  //                           fontWeight: FontWeight.w400,
                  //                           color: AppColors.dark)),
                  //                   TextSpan(
                  //                       text: "\$400,000. ",
                  //                       style: AppTextStyles.subText.copyWith(
                  //                           fontSize: 14,
                  //                           fontWeight: FontWeight.w700,
                  //                           color: AppColors.dark)),
                  //                   TextSpan(
                  //                       recognizer: TapGestureRecognizer()
                  //                         ..onTap = () {},
                  //                       text: " Click here",
                  //                       style: AppTextStyles.indicatorText
                  //                           .copyWith(
                  //                         fontSize: 14,
                  //                       ))
                  //                 ]),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   );
                  // }
                  // }
                }),
      );
    });
  }
}
