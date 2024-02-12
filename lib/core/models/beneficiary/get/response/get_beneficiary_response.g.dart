// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_beneficiary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBeneficiaryResponseImpl _$$GetBeneficiaryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBeneficiaryResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetBeneficiaryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBeneficiaryResponseImplToJson(
        _$GetBeneficiaryResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
