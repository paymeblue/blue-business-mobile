// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recover_phone_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendNewPhoneResponseImpl _$$SendNewPhoneResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendNewPhoneResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SendNewPhoneResponseImplToJson(
    _$SendNewPhoneResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
