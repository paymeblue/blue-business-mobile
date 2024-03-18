import 'package:blue_business/core/models/transaction_history/transaction_history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history_data.freezed.dart';
part 'transaction_history_data.g.dart';

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
    required String total,
    required String limit,
    required String page,
    @Default([]) List<TransactionHistory> data,
    @Default(false) bool loadMore,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataImpl.fromJson(json);
}
