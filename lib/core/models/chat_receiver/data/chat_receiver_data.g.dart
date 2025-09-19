// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_receiver_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatResponseData _$ChatResponseDataFromJson(Map<String, dynamic> json) =>
    _ChatResponseData(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      displayPic: json['display_pic'] as String?,
      walletCode: json['wallet_code'] as String,
      fcmToken: json['fcm_token'] as String,
    );

Map<String, dynamic> _$ChatResponseDataToJson(_ChatResponseData instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'display_pic': ?instance.displayPic,
      'wallet_code': instance.walletCode,
      'fcm_token': instance.fcmToken,
    };
