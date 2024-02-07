import 'package:freezed_annotation/freezed_annotation.dart';

part 'recently_paid_item.freezed.dart';
part 'recently_paid_item.g.dart';

@freezed
class RecentlyPaidItem with _$RecentlyPaidItem {
  const factory RecentlyPaidItem({
    required String firstName,
    required String lastName,
    required String walletCode,
    String? middleName,
  }) = _RecentlyPaidItem;

  factory RecentlyPaidItem.fromJson(Map<String, dynamic> json) =>
      _$RecentlyPaidItemImpl.fromJson(json);
}
