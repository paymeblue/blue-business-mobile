import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_payment.freezed.dart';
part 'push_payment.g.dart';

@freezed
class PushPayment with _$PushPayment {
  const factory PushPayment({
    required String businessName,
    required String lga,
    required String amount,
    required String transactionId,
    required String dueDate,
    required String createdAt,
  }) = _PushPayment;

  factory PushPayment.fromJson(Map<String, dynamic> json) =>
      _$PushPaymentImpl.fromJson(json);
}
