// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentLinkData _$PaymentLinkDataFromJson(Map<String, dynamic> json) =>
    _PaymentLinkData(
      total: json['total'] as String,
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => PaymentLinkItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
    );

Map<String, dynamic> _$PaymentLinkDataToJson(_PaymentLinkData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'data': instance.data,
      'load_more': instance.loadMore,
    };
