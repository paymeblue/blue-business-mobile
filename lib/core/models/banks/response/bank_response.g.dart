// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankResponseImpl _$$BankResponseImplFromJson(Map<String, dynamic> json) =>
    _$BankResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BankData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BankResponseImplToJson(_$BankResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
