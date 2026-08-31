// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blue_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BlueMessage _$BlueMessageFromJson(Map<String, dynamic> json) => _BlueMessage(
  message: json['message'] as String,
  senderId: json['sender_id'] as String,
  timeStamp: json['time_stamp'] as String,
);

Map<String, dynamic> _$BlueMessageToJson(_BlueMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sender_id': instance.senderId,
      'time_stamp': instance.timeStamp,
    };
