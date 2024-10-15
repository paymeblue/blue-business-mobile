import 'dart:io';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/transaction_detail/power/power_details.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/transaction_details/pages/power_details/widgets/receipt.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';

import 'view_model.dart';

class PowerDetailsView extends StatefulWidget {
  final PowerDetails detail;
  const PowerDetailsView({super.key, required this.detail});

  @override
  State<PowerDetailsView> createState() => _PowerDetailsViewState();
}

class _PowerDetailsViewState extends State<PowerDetailsView> {
  @override
  Widget build(BuildContext context) {
    NumberFormat format = NumberFormat("#,##0.00");
    return BaseView<PowerDetailsViewModel>(
        model: PowerDetailsViewModel(),
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
                  child: SingleChildScrollView(
                      child: PowerReceipt(record: widget.detail)),
                ),
                Container(
                  height: model.size.height,
                  width: model.size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                  ),
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
                        "${nairaSymbol()}${format.format(double.parse(widget.detail.amount) + double.parse(widget.detail.serviceCharge))}",
                        style: AppTextStyles.header.copyWith(
                            fontSize: 26.sp, fontWeight: FontWeight.w700),
                      ),
                      25.verticalGap,
                      Expanded(
                          child: ListView(
                        children: [
                          ...detailsSection(
                            title: "Transaction type",
                            detail: "Electricity",
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "DISCO",
                            detail: widget.detail.provider,
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Meter number",
                            detail: widget.detail.receiver,
                          ),
                          if (widget.detail.token != null) ...[
                            4.verticalGap,
                            ...detailsSection(
                              title: "Token",
                              detail: widget.detail.token!,
                              canCopy: true,
                              color: AppColors.primary,
                            )
                          ],
                          4.verticalGap,
                          ...detailsSection(
                            title: "Amount",
                            detail: "${nairaSymbol()}${widget.detail.amount}",
                          ),
                          4.verticalGap,
                          ...detailsSection(
                            title: "Service charge",
                            detail:
                                "${nairaSymbol()}${widget.detail.serviceCharge}",
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
      {required String title,
      required String detail,
      Color? color,
      bool canCopy = false}) {
    return [
      detailRow(
        title: title,
        detail: detail,
        color: color,
        canCopy: canCopy,
      ),
      8.verticalGap,
      const Divider(
        color: AppColors.bodyTextColor2,
      ),
      4.verticalGap,
    ];
  }

  Widget detailRow(
      {required String title,
      required String detail,
      Color? color,
      bool canCopy = false}) {
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
            child: GestureDetector(
              onTap: () {
                if (canCopy) {
                  Clipboard.setData(ClipboardData(text: detail)).then((value) {
                    if (Platform.isIOS) {
                      BlueToast.primaryWithcon("Copied to clipboard");
                    }
                  });
                }
              },
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
          ),
          if (canCopy) ...[
            6.horizontalGap,
            AppAssets.images.icons.copy02.svg(),
          ]
        ],
      ),
    );
  }

  String dateAndTime() {
    DateTime dateTime = DateTime.parse(widget.detail.createdAt);
    String date =
        "${dateTime.day.toString().padLeft(2, "0")}/${dateTime.month.toString().padLeft(2, "0")}/${dateTime.year}";
    String time = DateFormat.Hms().format(dateTime);
    return "$date, $time";
  }
}
