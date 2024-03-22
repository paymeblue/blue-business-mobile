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
    // required String paymentMode,
    String? type,
    required String createdAt,
    @Default("pending") String status,
    @Default("N/A") String initials,
  }) = _TransactionHistory;

  factory TransactionHistory.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryImpl.fromJson(json);
}

// {
//  "transaction_id":74,
//  "receiver_name":"Priscilla Abhulimen",
//  "other_party_name":"Maryam Tajudeen",
//  "amount":"10.00",
//  "status":"successful",
//  "type":"debit",
//  "created_at":"2024-03-12T21:29:02.000Z",
//  "initials":"MT"
// }

enum TransactionType { debit, credit }

enum PaymentMode { blue, phone, qr, withdrawal, topup }
