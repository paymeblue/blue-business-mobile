import 'package:blue_business/core/models/recently_paid/item/recently_paid_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recently_paid_data.freezed.dart';
part 'recently_paid_data.g.dart';

@freezed
abstract class RecentlyPaidData with _$RecentlyPaidData {
  const factory RecentlyPaidData({
    required List<RecentlyPaidItem> beneficiaries,
  }) = _RecentlyPaidData;

  factory RecentlyPaidData.fromJson(Map<String, dynamic> json) =>
      _$RecentlyPaidDataFromJson(json);
}
