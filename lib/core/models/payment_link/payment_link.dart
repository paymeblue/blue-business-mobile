import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_link.freezed.dart';
part 'payment_link.g.dart';

@freezed
abstract class PaymentLinkItem with _$PaymentLinkItem {
  const factory PaymentLinkItem({
    required int id,
    required String transactionId,
    required String amount,
    required String phone,
    required String receiverName,
    required String status,
    required String originalUrl,
    required String createdAt,
  }) = _PaymentLinkItem;

  factory PaymentLinkItem.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkItemFromJson(json);
}
