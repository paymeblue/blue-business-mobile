// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionResponseImpl _$$TransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TransactionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionResponseImplToJson(
        _$TransactionResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
