import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history.freezed.dart';
part 'transaction_history.g.dart';

@freezed
class TransactionHistory with _$TransactionHistory {
  const factory TransactionHistory({
    required int transactionId,
    required String? receiverName,
    String? otherPartyName,
    required String amount,
    required String paymentMode,
    String? type,
    required String createdAt,
    @Default("pending") String status,
    @Default("N/A") String initials,
  }) = _TransactionHistory;

  factory TransactionHistory.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryImpl.fromJson(json);
}

enum TransactionType { debit, credit }

enum PaymentMode { blue, phone, qr, withdrawal, topup }
