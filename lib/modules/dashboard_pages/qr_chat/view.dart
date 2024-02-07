import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/navigation/screens.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/overlays/qr_overlay.dart';
// import 'package:blue_business/widgets/overlays/qr_overlay.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'view_model.dart';

class QrChatView extends StatefulWidget {
  const QrChatView({super.key});

  @override
  State<QrChatView> createState() => _QrChatViewState();
}

class _QrChatViewState extends State<QrChatView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<QrChatViewModel>(
      model: QrChatViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: MobileScanner(
            controller: model.mobileScannerController,
            errorBuilder: (context, excp, _) {
              return ErrorRouteView(
                message: excp.errorDetails!.message,
                newRoute: RoutePaths.messagePath,
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
