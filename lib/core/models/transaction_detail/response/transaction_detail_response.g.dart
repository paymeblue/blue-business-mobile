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
    _$TransactionDetailResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
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
