// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionDetailResponse _$TransactionDetailResponseFromJson(
  Map<String, dynamic> json,
) => _TransactionDetailResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data: json['data'],
);

Map<String, dynamic> _$TransactionDetailResponseToJson(
  _TransactionDetailResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};
