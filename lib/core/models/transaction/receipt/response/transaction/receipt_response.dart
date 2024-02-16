import 'package:blue_business/core/models/transaction/receipt/data/transaction/receipt_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_response.freezed.dart';
part 'receipt_response.g.dart';

@freezed
class ReceiptResponse with _$ReceiptResponse {
  const factory ReceiptResponse({
    @Default(false) bool success,
    String? message,
    ReceiptData? data,
  }) = _ReceiptResponse;

  factory ReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$ReceiptResponseImpl.fromJson(json);
}
