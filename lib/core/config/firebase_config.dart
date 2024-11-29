import 'dart:developer';

import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/firebase_options.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
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

Set<String> _handledMessageIds = {}; // Store processed message IDs

Future handleForegroundMessages(RemoteMessage message) async {
  log(message.data.toString());

  // Check if this message has already been handled
  String? messageId = message.messageId;
  if (messageId != null && _handledMessageIds.contains(messageId)) {
    return;
  }

  if (messageId != null) {
    _handledMessageIds.add(messageId);
  }

  AppNotification.notification(
    title: message.notification!.title,
    message: message.notification!.body,
  );
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

    try {
      NotificationSettings settings = await messaging.getNotificationSettings();
      log(settings.authorizationStatus.toString());

      if (settings.authorizationStatus == AuthorizationStatus.denied ||
          settings.authorizationStatus == AuthorizationStatus.notDetermined) {
        messaging.requestPermission().then((s) async {
          if (s.authorizationStatus == AuthorizationStatus.authorized) {
            stateValues.fcmToken = await messaging.getToken() ?? "";
          }
        });
      } else {
        stateValues.fcmToken = await messaging.getToken() ?? "";
      }
    } catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
    }

    log(stateValues.fcmToken);

    await initNotification();
  }
}
