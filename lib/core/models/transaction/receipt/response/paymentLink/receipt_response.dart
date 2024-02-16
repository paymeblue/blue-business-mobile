import 'package:blue_business/core/models/transaction/receipt/data/payment_link/receipt_record.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_response.freezed.dart';
part 'receipt_response.g.dart';

@freezed
class PaymentLinkReceiptResponse with _$PaymentLinkReceiptResponse {
  const factory PaymentLinkReceiptResponse({
    @Default(false) bool success,
    String? message,
    PaymentLinkReceiptRecord? data,
  }) = _PaymentLinkReceiptResponse;

  factory PaymentLinkReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkReceiptResponseImpl.fromJson(json);
}
