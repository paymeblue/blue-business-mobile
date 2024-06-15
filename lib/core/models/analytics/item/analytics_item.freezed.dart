// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticsItem _$AnalyticsItemFromJson(Map<String, dynamic> json) {
  return _AnalyticsItem.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsItem {
  String get total => throw _privateConstructorUsedError;
  String get current => throw _privateConstructorUsedError;
  String get previous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsItemCopyWith<AnalyticsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsItemCopyWith<$Res> {
  factory $AnalyticsItemCopyWith(
          AnalyticsItem value, $Res Function(AnalyticsItem) then) =
      _$AnalyticsItemCopyWithImpl<$Res, AnalyticsItem>;
  @useResult
  $Res call({String total, String current, String previous});
}

/// @nodoc
class _$AnalyticsItemCopyWithImpl<$Res, $Val extends AnalyticsItem>
    implements $AnalyticsItemCopyWith<$Res> {
  _$AnalyticsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? current = null,
    Object? previous = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsItemImplCopyWith<$Res>
    implements $AnalyticsItemCopyWith<$Res> {
  factory _$$AnalyticsItemImplCopyWith(
          _$AnalyticsItemImpl value, $Res Function(_$AnalyticsItemImpl) then) =
      __$$AnalyticsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String total, String current, String previous});
}

/// @nodoc
class __$$AnalyticsItemImplCopyWithImpl<$Res>
    extends _$AnalyticsItemCopyWithImpl<$Res, _$AnalyticsItemImpl>
    implements _$$AnalyticsItemImplCopyWith<$Res> {
  __$$AnalyticsItemImplCopyWithImpl(
      _$AnalyticsItemImpl _value, $Res Function(_$AnalyticsItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? current = null,
    Object? previous = null,
  }) {
    return _then(_$AnalyticsItemImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
      previous: null == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsItemImpl implements _AnalyticsItem {
  const _$AnalyticsItemImpl(
      {this.total = "0.00", this.current = "0.00", this.previous = "0.00"});

  factory _$AnalyticsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsItemImplFromJson(json);

  @override
  @JsonKey()
  final String total;
  @override
  @JsonKey()
  final String current;
  @override
  @JsonKey()
  final String previous;

  @override
  String toString() {
    return 'AnalyticsItem(total: $total, current: $current, previous: $previous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsItemImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.previous, previous) ||
                other.previous == previous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, current, previous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsItemImplCopyWith<_$AnalyticsItemImpl> get copyWith =>
      __$$AnalyticsItemImplCopyWithImpl<_$AnalyticsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsItemImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsItem implements AnalyticsItem {
  const factory _AnalyticsItem(
      {final String total,
      final String current,
      final String previous}) = _$AnalyticsItemImpl;

  factory _AnalyticsItem.fromJson(Map<String, dynamic> json) =
      _$AnalyticsItemImpl.fromJson;

  @override
  String get total;
  @override
  String get current;
  @override
  String get previous;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsItemImplCopyWith<_$AnalyticsItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
