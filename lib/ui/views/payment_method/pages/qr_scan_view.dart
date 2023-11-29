import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/widgets/qr_overlay.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'view_model.dart';

class QrScanView extends StatefulWidget {
  const QrScanView({super.key});

  @override
  State<QrScanView> createState() => _QrScanViewState();
}

class _QrScanViewState extends State<QrScanView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<PaymentMethodPagesViewModel>(
        model: PaymentMethodPagesViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return Scaffold(
            body: Stack(
              children: [
                MobileScanner(
                  controller: model.mobileScannerController,
                  errorBuilder: (context, excp, _) {
                    return ErrorWidget(
                      errorMessage: excp.errorDetails!.message,
                    );
                  },
                  scanWindow: Rect.fromCenter(
                      center: Offset(size.width / 2, size.height / 2),
                      width: 250,
                      height: 250),
                  onDetect: (capture) {
                    model.detect(capture, context);
                  },
                ),
                QRScannerOverlay(overlayColour: Colors.black.withOpacity(.3))
              ],
            ),
          );
        });
  }
}

class ErrorWidget extends StatelessWidget {
  final String? errorMessage;
  const ErrorWidget({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.redAccent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 180,
            width: 180,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppColors.white.withOpacity(.1), shape: BoxShape.circle),
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
              errorMessage ?? "An unknown error occurred.",
              style: AppTextStyles.subHeader.copyWith(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
