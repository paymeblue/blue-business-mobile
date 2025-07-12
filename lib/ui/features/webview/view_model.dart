import 'dart:developer';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/ui/features/webview/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class WebviewViewModel extends BaseViewModel {
  late final WebViewController webviewController;
  AppStateValues appStateValues = locator<AppStateValues>();
  int loadingPercent = 0;

  init(BuildContext context, BlueWebViewArgs args) {
    // #docRegion platform_features
    late final PlatformWebViewControllerCreationParams params;

    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }

    final controller = WebViewController.fromPlatformCreationParams(params)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(
        "Close",
        onMessageReceived: (message) {
          onMessage(message, context, args);
        },
      )
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            loadingPercent = progress;
            notifyListeners();
          },
          onWebResourceError: (WebResourceError error) {
            log('onWebResourceError ${error.url}\nDescription: ${error.description}');
          },
        ),
      )
      ..loadRequest(Uri.parse(args.url));

    // #doc region platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);

      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #end docRegion platform_features

    webviewController = controller;
  }

  Future onMessage(JavaScriptMessage message, BuildContext context,
      BlueWebViewArgs args) async {
    if (message.message == "closeWebView") {
      AppNotification.success(
        message: args.successMessage,
      );
    }

    Future.delayed(const Duration(seconds: 3), () {
      if (context.mounted) goBack(context);
    });
  }

  goBack(BuildContext context, [bool status = false]) {
    context.pop(status);
  }
}
