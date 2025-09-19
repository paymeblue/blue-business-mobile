// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_beneficiary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBeneficiaryResponse _$GetBeneficiaryResponseFromJson(
  Map<String, dynamic> json,
) => _GetBeneficiaryResponse(
  status: json['status'] as String? ?? "fail",
  message: json['message'] as String?,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => BlueBeneficiary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  paginationInfo: json['pagination_info'] == null
      ? null
      : GetBeneficiaryData.fromJson(
          json['pagination_info'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$GetBeneficiaryResponseToJson(
  _GetBeneficiaryResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': ?instance.message,
  'data': instance.data,
  'pagination_info': ?instance.paginationInfo,
};
