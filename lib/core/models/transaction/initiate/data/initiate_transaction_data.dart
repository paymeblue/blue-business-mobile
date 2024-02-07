import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_transaction_data.freezed.dart';
part 'initiate_transaction_data.g.dart';

@freezed
class InitiateTransactionData with _$InitiateTransactionData {
  const factory InitiateTransactionData({
    required int id,
    required int transactionId,
    required String amount,
    required String status,
    required String createdAt,
  }) = _InitiateTransactionData;

  factory InitiateTransactionData.fromJson(Map<String, dynamic> json) =>
      _$InitiateTransactionDataImpl.fromJson(json);
}
