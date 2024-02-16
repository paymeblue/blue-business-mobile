// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiateTransactionResponseImpl _$$InitiateTransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiateTransactionResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : InitiateTransactionData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitiateTransactionResponseImplToJson(
    _$InitiateTransactionResponseImpl instance) {
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
