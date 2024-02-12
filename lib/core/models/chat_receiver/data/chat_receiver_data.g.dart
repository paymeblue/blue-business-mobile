// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_receiver_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatResponseDataImpl _$$ChatResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatResponseDataImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      displayPic: json['displayPic'] as String?,
      walletCode: json['walletCode'] as String,
      fcmToken: json['fcmToken'] as String,
    );

Map<String, dynamic> _$$ChatResponseDataImplToJson(
        _$ChatResponseDataImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayPic': instance.displayPic,
      'walletCode': instance.walletCode,
      'fcmToken': instance.fcmToken,
    };
