// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blue_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlueMessageImpl _$$BlueMessageImplFromJson(Map<String, dynamic> json) =>
    _$BlueMessageImpl(
      message: json['message'] as String,
      senderId: json['sender_id'] as String,
      timeStamp: json['time_stamp'] as String,
    );

Map<String, dynamic> _$$BlueMessageImplToJson(_$BlueMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sender_id': instance.senderId,
      'time_stamp': instance.timeStamp,
    };
