// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blue_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlueMessageImpl _$$BlueMessageImplFromJson(Map<String, dynamic> json) =>
    _$BlueMessageImpl(
      message: json['message'] as String,
      senderId: json['senderId'] as String,
      timeStamp: json['timeStamp'] as String,
    );

Map<String, dynamic> _$$BlueMessageImplToJson(_$BlueMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'senderId': instance.senderId,
      'timeStamp': instance.timeStamp,
    };
