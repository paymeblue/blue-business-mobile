// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDetailResponseImpl _$$TransactionDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'],
    );

Map<String, dynamic> _$$TransactionDetailResponseImplToJson(
        _$TransactionDetailResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };
