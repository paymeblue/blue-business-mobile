// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      channelId: json['channelId'] as String,
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      timeStamp: json['timeStamp'] as String,
      fcmToken: json['fcmToken'] as String,
      senderName: json['senderName'] as String,
      peerToken: json['peerToken'] as String,
      updateType: json['updateType'] as String? ?? "message",
      message: json['message'] as String?,
      unreadCount: json['unreadCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'timeStamp': instance.timeStamp,
      'fcmToken': instance.fcmToken,
      'senderName': instance.senderName,
      'peerToken': instance.peerToken,
      'updateType': instance.updateType,
      'message': instance.message,
      'unreadCount': instance.unreadCount,
    };
