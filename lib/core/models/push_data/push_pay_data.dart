import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_pay_data.freezed.dart';
part 'push_pay_data.g.dart';

@freezed
class PushPayData with _$PushPayData {
  const factory PushPayData({
    required int id,
    required String amount,
    required String receiverName,
    required String receiverWallet,
    required String reference,
    required String status,
    required String createdAt,
  }) = _PushPayData;

  factory PushPayData.fromJson(Map<String, dynamic> json) =>
      _$PushPayDataImpl.fromJson(json);
}
