import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'view_model.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlueWebViewArgs {
  BlueWebViewArgs(
    this.url, {
    this.successMessage,
    this.failureMessage,
    this.onLeadingPressed,
  });

  final String url;
  final String? successMessage;
  final String? failureMessage;
  final Function()? onLeadingPressed;
}

class BlueWebview extends StatefulWidget {
  const BlueWebview({required this.args, Key? key}) : super(key: key);
  final BlueWebViewArgs args;

  @override
  State<BlueWebview> createState() => _BlueWebviewState();
}

class _BlueWebviewState extends State<BlueWebview> {
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  @override
  Widget build(BuildContext context) {
    return BaseView<WebviewViewModel>(
        model: WebviewViewModel(),
        onModelReady: (model) => model.init(context, widget.args),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: widget.args.onLeadingPressed,
            ),
            body: model.loadingPercent != 100
                ? const Center(child: CircularProgressIndicator())
                : WebViewWidget(
                    controller: model.webviewController,
                    gestureRecognizers: gestureRecognizers,
                  ),
          );
        });
  }
}
