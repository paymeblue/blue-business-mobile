import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history.freezed.dart';
part 'transaction_history.g.dart';

@freezed
class TransactionHistory with _$TransactionHistory {
  const factory TransactionHistory({
    required int id,
    required int userId,
    required int transactionId,
    required String? receiverName,
    String? senderName,
    required String amount,
    required String paymentMode,
    String? type,
    required String createdAt,
    @Default("pending") String status,
    // @Default("N/A") String initals,
  }) = _TransactionHistory;

  factory TransactionHistory.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryImpl.fromJson(json);
}

// {
//   "id":74,
//   "user_id":8,
//   "transaction_id":814,
//   "receiver_name":"Priscilla Abhulimen",
//   "sender_name":"Maryam Tajudeen",
//   "amount":"10.00",
//   "status":"successful",
//   "payment_mode":"blue-user",
//   "type":"debit",
//   "created_at":"2024-03-12T21:29:02.000Z"
// }

enum TransactionType { debit, credit }

enum PaymentMode { blue, phone, qr, withdrawal, topup }
