// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_link_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentLinkDataImpl _$$PaymentLinkDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentLinkDataImpl(
      total: json['total'] as int,
      limit: json['limit'] as int,
      page: json['page'] as int,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PaymentLinkItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
    );

Map<String, dynamic> _$$PaymentLinkDataImplToJson(
        _$PaymentLinkDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'data': instance.data,
      'load_more': instance.loadMore,
    };
