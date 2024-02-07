import 'package:blue_business/core/models/transaction_history/data/transaction_history_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history_response.freezed.dart';
part 'transaction_history_response.g.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
  const factory TransactionResponse({
    @Default("fail") String status,
    String? message,
    TransactionData? data,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseImpl.fromJson(json);
}
