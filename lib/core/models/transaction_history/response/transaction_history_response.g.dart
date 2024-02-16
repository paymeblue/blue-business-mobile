// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionResponseImpl _$$TransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TransactionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionResponseImplToJson(
    _$TransactionResponseImpl instance) {
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
