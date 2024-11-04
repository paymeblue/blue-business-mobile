import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/error/presentation/view.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/overlays/qr_overlay.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'view_model.dart';

class QrPaymentView extends StatelessWidget {
  final InitiateTransactionData data;
  const QrPaymentView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<QrPaymentViewModel>(
      model: QrPaymentViewModel(),
      onModelReady: (model) => model.init(context, data),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              context.pop();
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 8),
            child: MobileScanner(
              controller: model.mobileScannerController,
              errorBuilder: (context, excp, _) {
                return ErrorRouteView(
                  message: excp.errorDetails?.message ??
                      "Something went wrong while trying to complete this action. Please try again later",
                );
              },
              scanWindow: Rect.fromCenter(
                  center: Offset(context.mediaQuery.size.width / 2,
                      context.mediaQuery.size.height / 2),
                  width: 250,
                  height: 250),
              onDetect: (capture) {
                model.detect(capture, context);
              },
              overlay:
                  QRScannerOverlay(overlayColour: Colors.black.withOpacity(.2)),
            ),
          ),
        );
      },
    );
  }
}
