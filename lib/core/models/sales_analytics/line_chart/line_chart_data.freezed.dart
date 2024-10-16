// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_chart_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LineInputData _$LineInputDataFromJson(Map<String, dynamic> json) {
  return _LineInputData.fromJson(json);
}

/// @nodoc
mixin _$LineInputData {
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this LineInputData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LineInputData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LineInputDataCopyWith<LineInputData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineInputDataCopyWith<$Res> {
  factory $LineInputDataCopyWith(
          LineInputData value, $Res Function(LineInputData) then) =
      _$LineInputDataCopyWithImpl<$Res, LineInputData>;
  @useResult
  $Res call({String label, double amount});
}

/// @nodoc
class _$LineInputDataCopyWithImpl<$Res, $Val extends LineInputData>
    implements $LineInputDataCopyWith<$Res> {
  _$LineInputDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LineInputData
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
abstract class _$$LineInputDataImplCopyWith<$Res>
    implements $LineInputDataCopyWith<$Res> {
  factory _$$LineInputDataImplCopyWith(
          _$LineInputDataImpl value, $Res Function(_$LineInputDataImpl) then) =
      __$$LineInputDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double amount});
}

/// @nodoc
class __$$LineInputDataImplCopyWithImpl<$Res>
    extends _$LineInputDataCopyWithImpl<$Res, _$LineInputDataImpl>
    implements _$$LineInputDataImplCopyWith<$Res> {
  __$$LineInputDataImplCopyWithImpl(
      _$LineInputDataImpl _value, $Res Function(_$LineInputDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LineInputData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
  }) {
    return _then(_$LineInputDataImpl(
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
class _$LineInputDataImpl implements _LineInputData {
  const _$LineInputDataImpl({required this.label, required this.amount});

  factory _$LineInputDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineInputDataImplFromJson(json);

  @override
  final String label;
  @override
  final double amount;

  @override
  String toString() {
    return 'LineInputData(label: $label, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineInputDataImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount);

  /// Create a copy of LineInputData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LineInputDataImplCopyWith<_$LineInputDataImpl> get copyWith =>
      __$$LineInputDataImplCopyWithImpl<_$LineInputDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LineInputDataImplToJson(
      this,
    );
  }
}

abstract class _LineInputData implements LineInputData {
  const factory _LineInputData(
      {required final String label,
      required final double amount}) = _$LineInputDataImpl;

  factory _LineInputData.fromJson(Map<String, dynamic> json) =
      _$LineInputDataImpl.fromJson;

  @override
  String get label;
  @override
  double get amount;

  /// Create a copy of LineInputData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LineInputDataImplCopyWith<_$LineInputDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
