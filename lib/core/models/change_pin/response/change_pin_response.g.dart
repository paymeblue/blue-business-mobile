// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePinResponseImpl _$$ChangePinResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePinResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ChangePinResponseImplToJson(
    _$ChangePinResponseImpl instance) {
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
