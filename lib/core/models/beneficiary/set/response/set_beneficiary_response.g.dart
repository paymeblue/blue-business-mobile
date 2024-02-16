// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_beneficiary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetBeneficiaryResponseImpl _$$SetBeneficiaryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetBeneficiaryResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SetBeneficiaryResponseImplToJson(
    _$SetBeneficiaryResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  return val;
}
