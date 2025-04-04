// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_beneficiary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetBeneficiaryResponseImpl _$$SetBeneficiaryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetBeneficiaryResponseImpl(
      status: json['status'] as String? ?? "fail",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SetBeneficiaryResponseImplToJson(
        _$SetBeneficiaryResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      if (instance.message case final value?) 'message': value,
    };
