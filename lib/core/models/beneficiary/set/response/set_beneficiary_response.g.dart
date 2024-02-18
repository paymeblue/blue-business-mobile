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
    _$SetBeneficiaryResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
