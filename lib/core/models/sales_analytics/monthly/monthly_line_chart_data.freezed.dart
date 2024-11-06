// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_line_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthlyLineChartData _$MonthlyLineChartDataFromJson(Map<String, dynamic> json) {
  return _MonthlyLineChartData.fromJson(json);
}

/// @nodoc
mixin _$MonthlyLineChartData {
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this MonthlyLineChartData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyLineChartDataCopyWith<MonthlyLineChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyLineChartDataCopyWith<$Res> {
  factory $MonthlyLineChartDataCopyWith(MonthlyLineChartData value,
          $Res Function(MonthlyLineChartData) then) =
      _$MonthlyLineChartDataCopyWithImpl<$Res, MonthlyLineChartData>;
  @useResult
  $Res call({String label, double amount});
}

/// @nodoc
class _$MonthlyLineChartDataCopyWithImpl<$Res,
        $Val extends MonthlyLineChartData>
    implements $MonthlyLineChartDataCopyWith<$Res> {
  _$MonthlyLineChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyLineChartDataImplCopyWith<$Res>
    implements $MonthlyLineChartDataCopyWith<$Res> {
  factory _$$MonthlyLineChartDataImplCopyWith(_$MonthlyLineChartDataImpl value,
          $Res Function(_$MonthlyLineChartDataImpl) then) =
      __$$MonthlyLineChartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double amount});
}

/// @nodoc
class __$$MonthlyLineChartDataImplCopyWithImpl<$Res>
    extends _$MonthlyLineChartDataCopyWithImpl<$Res, _$MonthlyLineChartDataImpl>
    implements _$$MonthlyLineChartDataImplCopyWith<$Res> {
  __$$MonthlyLineChartDataImplCopyWithImpl(_$MonthlyLineChartDataImpl _value,
      $Res Function(_$MonthlyLineChartDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_$MonthlyLineChartDataImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyLineChartDataImpl implements _MonthlyLineChartData {
  const _$MonthlyLineChartDataImpl({required this.label, required this.amount});

  factory _$MonthlyLineChartDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyLineChartDataImplFromJson(json);

  @override
  final String label;
  @override
  final double amount;

  @override
  String toString() {
    return 'MonthlyLineChartData(label: $label, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyLineChartDataImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount);

  /// Create a copy of MonthlyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyLineChartDataImplCopyWith<_$MonthlyLineChartDataImpl>
      get copyWith =>
          __$$MonthlyLineChartDataImplCopyWithImpl<_$MonthlyLineChartDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyLineChartDataImplToJson(
      this,
    );
  }
}

abstract class _MonthlyLineChartData implements MonthlyLineChartData {
  const factory _MonthlyLineChartData(
      {required final String label,
      required final double amount}) = _$MonthlyLineChartDataImpl;

  factory _MonthlyLineChartData.fromJson(Map<String, dynamic> json) =
      _$MonthlyLineChartDataImpl.fromJson;

  @override
  String get label;
  @override
  double get amount;

  /// Create a copy of MonthlyLineChartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyLineChartDataImplCopyWith<_$MonthlyLineChartDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
