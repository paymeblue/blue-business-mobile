import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/bills/airtime/review_data/review_airtime_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view_model.dart';

@RoutePage()
class ReviewAirtimeView extends StatelessWidget {
  final ReviewAirtimeData data;
  const ReviewAirtimeView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<ReviewAirtimeViewModel>(
      model: ReviewAirtimeViewModel(),
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
                  "${nairaSymbol()}${data.amount.toStringAsFixed(2)}",
                  style: AppTextStyles.header.copyWith(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      height: 1.2),
                ),
                20.verticalGap,
                ...detailsSection(
                  title: "Network Provider",
                  detail: data.provider.name,
                ),
                ...detailsSection(
                  title: "Phone number",
                  detail: data.phone,
                ),
                detailRow(
                    title: "Amount", detail: "${nairaSymbol()}${data.amount}"),
                const Spacer(),
                AppButton.primary(
                  title: "Continue",
                  onTap: () {
                    model.goToNext(context, data);
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
