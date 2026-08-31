import 'package:freezed_annotation/freezed_annotation.dart';

part 'dropdown_type.freezed.dart';

@freezed
abstract class DropdownType<T> with _$DropdownType<T> {
  factory DropdownType({required String label, required T value}) =
      _DropdownType;
}
