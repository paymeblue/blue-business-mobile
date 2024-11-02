import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/bills/electricity/verify/data/verify_electricity_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

class ReviewElectricityView extends StatefulWidget {
  final VerifyElectricityData data;
  final double amount;
  const ReviewElectricityView(
      {super.key, required this.data, required this.amount});

  @override
  State<ReviewElectricityView> createState() => _ReviewElectricityViewState();
}

class _ReviewElectricityViewState extends State<ReviewElectricityView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ReviewElectricityViewModel>(
      model: ReviewElectricityViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () => model.goBack(context),
            icon: Icons.arrow_back_ios_new,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Review Transaction Details",
                  style: AppTextStyles.semiLargeHeader,
                ),
                20.verticalGap,
                Text(
                  "Total Amount",
                  style: AppTextStyles.subHeader.copyWith(height: 1.2),
                ),
                Text(
                  "${nairaSymbol()}${(widget.amount + double.parse(widget.data.serviceCharge)).toStringAsFixed(2)}",
                  style: AppTextStyles.header.copyWith(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      height: 1.2),
                ),
                20.verticalGap,
                ...detailsSection(
                  title: "Name",
                  detail: widget.data.customerName,
                ),
                ...detailsSection(
                  title: "Meter number",
                  detail: widget.data.receiver,
                ),
                ...detailsSection(
                  title: "Disco",
                  detail:
                      "${widget.data.provider}-${widget.data.meterType[0].toUpperCase()}${widget.data.meterType.substring(1)}",
                ),
                ...detailsSection(
                  title: "Address",
                  detail: widget.data.customerInfo,
                ),
                ...detailsSection(
                  title: "Amount",
                  detail:
                      "${nairaSymbol()}${(widget.amount).toStringAsFixed(2)}",
                ),
                detailRow(
                    title: "Service charge",
                    detail:
                        "${nairaSymbol()}${double.parse(widget.data.serviceCharge).toStringAsFixed(2)}"),
                const Spacer(),
                AppButton.primary(
                  title: "Continue",
                  onTap: () {
                    model.goToNext(context, widget.data, widget.amount);
                  },
                ),
                10.verticalGap,
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> detailsSection({required String title, required String detail}) {
    return [
      detailRow(title: title, detail: detail),
      8.verticalGap,
      const Divider(
        color: AppColors.bodyTextColor2,
      ),
      4.verticalGap,
    ];
  }

  Widget detailRow({required String title, required String detail}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.subText,
          ),
          10.horizontalGap,
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                detail,
                style:
                    AppTextStyles.subText.copyWith(color: AppColors.textColor),
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
