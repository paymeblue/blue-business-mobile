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
  totalTransactions: (json['totalTransactions'] as num?)?.toInt() ?? 0,
  totalRevenue: (json['totalRevenue'] as num?)?.toDouble() ?? 0,
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
  'totalTransactions': instance.totalTransactions,
  'totalRevenue': instance.totalRevenue,
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
  userId: json['userId'] as String,
  userName: json['userName'] as String? ?? '',
  businessID: json['businessID'] as String?,
  branchId: json['branchId'] as String?,
  fillingStationId: json['fillingStationId'] as String?,
  amount: json['amount'] as String,
  litre: json['litre'] as String,
  status: json['status'] as String? ?? 'pending',
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$PumpPriceTransactionToJson(
  _PumpPriceTransaction instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'userName': instance.userName,
  'businessID': ?instance.businessID,
  'branchId': ?instance.branchId,
  'fillingStation_id': ?instance.fillingStationId,
  'amount': instance.amount,
  'litre': instance.litre,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'updatedAt': ?instance.updatedAt,
};
