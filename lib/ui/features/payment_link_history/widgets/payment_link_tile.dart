import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/payment_link/payment_link.dart';
import 'package:blue_business/core/models/popup/popup.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.midGrey),
      ),
      child: Row(
        children: [
          Expanded(
            child: textColumn(),
          ),
          10.horizontalGap,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              popupButton(),
              2.verticalGap,
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: AppColors.grey,
                ),
                child: Text(
                  statusString(),
                  style: AppTextStyles.smallText.copyWith(
                    color: statusColor(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget popupButton() {
    return SizedBox(
      width: 20.w,
      height: 20.h,
      child: PopupMenuButton(
        icon: Icon(
          Icons.more_vert,
          color: AppColors.textColor,
          size: 20.sp,
        ),
        padding: EdgeInsets.zero,
        offset: const Offset(0, 25),
        itemBuilder: (context) => popupItems
            .map<PopupMenuItem>(
              (e) => menuItem(e),
            )
            .toList(),
      ),
    );
  }

  PopupMenuItem<dynamic> menuItem(PopupModel e) {
    return PopupMenuItem(
      onTap: () {
        e.onTap();
      },
      child: SizedBox(
        height: 35.h,
        child: Row(
          children: [
            if (e.icon != null) ...[e.icon!, 8.horizontalGap],
            Text(
              e.title,
              style: AppTextStyles.header.copyWith(
                fontSize: 15.sp,
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
          item.receiverName,
          style: AppTextStyles.header.copyWith(fontSize: 15.sp),
        ),
        Text(
          "${nairaSymbol()}${item.amount}",
          style: AppTextStyles.subHeader.copyWith(fontSize: 17.sp),
        ),
        GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(text: item.originalUrl)).then((_) {
              BlueToast.primaryWithcon('Link copied');
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                AppAssets.images.icons.attachBlue.svg(),
                2.horizontalGap,
                Text(
                  item.originalUrl,
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
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
      case "reversed":
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
