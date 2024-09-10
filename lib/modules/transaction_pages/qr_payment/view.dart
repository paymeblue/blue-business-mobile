import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/navigation/screens.dart';
import 'package:blue_business/widgets/overlays/qr_overlay.dart';
// import 'package:blue_business/widgets/overlays/qr_overlay.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'view_model.dart';

class QrPaymentView extends StatefulWidget {
  final InitiateTransactionData data;
  const QrPaymentView({super.key, required this.data});

  @override
  State<QrPaymentView> createState() => _QrPaymentViewState();
}

class _QrPaymentViewState extends State<QrPaymentView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<QrPaymentViewModel>(
      model: QrPaymentViewModel(),
      onModelReady: (model) => model.init(context, widget.data),
      builder: (context, model, _) {
        return Container(
          height: model.size.height,
          width: model.size.width,
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 35, top: 20),
          child: MobileScanner(
            controller: model.mobileScannerController,
            errorBuilder: (context, excp, _) {
              return ErrorRouteView(
                message: excp.errorDetails?.message ??
                    "Something went wrong while trying to complete this action. Please try again later",
                newRoute: "${RoutePaths.initiateTransactionPath}/pay",
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
        );
      },
    );
  }
}
