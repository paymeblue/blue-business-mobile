import 'package:blue_business/core/models/transaction/receipt/record/receipt_record.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_data.freezed.dart';
part 'receipt_data.g.dart';

@freezed
class ReceiptData with _$ReceiptData {
  const factory ReceiptData({
    required ReceiptRecord record,
  }) = _ReceiptData;

  factory ReceiptData.fromJson(Map<String, dynamic> json) =>
      _$ReceiptDataImpl.fromJson(json);
}
