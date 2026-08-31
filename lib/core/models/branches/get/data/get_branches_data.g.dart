// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branches_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBranchesData _$GetBranchesDataFromJson(Map<String, dynamic> json) =>
    _GetBranchesData(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 1,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetBranchesDataToJson(_GetBranchesData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
      'load_more': instance.loadMore,
      'per_page': ?instance.perPage,
    };
