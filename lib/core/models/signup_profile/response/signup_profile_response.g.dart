// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupProfileResponseImpl _$$SignupProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupProfileResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SignupProfileResponseImplToJson(
    _$SignupProfileResponseImpl instance) {
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
