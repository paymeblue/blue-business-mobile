// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_branches_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBranchesDataImpl _$$GetBranchesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBranchesDataImpl(
      total: json['total'] as int? ?? 0,
      page: json['page'] as int? ?? 1,
      limit: json['limit'] as int? ?? 1,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
      perPage: json['per_page'] as int?,
    );

Map<String, dynamic> _$$GetBranchesDataImplToJson(
    _$GetBranchesDataImpl instance) {
  final val = <String, dynamic>{
    'total': instance.total,
    'page': instance.page,
    'limit': instance.limit,
    'data': instance.data,
    'load_more': instance.loadMore,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('per_page', instance.perPage);
  return val;
}
