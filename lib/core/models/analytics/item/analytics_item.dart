import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_item.freezed.dart';
part 'analytics_item.g.dart';

@freezed
class AnalyticsItem with _$AnalyticsItem {
  const factory AnalyticsItem({
    @Default("0.00") String total,
    @Default("0.00") String current,
    @Default("0.00") String previous,
  }) = _AnalyticsItem;

  factory AnalyticsItem.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsItemImpl.fromJson(json);
}
