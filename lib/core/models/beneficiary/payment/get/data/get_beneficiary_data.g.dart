// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_beneficiary_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBeneficiaryDataImpl _$$GetBeneficiaryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBeneficiaryDataImpl(
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      loadMore: json['load_more'] as bool? ?? false,
    );

Map<String, dynamic> _$$GetBeneficiaryDataImplToJson(
        _$GetBeneficiaryDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'load_more': instance.loadMore,
    };
