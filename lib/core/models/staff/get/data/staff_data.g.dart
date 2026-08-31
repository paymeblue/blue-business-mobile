// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetStaffData _$GetStaffDataFromJson(Map<String, dynamic> json) =>
    _GetStaffData(
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
      perPage: (json['per_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetStaffDataToJson(_GetStaffData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'data': instance.data,
      'load_more': instance.loadMore,
      'per_page': ?instance.perPage,
    };
