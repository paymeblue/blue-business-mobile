import 'package:barcode/barcode.dart';
import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/gen/fonts.gen.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/avatar/avatar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/modals/info_container.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:shimmer/shimmer.dart';

import 'view_model.dart';

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
          body: SingleChildScrollView(
            child: SizedBox(
              height: model.size.height + 50,
              width: model.size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        title(),
                        35.verticalGap,
                        barcodeImage(),
                        10.verticalGap,
                        const InfoContainer(
                            text:
                                "Please remain logged in while paying with barcode"),
                        15.verticalGap,
                        qrImageContainer(model),
                        36.verticalGap,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: AppButton.primary(
                            title: "Share my QR code",
                            onTap: model.downloadAndShareQr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  35.verticalGap,
                  walletDataContainer(model),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Container walletDataContainer(ReceiveMoneyViewModel model) {
    return Container(
      width: context.mediaQuery.size.width,
      height: 300,
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
            color: Colors.black.withOpacity(.045),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          walletDataTitle("Topup Account"),
          5.verticalGap,
          walletAccountDataContent(model),
          20.verticalGap,
          walletDataTitle("Blue Wallet"),
          5.verticalGap,
          walletIdDataContent(model),
        ],
      ),
    );
  }

  Widget walletAccountDataContent(ReceiveMoneyViewModel model) {
    if (model.isAccountLoading) {
      return BlueLoadingTile.withImage();
    } else {
      return Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: AppColors.brightBlue.withOpacity(.2),
          onTap: () {
            model.copy(locator<AppStateValues>().account!.accountNumber);
          },
          child: Container(
            height: 70,
            width: context.mediaQuery.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                blueAccountImage(),
                10.horizontalGap,
                Expanded(
                  child: textColumn(
                    title: locator<AppStateValues>().account!.bankName,
                    subtitle: locator<AppStateValues>().account!.accountNumber,
                  ),
                ),
                10.horizontalGap,
                Container(
                  height: 38,
                  width: 38,
                  padding: const EdgeInsets.all(12),
                  child: AppAssets.images.icons.copy.svg(),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget walletIdDataContent(ReceiveMoneyViewModel model) {
    if (model.isWalletLoading || locator<AppStateValues>().wallet == null) {
      return BlueLoadingTile.withImage();
    } else {
      return Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: AppColors.brightBlue.withOpacity(.2),
          onTap: () {
            model.copy(locator<AppStateValues>().wallet!.walletCode);
          },
          child: Container(
            height: 70,
            width: context.mediaQuery.size.width,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                blueWalletIdImage(),
                10.horizontalGap,
                Expanded(
                  child: textColumn(
                    title: "Blue ID Number",
                    subtitle: locator<AppStateValues>().wallet!.walletCode,
                  ),
                ),
                10.horizontalGap,
                Container(
                  height: 38,
                  width: 38,
                  padding: const EdgeInsets.all(12),
                  child: AppAssets.images.icons.copy.svg(),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  Widget textColumn({required String title, required String subtitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppTextStyles.header.copyWith(fontSize: 15.5),
        ),
        Text(
          subtitle,
          style: AppTextStyles.smallText
              .copyWith(color: AppColors.bodyTextColor, fontSize: 14.5),
        )
      ],
    );
  }

  Widget blueWalletIdImage() {
    return Container(
      height: 38,
      width: 38,
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
      height: 38,
      width: 38,
      decoration: BoxDecoration(
        color: AppColors.bgGrey,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(AppAssets.images.wemaLogo.path),
        ),
      ),
    );
  }

  Widget walletDataTitle(String title) {
    return Text(
      title,
      style: AppTextStyles.subHeader.copyWith(
        color: AppColors.textColor,
      ),
    );
  }

  Widget title() {
    return Text(
      "Receive money easily!",
      style: AppTextStyles.header,
    );
  }

  Widget qrImageContainer(ReceiveMoneyViewModel model) {
    return Stack(
      children: [
        Container(
          height: 255,
          width: 255,
          decoration: const BoxDecoration(
            color: AppColors.bgGrey,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.only(bottom: 33),
          alignment: Alignment.bottomCenter,
          child: Screenshot(
            controller: model.screenshotController,
            child: Container(
              height: 167,
              width: 167,
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
          top: 25,
          left: 106,
          right: 106,
          child: Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
            ),
            child: SizedBox(
              height: 43,
              width: 43,
              child: BlueAvatar(
                radius: 21.5,
                imageUrl: locator<AppStateValues>().currentUser!.displayPic,
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
      baseColor: AppColors.primary,
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
      color: AppColors.primary.value,
      fontHeight: fontHeight,
      drawText: false,
    );
    return SvgPicture.string(svg);
  }

  Shimmer qrLoadingShimmer() {
    return Shimmer.fromColors(
      baseColor: AppColors.brightBlue.withOpacity(.35),
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
