import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/transaction_detail/data/data_details.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/transaction_details/pages/data_details/widgets/receipt.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

class DataDetailsView extends StatefulWidget {
  final DataDetails detail;
  const DataDetailsView({super.key, required this.detail});

  @override
  State<DataDetailsView> createState() => _DataDetailsViewState();
}

class _DataDetailsViewState extends State<DataDetailsView> {
  NumberFormat format = NumberFormat("#,##0.00");
  @override
  Widget build(BuildContext context) {
    return BaseView<DataDetailsViewModel>(
        model: DataDetailsViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: () => model.goBack(context),
              icon: Icons.arrow_back_ios_new,
            ),
            body: Stack(
              children: [
                Screenshot(
                  controller: model.screenshotController,
                  child: DataReceipt(record: widget.detail),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(color: AppColors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Transaction details",
                          style: AppTextStyles.semiLargeHeader,
                        ),
                      ),
                      25.verticalGap,
                      Text(
                        "YOU PAID",
                        style: AppTextStyles.subHeader
                            .copyWith(letterSpacing: 1.5),
                      ),
                      Text(
                        "${nairaSymbol()}${format.format(double.parse(widget.detail.amount))}",
                        style: AppTextStyles.header.copyWith(
                            fontSize: 26.sp, fontWeight: FontWeight.w700),
                      ),
                      25.verticalGap,
                      Expanded(
                          child: ListView(
                        children: [
                          ...detailsSection(
                            title: "Transaction type",
                            detail: "Data",
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Network",
                            detail: widget.detail.provider,
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Data bundle",
                            detail: widget.detail.package,
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Recipient",
                            detail: widget.detail.receiver,
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Amount",
                            detail:
                                "${nairaSymbol()}${format.format(double.parse(widget.detail.amount))}",
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Date & Time",
                            detail: dateAndTime(),
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Status",
                            detail: widget.detail.status.sentenceCase,
                            color: AppColors.otherGreen,
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Wallet balance before",
                            detail:
                                "${nairaSymbol()}${format.format(double.parse(widget.detail.balanceBefore))}",
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Wallet balance after",
                            detail:
                                "${nairaSymbol()}${format.format(double.parse(widget.detail.balanceAfter))}",
                          ),
                        ],
                      )),
                      AppButton.primary(
                        title: "Share Receipt",
                        onTap: () {
                          model.downloadAndShareQr(widget.detail);
                        },
                      ),
                      35.verticalGap,
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  List<Widget> detailsSection(
      {required String title, required String detail, Color? color}) {
    return [
      detailRow(title: title, detail: detail, color: color),
      8.verticalGap,
      const Divider(
        color: AppColors.midGrey,
      ),
      4.verticalGap,
    ];
  }

  Widget detailRow(
      {required String title, required String detail, Color? color}) {
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
                style: AppTextStyles.subText
                    .copyWith(color: color ?? AppColors.textColor),
                textAlign: TextAlign.end,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String dateAndTime() {
    DateTime dateTime = DateTime.parse(widget.detail.createdAt);
    String date =
        "${dateTime.day.toString().padLeft(2, "0")}/${dateTime.month.toString().padLeft(2, "0")}/${dateTime.year}";
    String time = DateFormat.Hm().format(dateTime);
    return "$date, $time";
  }
}
