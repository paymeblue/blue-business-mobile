import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction_detail/cable/cable_details.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CableReceipt extends StatelessWidget {
  final CableDetails record;
  const CableReceipt({
    super.key,
    required this.record,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          receiptHeader(),
          dataSection(context),
          13.verticalGap,
          blueTeamSignatureWitdget(),
          13.verticalGap,
          supportContainer(),
        ],
      ),
    );
  }

  Widget supportContainer() {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.lightBlue,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Need help? Kindly contact us on ",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.bodyTextColor, fontSize: 14.sp, height: 1.5),
          ),
          TextSpan(
            text: "hello@paymeblue.com ",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.primary,
                fontSize: 14.sp,
                decoration: TextDecoration.underline,
                height: 1.5),
          ),
          TextSpan(
            text: "and ",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.bodyTextColor, fontSize: 14.sp, height: 1.5),
          ),
          TextSpan(
            text: "+2349075561565",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                color: AppColors.primary,
                fontSize: 14.sp,
                decoration: TextDecoration.underline,
                height: 1.5),
          )
        ]),
      ),
    );
  }

  Widget blueTeamSignatureWitdget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Text(
        "Best Regards,\nBluePay Team",
        style: AppTextStyles.receiptFieldbody
            .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget dataSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        left: 50,
        right: 50,
        top: 30,
        bottom: 50,
      ),
      width: context.mediaQuery.size.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.paleBlue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: receiptFields(),
      ),
    );
  }

  List<Widget> receiptFields() {
    NumberFormat format = NumberFormat("#,##0.00");
    return [
      receiptField(
        title: "Transaction Type",
        data: "Cable Bill",
      ),
      16.verticalGap,
      receiptField(
        title: "Cable provider",
        data: record.provider,
      ),
      16.verticalGap,
      receiptField(
        title: "Recipient",
        data: record.receiver,
      ),
      16.verticalGap,
      receiptField(
        title: "Bundle",
        data: record.package,
      ),
      16.verticalGap,
      receiptField(
        title: "Amount",
        data:
            "${nairaSymbol()}${format.format(double.parse(record.amount) + double.parse(record.serviceCharge))}",
      ),
      16.verticalGap,
      receiptField(
        title: "Transaction Date",
        data: dateString(),
      ),
      16.verticalGap,
      receiptField(
        title: "Status",
        data: record.status.sentenceCase,
        textColor:
            record.status == "successful" ? AppColors.success : AppColors.error,
      )
    ];
  }

  String dateString() {
    DateTime date = DateTime.parse(record.createdAt);
    return "${date.day.toString().padLeft(2, "0")}-${DateFormat.MMM().format(date)}-${date.year} ${DateFormat.jms().format(date)}";
  }

  Widget receiptHeader() {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: const BoxDecoration(color: AppColors.primary),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transaction Receipt",
            style: AppTextStyles.receiptFieldTitle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.white),
          ),
          SizedBox(
            height: 23,
            child: AppAssets.images.logos.splashLogo.image(),
          ),
        ],
      ),
    );
  }

  Widget receiptField(
      {required String title,
      required String data,
      Color textColor = AppColors.textColor}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.receiptFieldTitle.copyWith(height: 1.2),
        ),
        3.verticalGap,
        Text(
          data,
          style: AppTextStyles.receiptFieldbody
              .copyWith(color: textColor, height: 1.1),
        ),
      ],
    );
  }
}
