// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PumpPriceInsightsResponse _$PumpPriceInsightsResponseFromJson(
  Map<String, dynamic> json,
) => _PumpPriceInsightsResponse(
  status: json['status'] as String? ?? 'fail',
  message: json['message'] as String? ?? '',
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => LineChartData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalTransactions: (json['total_transactions'] as num?)?.toInt() ?? 0,
  totalRevenue: (json['total_revenue'] as num?)?.toDouble() ?? 0,
  transactions:
      (json['transactions'] as List<dynamic>?)
          ?.map((e) => PumpPriceTransaction.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$PumpPriceInsightsResponseToJson(
  _PumpPriceInsightsResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
  'total_transactions': instance.totalTransactions,
  'total_revenue': instance.totalRevenue,
  'transactions': instance.transactions,
};

_LineChartData _$LineChartDataFromJson(Map<String, dynamic> json) =>
    _LineChartData(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: json['date'] as String,
    );

Map<String, dynamic> _$LineChartDataToJson(_LineChartData instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
      'date': instance.date,
    };

_PumpPriceTransaction _$PumpPriceTransactionFromJson(
  Map<String, dynamic> json,
) => _PumpPriceTransaction(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  userName: json['user_name'] as String? ?? '',
  businessID: json['business_i_d'] as String?,
  branchId: json['branch_id'] as String?,
  fillingStationId: json['filling_station_id'] as String?,
  amount: json['amount'] as String,
  litre: json['litre'] as String,
  status: json['status'] as String? ?? 'pending',
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$PumpPriceTransactionToJson(
  _PumpPriceTransaction instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'user_name': instance.userName,
  'business_i_d': ?instance.businessID,
  'branch_id': ?instance.branchId,
  'filling_station_id': ?instance.fillingStationId,
  'amount': instance.amount,
  'litre': instance.litre,
  'status': instance.status,
  'created_at': instance.createdAt,
  'updated_at': ?instance.updatedAt,
};
