// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_beneficiary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetBeneficiaryResponse _$SetBeneficiaryResponseFromJson(
  Map<String, dynamic> json,
) => _SetBeneficiaryResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
);

Map<String, dynamic> _$SetBeneficiaryResponseToJson(
  _SetBeneficiaryResponse instance,
) => <String, dynamic>{'status': instance.status, 'message': ?instance.message};
