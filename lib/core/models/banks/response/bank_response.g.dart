// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankResponseImpl _$$BankResponseImplFromJson(Map<String, dynamic> json) =>
    _$BankResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BankData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BankResponseImplToJson(_$BankResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data);
  return val;
}
