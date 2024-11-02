import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/ui/features/webview/view_model.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlueWebViewArgs {
  BlueWebViewArgs(
    this.url, {
    required this.successMessage,
    required this.failureMessage,
    this.onLeadingPressed,
  });

  final String url;
  final String successMessage;
  final String failureMessage;
  final Function()? onLeadingPressed;
}

class BlueWebview extends StatelessWidget {
  const BlueWebview({required this.args, Key? key}) : super(key: key);
  final BlueWebViewArgs args;

  @override
  Widget build(BuildContext context) {
    return BaseView<WebviewViewModel>(
        model: WebviewViewModel(),
        onModelReady: (model) => model.init(context, args),
        builder: (context, model, _) {
          return Scaffold(
            appBar: BlueAppBar.primary(
              onBackTap: args.onLeadingPressed,
            ),
            body: model.loadingPercent != 100
                ? const Center(child: CircularProgressIndicator())
                : WebViewWidget(controller: model.webviewController),
          );
        });
  }
}
