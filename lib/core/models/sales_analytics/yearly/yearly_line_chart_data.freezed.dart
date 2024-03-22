// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yearly_line_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YearlyLineChartData _$YearlyLineChartDataFromJson(Map<String, dynamic> json) {
  return _YearlyLineChartData.fromJson(json);
}

/// @nodoc
mixin _$YearlyLineChartData {
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YearlyLineChartDataCopyWith<YearlyLineChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YearlyLineChartDataCopyWith<$Res> {
  factory $YearlyLineChartDataCopyWith(
          YearlyLineChartData value, $Res Function(YearlyLineChartData) then) =
      _$YearlyLineChartDataCopyWithImpl<$Res, YearlyLineChartData>;
  @useResult
  $Res call({String label, double amount});
}

/// @nodoc
class _$YearlyLineChartDataCopyWithImpl<$Res, $Val extends YearlyLineChartData>
    implements $YearlyLineChartDataCopyWith<$Res> {
  _$YearlyLineChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$YearlyLineChartDataImplCopyWith<$Res>
    implements $YearlyLineChartDataCopyWith<$Res> {
  factory _$$YearlyLineChartDataImplCopyWith(_$YearlyLineChartDataImpl value,
          $Res Function(_$YearlyLineChartDataImpl) then) =
      __$$YearlyLineChartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double amount});
}

/// @nodoc
class __$$YearlyLineChartDataImplCopyWithImpl<$Res>
    extends _$YearlyLineChartDataCopyWithImpl<$Res, _$YearlyLineChartDataImpl>
    implements _$$YearlyLineChartDataImplCopyWith<$Res> {
  __$$YearlyLineChartDataImplCopyWithImpl(_$YearlyLineChartDataImpl _value,
      $Res Function(_$YearlyLineChartDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_$YearlyLineChartDataImpl(
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
class _$YearlyLineChartDataImpl implements _YearlyLineChartData {
  const _$YearlyLineChartDataImpl({required this.label, required this.amount});

  factory _$YearlyLineChartDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$YearlyLineChartDataImplFromJson(json);

  @override
  final String label;
  @override
  final double amount;

  @override
  String toString() {
    return 'YearlyLineChartData(label: $label, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YearlyLineChartDataImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YearlyLineChartDataImplCopyWith<_$YearlyLineChartDataImpl> get copyWith =>
      __$$YearlyLineChartDataImplCopyWithImpl<_$YearlyLineChartDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YearlyLineChartDataImplToJson(
      this,
    );
  }
}

abstract class _YearlyLineChartData implements YearlyLineChartData {
  const factory _YearlyLineChartData(
      {required final String label,
      required final double amount}) = _$YearlyLineChartDataImpl;

  factory _YearlyLineChartData.fromJson(Map<String, dynamic> json) =
      _$YearlyLineChartDataImpl.fromJson;

  @override
  String get label;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$YearlyLineChartDataImplCopyWith<_$YearlyLineChartDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
