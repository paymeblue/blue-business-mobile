import 'dart:developer';

import 'package:blue_business/core/io/api/chat_service/chat_service.dart';
import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_user/chat/chat.dart';
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
import 'package:firebase_messaging/firebase_messaging.dart';
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
  AppStateValues stateValues =
      Provider.of<AppStateValues>(context, listen: false);

  if (data["type"] == "chat") {
    if (stateValues.channelId != data["channel_id"]) {
      stateValues.hasNewMessage = true;
      AppNotification.message(
          title: data['sender_name'], message: data["message"]);
    }
  } else if (data["type"] == "payment") {
    if (AppConstants.accessToken.isNotEmpty) {
      PushPayment payment = PushPayment.fromJson(data);
      BlueBottomSheet.paymentRequest(payment).then((value) {
        if (value) {
          context.go("/${payment.transactionId}${RoutePaths.pushPaymentPin}");
        }
      });
    }
  } else {
    // stateValues.isKycComplete = data["kyc_status"].toString() == "1";

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

    BuildContext context =
        locator<NavigationService>().navigatorKey.currentContext!;
    AppStateValues stateValues =
        Provider.of<AppStateValues>(context, listen: false);

    if (message.data.isNotEmpty) {
      if (message.data["type"] == "chat") {
        stateValues.hasNewMessage = true;
        ChatResponseData sender =
            ChatResponseData.fromJson(message.data["sender"]);

        if (AppConstants.accessToken.isEmpty) {
          context.go(RoutePaths.loginPath, extra: () {
            context.go(RoutePaths.chatDetailsPath,
                extra: {"peer": sender, "unread": 0});
          });
        } else {
          if (context.mounted) {
            context.go(RoutePaths.chatDetailsPath,
                extra: {"peer": sender, "unread": 0});

            Chat c = Chat(
              channelId: message.data["channel_id"],
              sender: message.data["sender"],
              receiver: message.data["receiver"],
              timeStamp: message.data["time_tamp"],
              fcmToken: message.data["fcmToken"],
              senderName: message.data["sender_name"],
              peerToken: message.data["peerToken"],
              updateType: message.data["update_type"],
              message: message.data["message"],
              unreadCount: 0,
            );

            await ChatService().updateChatRoom(c);
          }
        }
      }
    }
  }

  static initNotification() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      sound: true,
      badge: true,
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

    await messaging.requestPermission();

    try {
      stateValues.fcmToken = await messaging.getToken() ?? "";
    } catch (e) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(e));
    }

    await initNotification();
  }
}
