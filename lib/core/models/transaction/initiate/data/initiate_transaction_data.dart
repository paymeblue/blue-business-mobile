import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_transaction_data.freezed.dart';
part 'initiate_transaction_data.g.dart';

@freezed
abstract class InitiateTransactionData with _$InitiateTransactionData {
  const factory InitiateTransactionData({
    required int id,
    required String transactionId,
    required String amount,
    required String status,
    required String createdAt,
  }) = _InitiateTransactionData;

  factory InitiateTransactionData.fromJson(Map<String, dynamic> json) =>
      _$InitiateTransactionDataFromJson(json);
}
