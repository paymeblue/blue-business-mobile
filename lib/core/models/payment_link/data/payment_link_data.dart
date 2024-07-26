import 'package:blue_business/core/models/payment_link/payment_link.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_link_data.freezed.dart';
part 'payment_link_data.g.dart';

@freezed
class PaymentLinkData with _$PaymentLinkData {
  const factory PaymentLinkData({
    required String total,
    required int limit,
    required int page,
    @Default([]) List<PaymentLinkItem> data,
    @Default(false) bool loadMore,
  }) = _PaymentLinkData;

  factory PaymentLinkData.fromJson(Map<String, dynamic> json) =>
      _$PaymentLinkDataImpl.fromJson(json);
}
