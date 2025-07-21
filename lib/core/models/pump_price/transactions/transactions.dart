import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions.freezed.dart';
part 'transactions.g.dart';

@freezed
class PumpPriceInsightsResponse with _$PumpPriceInsightsResponse {
  const factory PumpPriceInsightsResponse({
    @Default('fail') String status,
    @Default('') String message,
    @Default([]) List<LineChartData> data,
    @Default(0) int totalTransactions,
    @Default(0) double totalRevenue,
    @Default([]) List<PumpPriceTransaction> transactions,
  }) = _PumpPriceInsightsResponse;

  factory PumpPriceInsightsResponse.fromJson(Map<String, dynamic> json) =>
      _$PumpPriceInsightsResponseImpl.fromJson(json);
}

@freezed
class LineChartData with _$LineChartData {
  const factory LineChartData({
    required String label,
    required double amount,
    required String date,
  }) = _LineChartData;

  factory LineChartData.fromJson(Map<String, dynamic> json) =>
      _$LineChartDataImpl.fromJson(json);
}

@freezed
class PumpPriceTransaction with _$PumpPriceTransaction {
  const factory PumpPriceTransaction({
    required String id,
    required String userId,
    @Default('') String userName,
    String? businessID,
    String? branchId,
    String? fillingStationId,
    required String amount,
    required String litre,
    @Default('pending') String status,
    required String createdAt,
    String? updatedAt,
  }) = _PumpPriceTransaction;

  factory PumpPriceTransaction.fromJson(Map<String, dynamic> json) =>
      _$PumpPriceTransactionImpl.fromJson(json);
}
