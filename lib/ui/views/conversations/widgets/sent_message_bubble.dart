import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/models/nessages.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class SentMessageContainer extends StatelessWidget {
  const SentMessageContainer({
    required this.size,
    required this.message,
    super.key,
  });

  final Size size;
  final BlueMessage message;

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateManager>(builder: (context, appState, _) {
      return Column(
        children: [
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
                        // message.image.isNotEmpty
                        //     ? Container(
                        //         height: 200,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.only(
                        //                 topLeft: const Radius.circular(5),
                        //                 topRight: const Radius.circular(5),
                        //                 bottomLeft: message.message.isNotEmpty
                        //                     ? Radius.zero
                        //                     : const Radius.circular(5)),
                        //             image: DecorationImage(
                        //                 image: FileImage(
                        //                   File(message.image),
                        //                 ),
                        //                 fit: BoxFit.cover)),
                        //       )
                        //     : const SizedBox(),
                        // message.docName.isNotEmpty
                        //     ? Container(
                        //         margin: const EdgeInsets.all(12),
                        //         padding: const EdgeInsets.symmetric(
                        //             horizontal: 12, vertical: 8),
                        //         // height: 65,
                        //         width: size.width,
                        //         decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(5)),
                        //         alignment: Alignment.center,
                        //         child: Row(
                        //           crossAxisAlignment: CrossAxisAlignment.end,
                        //           children: [
                        //             Icon(
                        //               Icons.attachment_outlined,
                        //               color: AppColors.white,
                        //             ),
                        //             const SizedBox(
                        //               width: 10,
                        //             ),
                        //             Expanded(
                        //               child: Text(
                        //                 message.docName,
                        //                 overflow: TextOverflow.ellipsis,
                        //                 style: AppTextStyles.indicatorText
                        //                     .copyWith(
                        //                         color: AppColors.white,
                        //                         fontWeight: FontWeight.w700),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       )
                        //     : const SizedBox(),
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
                    DateFormat.jm().format(message.timeStamp),
                  ),
                ],
              ),
              const SizedBox(width: 6),
              Consumer<AppStateManager>(builder: (context, state, _) {
                return Container(
                  height: 32,
                  width: 32,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.bgGrey),
                  child: SvgPicture.asset(
                    AppAssets.userIcon,
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ],
          ),
          const SizedBox(
            height: 17,
          )
        ],
      );
    });
  }
}
