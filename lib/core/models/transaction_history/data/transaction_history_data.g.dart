// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDataImpl _$$TransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataImpl(
      total: json['total'] as int,
      limit: json['limit'] as String,
      page: json['page'] as String,
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => TransactionHistory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'data': instance.data,
      'load_more': instance.loadMore,
    };
