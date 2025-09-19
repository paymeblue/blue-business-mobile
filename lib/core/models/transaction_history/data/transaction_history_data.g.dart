// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) =>
    _TransactionData(
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => TransactionHistory.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      loadMore: json['load_more'] as bool? ?? false,
    );

Map<String, dynamic> _$TransactionDataToJson(_TransactionData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'data': instance.data,
      'load_more': instance.loadMore,
    };
