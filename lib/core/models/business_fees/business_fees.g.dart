// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_fees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBusinessFeesResponse _$GetBusinessFeesResponseFromJson(
  Map<String, dynamic> json,
) => _GetBusinessFeesResponse(
  status: json['status'] as String? ?? 'fail',
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : GetBusinessFeesData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetBusinessFeesResponseToJson(
  _GetBusinessFeesResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': ?instance.data,
};

_GetBusinessFeesData _$GetBusinessFeesDataFromJson(Map<String, dynamic> json) =>
    _GetBusinessFeesData(
      id: (json['id'] as num).toInt(),
      businessId: (json['business_id'] as num).toInt(),
      withdrawal: (json['withdrawal'] as num?)?.toDouble() ?? 0,
      billPayment: (json['bill_payment'] as num?)?.toDouble() ?? 0,
      transfers: (json['transfers'] as num?)?.toDouble() ?? 0,
      blueToBlue: (json['blue_to_blue'] as num?)?.toDouble() ?? 0,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$GetBusinessFeesDataToJson(
  _GetBusinessFeesData instance,
) => <String, dynamic>{
  'id': instance.id,
  'business_id': instance.businessId,
  'withdrawal': instance.withdrawal,
  'bill_payment': instance.billPayment,
  'transfers': instance.transfers,
  'blue_to_blue': instance.blueToBlue,
  'created_at': ?instance.createdAt,
  'updated_at': ?instance.updatedAt,
};
