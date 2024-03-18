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
    _$ChatResponseDataImpl instance) {
  final val = <String, dynamic>{
    'first_name': instance.firstName,
    'last_name': instance.lastName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('display_pic', instance.displayPic);
  val['wallet_code'] = instance.walletCode;
  val['fcm_token'] = instance.fcmToken;
  return val;
}
