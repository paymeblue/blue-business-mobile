// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_line_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeeklyLineChartData _$WeeklyLineChartDataFromJson(Map<String, dynamic> json) {
  return _WeeklyLineChartData.fromJson(json);
}

/// @nodoc
mixin _$WeeklyLineChartData {
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this WeeklyLineChartData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeeklyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeeklyLineChartDataCopyWith<WeeklyLineChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeeklyLineChartDataCopyWith<$Res> {
  factory $WeeklyLineChartDataCopyWith(
          WeeklyLineChartData value, $Res Function(WeeklyLineChartData) then) =
      _$WeeklyLineChartDataCopyWithImpl<$Res, WeeklyLineChartData>;
  @useResult
  $Res call({String label, double amount, String? date});
}

/// @nodoc
class _$WeeklyLineChartDataCopyWithImpl<$Res, $Val extends WeeklyLineChartData>
    implements $WeeklyLineChartDataCopyWith<$Res> {
  _$WeeklyLineChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeeklyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeeklyLineChartDataImplCopyWith<$Res>
    implements $WeeklyLineChartDataCopyWith<$Res> {
  factory _$$WeeklyLineChartDataImplCopyWith(_$WeeklyLineChartDataImpl value,
          $Res Function(_$WeeklyLineChartDataImpl) then) =
      __$$WeeklyLineChartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double amount, String? date});
}

/// @nodoc
class __$$WeeklyLineChartDataImplCopyWithImpl<$Res>
    extends _$WeeklyLineChartDataCopyWithImpl<$Res, _$WeeklyLineChartDataImpl>
    implements _$$WeeklyLineChartDataImplCopyWith<$Res> {
  __$$WeeklyLineChartDataImplCopyWithImpl(_$WeeklyLineChartDataImpl _value,
      $Res Function(_$WeeklyLineChartDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeeklyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? date = freezed,
  }) {
    return _then(_$WeeklyLineChartDataImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeeklyLineChartDataImpl implements _WeeklyLineChartData {
  const _$WeeklyLineChartDataImpl(
      {required this.label, required this.amount, this.date});

  factory _$WeeklyLineChartDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyLineChartDataImplFromJson(json);

  @override
  final String label;
  @override
  final double amount;
  @override
  final String? date;

  @override
  String toString() {
    return 'WeeklyLineChartData(label: $label, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeeklyLineChartDataImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount, date);

  /// Create a copy of WeeklyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeeklyLineChartDataImplCopyWith<_$WeeklyLineChartDataImpl> get copyWith =>
      __$$WeeklyLineChartDataImplCopyWithImpl<_$WeeklyLineChartDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyLineChartDataImplToJson(
      this,
    );
  }
}

abstract class _WeeklyLineChartData implements WeeklyLineChartData {
  const factory _WeeklyLineChartData(
      {required final String label,
      required final double amount,
      final String? date}) = _$WeeklyLineChartDataImpl;

  factory _WeeklyLineChartData.fromJson(Map<String, dynamic> json) =
      _$WeeklyLineChartDataImpl.fromJson;

  @override
  String get label;
  @override
  double get amount;
  @override
  String? get date;

  /// Create a copy of WeeklyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeeklyLineChartDataImplCopyWith<_$WeeklyLineChartDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
