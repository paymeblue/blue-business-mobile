import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history.freezed.dart';
part 'transaction_history.g.dart';

@freezed
class TransactionHistory with _$TransactionHistory {
  const factory TransactionHistory({
    required int transactionId,
    required String otherPartyName,
    required String createdAt,
    required String transactionAmount,
    required String paymentMode,
    required String transactionType,
    @Default("N/A") String initals,
  }) = _TransactionHistory;

  factory TransactionHistory.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryImpl.fromJson(json);
}

enum TransactionType { debit, credit }

enum PaymentMode { blue, phone, qr, withdrawal, topup }
