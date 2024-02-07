import 'dart:convert';

import 'package:blue_business/core/models/chat_receiver/data/chat_receiver_data.dart';
import 'package:blue_business/core/models/chat_user/chat/chat.dart';
import 'package:blue_business/core/models/chat_user/message/blue_message.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatService extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  AppStateValues stateValues = locator<AppStateValues>();

  CollectionReference currentUserRoomListReference() {
    return _firestore
        .collection("chatRooms")
        .doc(stateValues.wallet!.walletCode)
        .collection("users");
  }

  CollectionReference peerRoomListReference(String peerWallet) {
    return _firestore
        .collection("chatRooms")
        .doc(peerWallet)
        .collection("users");
  }

  Stream<List<Chat>> getChatRooms() {
    final ref =
        currentUserRoomListReference().orderBy("time_stamp", descending: true);

    return ref.snapshots().map<List<Chat>>((event) => event.docs.map<Chat>((e) {
          Map<String, dynamic> data = e.data() as Map<String, dynamic>;

          return Chat.fromJson(data);
        }).toList());
  }

  Stream<List<BlueMessage>> getMessages(ChatResponseData user) {
    List<String> ids = [user.walletCode, stateValues.wallet!.walletCode];
    ids.sort();
    String roomId = "${ids[0]}_${ids[1]}";

    final ref = currentUserRoomListReference()
        .doc(roomId)
        .collection("messages")
        .orderBy("time_stamp", descending: false);

    return ref.snapshots().map<List<BlueMessage>>(
          (event) => event.docs.map<BlueMessage>(
            (e) {
              Map<String, dynamic> data = e.data();

              return BlueMessage.fromJson(data);
            },
          ).toList(),
        );
  }

  listenForChanges(String peerId) {
    List<String> ids = [peerId, stateValues.wallet!.walletCode];
    ids.sort();
    String roomId = "${ids[0]}_${ids[1]}";
    currentUserRoomListReference().doc(roomId).snapshots().listen((event) {
      Map<String, dynamic> data = event.data() as Map<String, dynamic>;
      stateValues.unreadCount = data["unread_count"];
    });
  }

  updateChatRoom(Chat chat) async {
    String roomId = chat.channelId;

    await currentUserRoomListReference().doc(roomId).set(chat.toJson());
    await peerRoomListReference(jsonDecode(chat.receiver)["wallet_code"])
        .doc(roomId)
        .set(chat.copyWith(peerToken: stateValues.fcmToken).toJson());
  }

  saveMessage(Chat chat, BlueMessage message) async {
    String roomId = chat.channelId;

    await currentUserRoomListReference()
        .doc(roomId)
        .collection("messages")
        .add(message.toJson());
    await peerRoomListReference(jsonDecode(chat.receiver)["wallet_code"])
        .doc(roomId)
        .collection("messages")
        .add(message.toJson());

    await updateChatRoom(chat);
  }
}
