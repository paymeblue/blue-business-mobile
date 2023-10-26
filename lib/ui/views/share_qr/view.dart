import 'package:avatar_view/avatar_view.dart';
import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/share_qr/view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:blue_business/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ShareQrView extends StatefulWidget {
  const ShareQrView({super.key});

  @override
  State<ShareQrView> createState() => _ShareQrViewState();

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.shareQrPath,
        key: ValueKey(AppPages.shareQrPath),
        child: const ShareQrView());
  }
}

class _ShareQrViewState extends State<ShareQrView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ShareQrViewModel>(
      model: ShareQrViewModel(),
      onModelReady: (model) => model.init(),
      onDispose: (p0) {
        Timeout.dispose();
      },
      builder: (context, model, _) {
        return GestureDetector(
          onTap: () {
            Timeout.resetTimer();
          },
          onPanDown: (details) {
            Timeout.resetTimer();
          },
          child: Scaffold(
            appBar: BlueAppBar.show(
              leadingIcon: Icons.arrow_back_ios_new,
              onBackTap: () {
                model.appStateManager.shareQr = false;
                model.appStateManager.goToDashboard();
              },
            ),
            body: Container(
              height: model.size.height - 100,
              width: model.size.width,
              color: AppColors.white,
              child: Column(
                children: [
                  Text(
                    "Receive money easily!",
                    style: AppTextStyles.header,
                  ),
                  const SizedBox(height: 26),
                  Stack(
                    children: [
                      Container(
                        height: 255,
                        width: 255,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.bgGrey),
                        child: Screenshot(
                          controller: model.screenshotController,
                          child: Container(
                            height: 166,
                            width: 166,
                            padding: const EdgeInsets.all(23),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(17)),
                            child: QrImageView(
                              data: "ABCD1234FF",
                              embeddedImage: AssetImage(AppAssets.blueBgLogo),
                              eyeStyle: QrEyeStyle(
                                  color: AppColors.textcolor,
                                  eyeShape: QrEyeShape.square),
                              size: 120,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 25,
                          left: 106,
                          right: 106,
                          child: AvatarView(
                            radius: 21.5,
                            avatarType: AvatarType.CIRCLE,
                            imagePath: "",
                            errorWidget: Container(
                              width: 43,
                              height: 43,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: AppColors.bgGrey,
                                  border: Border.all(
                                      color: AppColors.white, width: 1.5),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                AppAssets.userIcon,
                                fit: BoxFit.cover,
                              ),
                            ),
                            placeHolder: Container(
                              width: 43,
                              height: 43,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: AppColors.bgGrey,
                                  border: Border.all(
                                      color: AppColors.white, width: 1.5),
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                AppAssets.userIcon,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(height: 26),
                  AppButton(
                    onTap: () {
                      Share.share(
                          "Semira Yesufu QR Code\nhttps://blue//QR pay/BLU_tyiwoqpq");
                    },
                    buttonText: "Share my QR Code",
                    width: 330,
                  ),
                  const SizedBox(height: 12),
                  AppButton(
                    onTap: model.downloadAndShareQr,
                    isPrimary: false,
                    buttonText: "Download QR Code",
                    width: 330,
                  ),
                  const SizedBox(height: 32),
                  Expanded(
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 29),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(40, 145, 145, 145),
                                offset: Offset(-5, -5),
                                blurRadius: 15)
                          ],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Top up Account",
                            style: AppTextStyles.subHeader.copyWith(
                                fontSize: 16, color: AppColors.textcolor),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(
                                      const ClipboardData(text: "1234567890"))
                                  .then((value) {
                                AppToast.show(
                                    message: "Copied to clipboard",
                                    context: context);
                              });
                            },
                            child: Container(
                              width: model.size.width,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 13),
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                        color: AppColors.accountLogoBg,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                AppAssets.wemaLogo))),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Wema",
                                          style: AppTextStyles.subHeader
                                              .copyWith(
                                                  color: AppColors.textcolor),
                                        ),
                                        Text(
                                          "1234567890",
                                          style: AppTextStyles.subText.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    AppAssets.copyIcon,
                                    height: 18,
                                    width: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Blue Wallet",
                            style: AppTextStyles.subHeader.copyWith(
                                fontSize: 16, color: AppColors.textcolor),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(
                                      const ClipboardData(text: "ABCD1234FF"))
                                  .then((value) {
                                AppToast.show(
                                    message: "Copied toclipboard",
                                    context: context);
                              });
                            },
                            child: Container(
                              width: model.size.width,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 13),
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      color: AppColors.bgGrey,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset(AppAssets.blueBgLogo),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Blue ID Number",
                                          style: AppTextStyles.subHeader
                                              .copyWith(
                                                  color: AppColors.textcolor),
                                        ),
                                        Text(
                                          "ABCD1234FF",
                                          style: AppTextStyles.subText.copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    AppAssets.copyIcon,
                                    height: 18,
                                    width: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
