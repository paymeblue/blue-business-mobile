// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branches_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBranchesDataImpl _$$GetBranchesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBranchesDataImpl(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 1,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetBranchesDataImplToJson(
        _$GetBranchesDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
      'load_more': instance.loadMore,
      if (instance.perPage case final value?) 'per_page': value,
    };
