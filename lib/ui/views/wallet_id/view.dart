import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/navigation/pages.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_app_bar.dart';
import 'package:blue_business/ui/widgets/qr_overlay.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'view_model.dart';
import 'package:flutter/material.dart';

class WalletIdView extends StatefulWidget {
  const WalletIdView({super.key});

  @override
  State<WalletIdView> createState() => _WalletIdViewState();

  static MaterialPage page() {
    return MaterialPage(
        name: AppPages.walletIdPath,
        key: ValueKey(AppPages.walletIdPath),
        child: const WalletIdView());
  }
}

class _WalletIdViewState extends State<WalletIdView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<WalletIdViewModel>(
        model: WalletIdViewModel(),
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
                  onBackTap: () {
                    model.appStateManager.walletId = false;
                  },
                  leadingIcon: Icons.arrow_back_ios_new),
              body: !model.isScanning
                  ? Container(
                      height: model.size.height - 52,
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: model.copy,
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
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
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
                                          "Semira Yesufu",
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
                                    height: 18.33,
                                    width: 18.33,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          Center(
                            child: AppButton(
                                onTap: () {
                                  model.appStateManager.walletId = false;
                                  model.chatStateManager.message.text =
                                      "ABCD1234FF";
                                },
                                buttonText: "Share"),
                          ),
                          const SizedBox(height: 35)
                        ],
                      ),
                    )
                  : QrScanContainer(
                      controller: model.mobileScannerController,
                      detect: model.detect,
                    ),
            ),
          );
        });
  }
}

class ErrorWidget extends StatelessWidget {
  final String? errMessage;
  const ErrorWidget({super.key, this.errMessage});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.only(bottom: 52),
        decoration: BoxDecoration(color: AppColors.error),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Container(
              height: 180,
              width: 180,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AppColors.white.withOpacity(.1),
                  shape: BoxShape.circle),
              child: Container(
                height: 170,
                width: 170,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(.3),
                    shape: BoxShape.circle),
                child: Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(.6),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.error,
                    size: 145,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                errMessage ?? "An unknown error occurred.",
                style: AppTextStyles.subHeader.copyWith(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer()
          ],
        ));
  }
}

class QrScanContainer extends StatefulWidget {
  final MobileScannerController controller;
  final Function(BarcodeCapture capture) detect;
  const QrScanContainer(
      {super.key, required this.controller, required this.detect});

  @override
  State<QrScanContainer> createState() => _QrScanContainerState();
}

class _QrScanContainerState extends State<QrScanContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MobileScanner(
          controller: widget.controller,
          errorBuilder: (context, excp, _) {
            return ErrorWidget(
              errMessage: excp.errorDetails!.message,
            );
          },
          onDetect: widget.detect,
        ),
        QRScannerOverlay(overlayColour: Colors.black.withOpacity(.3))
      ],
    );
  }
}
