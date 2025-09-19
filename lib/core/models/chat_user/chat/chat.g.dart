// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
  channelId: json['channel_id'] as String,
  sender: json['sender'] as String,
  receiver: json['receiver'] as String,
  timeStamp: json['time_stamp'] as String,
  fcmToken: json['fcm_token'] as String,
  senderName: json['sender_name'] as String,
  peerToken: json['peer_token'] as String,
  updateType: json['update_type'] as String? ?? "message",
  message: json['message'] as String?,
  unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
  'channel_id': instance.channelId,
  'sender': instance.sender,
  'receiver': instance.receiver,
  'time_stamp': instance.timeStamp,
  'fcm_token': instance.fcmToken,
  'sender_name': instance.senderName,
  'peer_token': instance.peerToken,
  'update_type': instance.updateType,
  'message': ?instance.message,
  'unread_count': instance.unreadCount,
};
