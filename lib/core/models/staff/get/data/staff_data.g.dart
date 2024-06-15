// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStaffDataImpl _$$GetStaffDataImplFromJson(Map<String, dynamic> json) =>
    _$GetStaffDataImpl(
      total: json['total'] as String,
      limit: json['limit'] as String,
      page: json['page'] as String,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Staff.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
    );

Map<String, dynamic> _$$GetStaffDataImplToJson(_$GetStaffDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'data': instance.data,
      'load_more': instance.loadMore,
    };
