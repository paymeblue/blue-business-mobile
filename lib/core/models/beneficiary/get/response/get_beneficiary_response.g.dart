// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_beneficiary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBeneficiaryResponseImpl _$$GetBeneficiaryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBeneficiaryResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : GetBeneficiaryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBeneficiaryResponseImplToJson(
    _$GetBeneficiaryResponseImpl instance) {
  final val = <String, dynamic>{
    'success': instance.success,
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
