import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/payment_link/payment_link.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class PaymentLinkTile extends StatelessWidget {
  final PaymentLinkItem item;
  final List<PopupModel> popupItems;
  const PaymentLinkTile({
    super.key,
    required this.item,
    required this.popupItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.grey,
      ),
      child: Row(
        children: [
          Expanded(
            child: textColumn(),
          ),
          10.horizontalGap,
          popupButton(),
        ],
      ),
    );
  }

  Widget popupButton() {
    return PopupMenuButton(
      icon: const Icon(
        Icons.more_vert,
        color: AppColors.textColor,
      ),
      padding: EdgeInsets.zero,
      offset: const Offset(0, 25),
      itemBuilder: (context) => popupItems
          .map<PopupMenuItem>(
            (e) => menuItem(e),
          )
          .toList(),
    );
  }

  PopupMenuItem<dynamic> menuItem(PopupModel e) {
    return PopupMenuItem(
      onTap: () {
        e.onTap();
      },
      child: SizedBox(
        height: 35,
        child: Row(
          children: [
            e.icon,
            const SizedBox(
              width: 8,
            ),
            Text(
              e.title,
              style: AppTextStyles.header.copyWith(
                fontSize: 15.5,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${item.receiverName} | ${nairaSymbol()}${item.amount}",
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        4.verticalGap,
        Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "${statusString()} ",
                  style: AppTextStyles.smallText.copyWith(
                    color: statusColor(),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: "| ",
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: item.originalUrl,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Clipboard.setData(
                        ClipboardData(text: item.originalUrl),
                      ).then((value) {
                        BlueToast.primaryWithcon("Copied to clipboard");
                      });
                    },
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ]),
            ),
            4.horizontalGap,
            AppAssets.images.icons.copy.svg(),
          ],
        )
      ],
    );
  }

  String statusString() {
    switch (item.status) {
      case "fulfilled":
        return "Sent";
      default:
        return "${item.status[0].toUpperCase()}${item.status.substring(1)}";
    }
  }

  Color statusColor() {
    switch (item.status) {
      case "fulfilled":
        return AppColors.otherGreen;
      case "cancelled":
        return AppColors.error;
      default:
        return AppColors.green;
    }
  }

  String timeString() {
    DateFormat format = DateFormat.jm();

    return format.format(DateTime.parse(item.createdAt));
  }
}
