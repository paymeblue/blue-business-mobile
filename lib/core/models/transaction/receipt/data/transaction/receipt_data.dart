import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_data.freezed.dart';
part 'receipt_data.g.dart';

@freezed
class ReceiptData with _$ReceiptData {
  const factory ReceiptData({
    required int id,
    required String amount,
    @Default("") String orderReference,
    required String receiverName,
    required String receiverWallet,
    required String paymentMode,
    required String createdAt,
    @Default("pending") String status,
    String? senderName,
    String? narration,
  }) = _ReceiptData;

  factory ReceiptData.fromJson(Map<String, dynamic> json) =>
      _$ReceiptDataImpl.fromJson(json);
}
