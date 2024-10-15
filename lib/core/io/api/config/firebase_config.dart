import 'dart:developer';

import 'package:blue_business/core/models/push_payment_request/push_payment.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/firebase_options.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

Future handleBackgroundMessages(RemoteMessage message) async {
  log(message.notification.toString());
  BuildContext context =
      locator<NavigationService>().navigatorKey.currentContext!;
  AppStateValues stateValues =
      Provider.of<AppStateValues>(context, listen: false);
  Map<String, dynamic> data = message.data;
  if (data["type"] == "chat") {
    stateValues.hasNewMessage = true;
  }
}

Future handleForegroundMessages(RemoteMessage message) async {
  Map<String, dynamic> data = message.data;
  BuildContext context =
      locator<NavigationService>().navigatorKey.currentContext!;

  if (data["type"] == "payment") {
    if (locator<AppStateValues>().accessToken.isNotEmpty) {
      PushPayment payment = PushPayment.fromJson(data);
      BlueBottomSheet.paymentRequest(payment).then((value) {
        if (value) {
          if (context.mounted) {
            context.go("/${payment.transactionId}${RoutePaths.pushPaymentPin}");
          }
        }
      });
    }
  } else {
    AppNotification.notification(
      title: message.notification!.title,
      message: message.notification!.body,
    );
  }
}

class FirebaseConfig {
  FirebaseConfig._();

  static _handleMessage(RemoteMessage? message) async {
    if (message == null) return;
  }

  static initNotification() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: false,
      sound: true,
      badge: false,
    );

    FirebaseMessaging.instance.getInitialMessage().then(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessages);
    FirebaseMessaging.onMessage.listen(handleForegroundMessages);
  }

  static init() async {
    AppStateValues stateValues = locator<AppStateValues>();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    FirebaseMessaging messaging = FirebaseMessaging.instance;

    setupCrashlytics();

    messaging.requestPermission().then((v) async {
      if (v.authorizationStatus == AuthorizationStatus.authorized) {
        try {
          stateValues.fcmToken = await messaging.getToken() ?? "";
        } catch (e) {
          AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
        }

        await initNotification();
      }
    });

    await initNotification();
  }

  static setupCrashlytics() async {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = (errorDetails) {
      if (!kDebugMode) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      }
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      if (!kDebugMode) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      }
      return true;
    };
  }
}
