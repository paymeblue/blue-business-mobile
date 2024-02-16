// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteResponseImpl _$$DeleteResponseImplFromJson(Map<String, dynamic> json) =>
    _$DeleteResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DeleteResponseImplToJson(
    _$DeleteResponseImpl instance) {
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
