// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_receiver_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatResponseDataImpl _$$ChatResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatResponseDataImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      displayPic: json['display_pic'] as String?,
      walletCode: json['wallet_code'] as String,
      fcmToken: json['fcm_token'] as String,
    );

Map<String, dynamic> _$$ChatResponseDataImplToJson(
        _$ChatResponseDataImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      if (instance.displayPic case final value?) 'display_pic': value,
      'wallet_code': instance.walletCode,
      'fcm_token': instance.fcmToken,
    };
