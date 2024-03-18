import 'package:blue_business/core/models/transaction/initiate/data/initiate_transaction_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_transaction_response.freezed.dart';
part 'initiate_transaction_response.g.dart';

@freezed
class InitiateTransactionResponse with _$InitiateTransactionResponse {
  const factory InitiateTransactionResponse({
    @Default("fail") String status,
    String? message,
    InitiateTransactionData? data,
  }) = _InitiateTransactionResponse;

  factory InitiateTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$InitiateTransactionResponseImpl.fromJson(json);
}
