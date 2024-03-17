import 'package:blue_business/core/models/recently_paid/item/recently_paid_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recently_paid_response.freezed.dart';
part 'recently_paid_response.g.dart';

@freezed
class RecentlyPaidResponse with _$RecentlyPaidResponse {
  const factory RecentlyPaidResponse({
    @Default("fail") String status,
    String? message,
    List<RecentlyPaidItem>? data,
  }) = _RecentlyPaidResponse;

  factory RecentlyPaidResponse.fromJson(Map<String, dynamic> json) =>
      _$RecentlyPaidResponseImpl.fromJson(json);
}
