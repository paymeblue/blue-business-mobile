import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_record.freezed.dart';
part 'receipt_record.g.dart';

@freezed
class PaymentLinkReceiptRecord with _$PaymentLinkReceiptRecord {
  const factory PaymentLinkReceiptRecord({
    required int id,
    required String transactionId,
    required String amount,
    required String receiverName,
    required String phone,
    required String createdAt,
    @Default("pending") String status,
    String? senderName,
    String? narration,
  }) = _PaymentLinkReceiptRecord;

  factory PaymentLinkReceiptRecord.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkReceiptRecordImpl.fromJson(json);
}

// {
//   "status": "success",
//   "message": "Successful",
//   "data": {
//     "record": {
//       "id": 2,
//       "amount": "190.99",
//       "order_reference": "BLUE-7A81A07A1B05B0999168606781",
//       "receiver_name": "Margaret Dom Yonmi",
//       "sender_name": "AvosehEmmanuelDaddy",
//       "narration": "send money to Emmanuel",
//       "payment_mode": "blue-user",
//       "status": "successful",
//       "created_at": "2023-06-06T16:09:58.000Z"
//     }
//   }
// }