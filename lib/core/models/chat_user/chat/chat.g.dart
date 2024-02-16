// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      channelId: json['channel_id'] as String,
      sender: json['sender'] as String,
      receiver: json['receiver'] as String,
      timeStamp: json['time_stamp'] as String,
      fcmToken: json['fcmToken'] as String,
      senderName: json['sender_name'] as String,
      peerToken: json['peerToken'] as String,
      updateType: json['update_type'] as String? ?? "message",
      message: json['message'] as String?,
      unreadCount: json['unread_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) {
  final val = <String, dynamic>{
    'channel_id': instance.channelId,
    'sender': instance.sender,
    'receiver': instance.receiver,
    'time_stamp': instance.timeStamp,
    'fcmToken': instance.fcmToken,
    'sender_name': instance.senderName,
    'peerToken': instance.peerToken,
    'update_type': instance.updateType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  val['unread_count'] = instance.unreadCount;
  return val;
}
