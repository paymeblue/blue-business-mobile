// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PumpPriceInsightsResponseImpl _$$PumpPriceInsightsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PumpPriceInsightsResponseImpl(
      status: json['status'] as String? ?? 'fail',
      message: json['message'] as String? ?? '',
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => LineChartData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalTransactions: (json['totalTransactions'] as num?)?.toInt() ?? 0,
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble() ?? 0,
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) =>
                  PumpPriceTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PumpPriceInsightsResponseImplToJson(
        _$PumpPriceInsightsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'totalTransactions': instance.totalTransactions,
      'totalRevenue': instance.totalRevenue,
      'transactions': instance.transactions,
    };

_$LineChartDataImpl _$$LineChartDataImplFromJson(Map<String, dynamic> json) =>
    _$LineChartDataImpl(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$$LineChartDataImplToJson(_$LineChartDataImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
      'date': instance.date,
    };

_$PumpPriceTransactionImpl _$$PumpPriceTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$PumpPriceTransactionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String? ?? '',
      businessID: json['businessId'] as String?,
      branchId: json['branchId'] as String?,
      fillingStationId: json['fillingStationId'] as String?,
      amount: json['amount'] as String,
      litre: json['litre'] as String,
      status: json['status'] as String? ?? 'pending',
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$PumpPriceTransactionImplToJson(
        _$PumpPriceTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      if (instance.businessID case final value?) 'businessId': value,
      if (instance.branchId case final value?) 'branchId': value,
      if (instance.fillingStationId case final value?)
        'fillingStation_id': value,
      'amount': instance.amount,
      'litre': instance.litre,
      'status': instance.status,
      'createdAt': instance.createdAt,
      if (instance.updatedAt case final value?) 'updatedAt': value,
    };
