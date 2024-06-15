// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending_analytics_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpendingAnalyticsData _$SpendingAnalyticsDataFromJson(
    Map<String, dynamic> json) {
  return _SpendingAnalyticsData.fromJson(json);
}

/// @nodoc
mixin _$SpendingAnalyticsData {
  String get desktopSum => throw _privateConstructorUsedError;
  String get mobileSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpendingAnalyticsDataCopyWith<SpendingAnalyticsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingAnalyticsDataCopyWith<$Res> {
  factory $SpendingAnalyticsDataCopyWith(SpendingAnalyticsData value,
          $Res Function(SpendingAnalyticsData) then) =
      _$SpendingAnalyticsDataCopyWithImpl<$Res, SpendingAnalyticsData>;
  @useResult
  $Res call({String desktopSum, String mobileSum});
}

/// @nodoc
class _$SpendingAnalyticsDataCopyWithImpl<$Res,
        $Val extends SpendingAnalyticsData>
    implements $SpendingAnalyticsDataCopyWith<$Res> {
  _$SpendingAnalyticsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desktopSum = null,
    Object? mobileSum = null,
  }) {
    return _then(_value.copyWith(
      desktopSum: null == desktopSum
          ? _value.desktopSum
          : desktopSum // ignore: cast_nullable_to_non_nullable
              as String,
      mobileSum: null == mobileSum
          ? _value.mobileSum
          : mobileSum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpendingAnalyticsDataImplCopyWith<$Res>
    implements $SpendingAnalyticsDataCopyWith<$Res> {
  factory _$$SpendingAnalyticsDataImplCopyWith(
          _$SpendingAnalyticsDataImpl value,
          $Res Function(_$SpendingAnalyticsDataImpl) then) =
      __$$SpendingAnalyticsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String desktopSum, String mobileSum});
}

/// @nodoc
class __$$SpendingAnalyticsDataImplCopyWithImpl<$Res>
    extends _$SpendingAnalyticsDataCopyWithImpl<$Res,
        _$SpendingAnalyticsDataImpl>
    implements _$$SpendingAnalyticsDataImplCopyWith<$Res> {
  __$$SpendingAnalyticsDataImplCopyWithImpl(_$SpendingAnalyticsDataImpl _value,
      $Res Function(_$SpendingAnalyticsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desktopSum = null,
    Object? mobileSum = null,
  }) {
    return _then(_$SpendingAnalyticsDataImpl(
      desktopSum: null == desktopSum
          ? _value.desktopSum
          : desktopSum // ignore: cast_nullable_to_non_nullable
              as String,
      mobileSum: null == mobileSum
          ? _value.mobileSum
          : mobileSum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpendingAnalyticsDataImpl implements _SpendingAnalyticsData {
  const _$SpendingAnalyticsDataImpl(
      {this.desktopSum = "0.0", this.mobileSum = "0.0"});

  factory _$SpendingAnalyticsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpendingAnalyticsDataImplFromJson(json);

  @override
  @JsonKey()
  final String desktopSum;
  @override
  @JsonKey()
  final String mobileSum;

  @override
  String toString() {
    return 'SpendingAnalyticsData(desktopSum: $desktopSum, mobileSum: $mobileSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingAnalyticsDataImpl &&
            (identical(other.desktopSum, desktopSum) ||
                other.desktopSum == desktopSum) &&
            (identical(other.mobileSum, mobileSum) ||
                other.mobileSum == mobileSum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, desktopSum, mobileSum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingAnalyticsDataImplCopyWith<_$SpendingAnalyticsDataImpl>
      get copyWith => __$$SpendingAnalyticsDataImplCopyWithImpl<
          _$SpendingAnalyticsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpendingAnalyticsDataImplToJson(
      this,
    );
  }
}

abstract class _SpendingAnalyticsData implements SpendingAnalyticsData {
  const factory _SpendingAnalyticsData(
      {final String desktopSum,
      final String mobileSum}) = _$SpendingAnalyticsDataImpl;

  factory _SpendingAnalyticsData.fromJson(Map<String, dynamic> json) =
      _$SpendingAnalyticsDataImpl.fromJson;

  @override
  String get desktopSum;
  @override
  String get mobileSum;
  @override
  @JsonKey(ignore: true)
  _$$SpendingAnalyticsDataImplCopyWith<_$SpendingAnalyticsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
