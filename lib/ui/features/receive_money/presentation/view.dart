import 'package:auto_route/auto_route.dart';
import 'package:barcode/barcode.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/gen/fonts.gen.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/avatar/avatar.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

@RoutePage()
class ReceiveMoneyView extends StatefulWidget {
  const ReceiveMoneyView({super.key});

  @override
  State<ReceiveMoneyView> createState() => _ReceiveMoneyViewState();
}

class _ReceiveMoneyViewState extends State<ReceiveMoneyView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ReceiveMoneyViewModel>(
      model: ReceiveMoneyViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new_rounded,
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    title(),
                    25.verticalGap,
                    qrImageContainer(model),
                    10.verticalGap,
                    TextButton(
                      onPressed: model.downloadAndShareQr,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.share_outlined,
                            weight: .4,
                            color: AppColors.primary,
                          ),
                          10.horizontalGap,
                          Text(
                            "SHARE QR CODE",
                            style: AppTextStyles.smallButtonText
                                .copyWith(color: AppColors.primary),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              30.verticalGap,
              walletDataContainer(model),
            ],
          ),
        );
      },
    );
  }

  Container walletDataContainer(ReceiveMoneyViewModel model) {
    return Container(
      width: context.mediaQuery.size.width,
      height: 320.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 8,
            spreadRadius: 8,
            color: Colors.black.withOpacityValue(.045),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BUSINESS CREDENTIALS",
            style: AppTextStyles.header
                .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "",
                  // "${locator<AppStateValues>().currentUser!.businessProfile!.name} ",
                  style: AppTextStyles.subHeader
                      .copyWith(fontSize: 14.sp, color: AppColors.blue),
                ),
                TextSpan(
                  text: "Topup Account and Blue ID",
                  style: AppTextStyles.subHeader.copyWith(fontSize: 14.sp),
                )
              ],
            ),
          ),
          10.verticalGap,
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration:
                  BoxDecoration(border: Border.all(color: AppColors.grey)),
              child: Column(
                children: [
                  walletAccountDataContent(model),
                  8.verticalGap,
                  const Divider(
                    color: AppColors.grey,
                    height: 2,
                  ),
                  8.verticalGap,
                  walletIdDataContent(model),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget walletAccountDataContent(ReceiveMoneyViewModel model) {
    if (model.accountState == FetchState.loading) {
      return BlueLoadingTile.withImage();
    } else if (locator<AppStateValues>().account != null) {
      return Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: AppColors.brightBlue.withOpacityValue(.2),
          onTap: () {
            model.copy(locator<AppStateValues>().account!.accountNumber);
          },
          child: Container(
            height: 60.h,
            width: context.mediaQuery.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                blueAccountImage(),
                10.horizontalGap,
                Expanded(
                  child: accountTextColumn(
                    bank: locator<AppStateValues>().account!.bankName,
                    accountNumber:
                        locator<AppStateValues>().account!.accountNumber,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget walletIdDataContent(ReceiveMoneyViewModel model) {
    if (model.walletState == FetchState.loading ||
        locator<AppStateValues>().wallet == null) {
      return BlueLoadingTile.withImage();
    } else {
      return Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: AppColors.brightBlue.withOpacityValue(.2),
          onTap: () {
            model.copy(locator<AppStateValues>().wallet!.walletCode);
          },
          child: Container(
            width: context.mediaQuery.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: const BoxDecoration(),
            child: Row(
              children: [
                blueWalletIdImage(),
                10.horizontalGap,
                Expanded(
                  child: idTextColumn(
                    title: "Blue ID Number",
                    subtitle: locator<AppStateValues>().wallet!.walletCode,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget accountTextColumn(
      {required String bank, required String accountNumber}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Topup Account",
          style: AppTextStyles.header
              .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "$bank ",
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor,
                    fontSize: 14.sp,
                  ),
                ),
                TextSpan(
                  text: "| ",
                  style: AppTextStyles.smallText.copyWith(
                      color: AppColors.bodyTextColor.withOpacityValue(.35),
                      fontSize: 14.sp),
                ),
                TextSpan(
                  text: "$accountNumber ",
                  style: AppTextStyles.smallText.copyWith(
                      color: AppColors.bodyTextColor.withOpacityValue(.7),
                      fontSize: 14.sp),
                )
              ]),
            ),
            4.horizontalGap,
            Container(
              height: 30.h,
              width: 30.w,
              padding: const EdgeInsets.all(7),
              child: AppAssets.images.icons.copy02.svg(),
            )
          ],
        )
      ],
    );
  }

  Widget idTextColumn({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.header
              .copyWith(fontSize: 15.5, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Text(
              subtitle,
              style: AppTextStyles.smallText
                  .copyWith(color: AppColors.bodyTextColor, fontSize: 14.sp),
            ),
            2.horizontalGap,
            Container(
              height: 30.h,
              width: 30.w,
              padding: const EdgeInsets.all(7),
              child: AppAssets.images.icons.copy02.svg(),
            ),
          ],
        )
      ],
    );
  }

  Widget blueWalletIdImage() {
    return Container(
      height: 38.h,
      width: 38.w,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: AppColors.bgGrey,
        shape: BoxShape.circle,
      ),
      child: AppAssets.images.logos.blueBgLogo.image(),
    );
  }

  Widget blueAccountImage() {
    return Container(
      height: 38.h,
      width: 38.w,
      decoration: BoxDecoration(
        color: AppColors.bgGrey,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(AppAssets.images.wemaLogo.path),
        ),
      ),
    );
  }

  Widget title() {
    return Column(
      children: [
        Text(
          "Receive money easily!",
          style: AppTextStyles.header,
        ),
        SizedBox(
          width: 300.w,
          child: Text(
            "Scan/Share the barcode below to receive payment.",
            style: AppTextStyles.subHeader.copyWith(height: 1.2),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget qrImageContainer(ReceiveMoneyViewModel model) {
    return Stack(
      children: [
        Container(
          height: 270.w,
          width: 270.w,
          decoration: const BoxDecoration(
            color: AppColors.bgGrey,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.only(bottom: 33.h),
          alignment: Alignment.bottomCenter,
          child: Screenshot(
            controller: model.screenshotController,
            child: Container(
              height: 175.w,
              width: 175.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(17),
              ),
              padding: const EdgeInsets.all(13),
              child: locator<AppStateValues>().wallet == null
                  ? qrLoadingShimmer()
                  : qrImage(),
            ),
          ),
        ),
        Positioned(
          top: 30.h,
          right: 110.h,
          width: 50.dm,
          height: 50.dm,
          child: Container(
            height: 50.dm,
            width: 50.dm,
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            child: SizedBox(
              height: 45.h,
              width: 45.w,
              child: BlueAvatar(
                radius: 30.r,
                imageUrl: locator<AppStateValues>().currentUser!.displayPicture,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Shimmer qrImage() {
    return Shimmer.fromColors(
      loop: 2,
      direction: ShimmerDirection.ltr,
      period: const Duration(milliseconds: 500),
      baseColor: AppColors.blue,
      highlightColor: AppColors.paleBlue,
      child: QrImageView(
          data: locator<AppStateValues>().wallet!.walletCode,
          dataModuleStyle: const QrDataModuleStyle(
            color: AppColors.primary,
          ),
          eyeStyle: const QrEyeStyle(
            color: AppColors.primary,
            eyeShape: QrEyeShape.square,
          ),
          size: 120),
    );
  }

  Shimmer barcodeImage() {
    return Shimmer.fromColors(
      loop: 2,
      direction: ShimmerDirection.ltr,
      period: const Duration(milliseconds: 500),
      baseColor: AppColors.primary,
      highlightColor: AppColors.paleBlue,
      child: buildBarcode(
          Barcode.code128(), locator<AppStateValues>().wallet!.walletCode),
    );
  }

  Widget buildBarcode(
    Barcode bc,
    String data, {
    String? filename,
    double? width,
    double? height,
    double? fontHeight,
  }) {
    /// Create the Barcode
    final svg = bc.toSvg(
      data,
      width: width ?? 250,
      height: height ?? 120,
      fontFamily: AppFonts.satoshi,
      fontHeight: fontHeight,
      drawText: false,
    );
    return SvgPicture.string(svg);
  }

  Shimmer qrLoadingShimmer() {
    return Shimmer.fromColors(
      baseColor: AppColors.brightBlue.withOpacityValue(.35),
      highlightColor: AppColors.white,
      child: Container(
        height: 140,
        width: 140,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}
