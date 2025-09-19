// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_beneficiary_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBeneficiaryData _$GetBeneficiaryDataFromJson(Map<String, dynamic> json) =>
    _GetBeneficiaryData(
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      loadMore: json['load_more'] as bool? ?? false,
    );

Map<String, dynamic> _$GetBeneficiaryDataToJson(_GetBeneficiaryData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'load_more': instance.loadMore,
    };
