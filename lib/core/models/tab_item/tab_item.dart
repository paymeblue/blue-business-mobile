import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_item.freezed.dart';

@freezed
abstract class TabItem with _$TabItem {
  factory TabItem({required String name}) = _TabItem;
}
