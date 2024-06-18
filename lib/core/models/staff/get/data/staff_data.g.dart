// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStaffDataImpl _$$GetStaffDataImplFromJson(Map<String, dynamic> json) =>
    _$GetStaffDataImpl(
      total: json['total'] as int,
      limit: json['limit'] as int,
      page: json['page'] as int,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
      perPage: json['per_page'] as int?,
    );

Map<String, dynamic> _$$GetStaffDataImplToJson(_$GetStaffDataImpl instance) {
  final val = <String, dynamic>{
    'total': instance.total,
    'limit': instance.limit,
    'page': instance.page,
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
