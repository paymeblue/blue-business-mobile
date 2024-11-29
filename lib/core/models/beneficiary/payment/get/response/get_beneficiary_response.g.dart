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
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => BlueBeneficiary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      paginationInfo: json['pagination_info'] == null
          ? null
          : GetBeneficiaryData.fromJson(
              json['pagination_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBeneficiaryResponseImplToJson(
    _$GetBeneficiaryResponseImpl instance) {
  final val = <String, dynamic>{
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  val['data'] = instance.data;
  writeNotNull('pagination_info', instance.paginationInfo);
  return val;
}
