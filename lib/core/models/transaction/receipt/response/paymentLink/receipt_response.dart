import 'package:blue_business/core/models/transaction/receipt/data/payment_link/receipt_record.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_response.freezed.dart';
part 'receipt_response.g.dart';

@freezed
abstract class PaymentLinkReceiptResponse with _$PaymentLinkReceiptResponse {
  const factory PaymentLinkReceiptResponse({
    @Default("fail") String status,
    String? message,
    PaymentLinkReceiptRecord? data,
  }) = _PaymentLinkReceiptResponse;

  factory PaymentLinkReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkReceiptResponseFromJson(json);
}
