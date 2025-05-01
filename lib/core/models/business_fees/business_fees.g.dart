// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_fees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBusinessFeesResponseImpl _$$GetBusinessFeesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBusinessFeesResponseImpl(
      status: json['status'] as String? ?? 'fail',
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetBusinessFeesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBusinessFeesResponseImplToJson(
        _$GetBusinessFeesResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
      if (instance.data case final value?) 'data': value,
    };

_$GetBusinessFeesDataImpl _$$GetBusinessFeesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBusinessFeesDataImpl(
      id: (json['id'] as num).toInt(),
      businessId: (json['business_id'] as num).toInt(),
      withdrawal: (json['withdrawal'] as num?)?.toDouble() ?? 0,
      billPayment: (json['bill_payment'] as num?)?.toDouble() ?? 0,
      transfers: (json['transfers'] as num?)?.toDouble() ?? 0,
      blueToBlue: (json['blue_to_blue'] as num?)?.toDouble() ?? 0,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$GetBusinessFeesDataImplToJson(
        _$GetBusinessFeesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business_id': instance.businessId,
      'withdrawal': instance.withdrawal,
      'bill_payment': instance.billPayment,
      'transfers': instance.transfers,
      'blue_to_blue': instance.blueToBlue,
      if (instance.createdAt case final value?) 'created_at': value,
      if (instance.updatedAt case final value?) 'updated_at': value,
    };
