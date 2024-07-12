// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_dash_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessDashData _$BusinessDashDataFromJson(Map<String, dynamic> json) {
  return _BusinessDashData.fromJson(json);
}

/// @nodoc
mixin _$BusinessDashData {
  int get totalBranches => throw _privateConstructorUsedError;
  int get totalStaff => throw _privateConstructorUsedError;
  int get transactionVolume => throw _privateConstructorUsedError;
  String get walletBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessDashDataCopyWith<BusinessDashData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDashDataCopyWith<$Res> {
  factory $BusinessDashDataCopyWith(
          BusinessDashData value, $Res Function(BusinessDashData) then) =
      _$BusinessDashDataCopyWithImpl<$Res, BusinessDashData>;
  @useResult
  $Res call(
      {int totalBranches,
      int totalStaff,
      int transactionVolume,
      String walletBalance});
}

/// @nodoc
class _$BusinessDashDataCopyWithImpl<$Res, $Val extends BusinessDashData>
    implements $BusinessDashDataCopyWith<$Res> {
  _$BusinessDashDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBranches = null,
    Object? totalStaff = null,
    Object? transactionVolume = null,
    Object? walletBalance = null,
  }) {
    return _then(_value.copyWith(
      totalBranches: null == totalBranches
          ? _value.totalBranches
          : totalBranches // ignore: cast_nullable_to_non_nullable
              as int,
      totalStaff: null == totalStaff
          ? _value.totalStaff
          : totalStaff // ignore: cast_nullable_to_non_nullable
              as int,
      transactionVolume: null == transactionVolume
          ? _value.transactionVolume
          : transactionVolume // ignore: cast_nullable_to_non_nullable
              as int,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessDashDataImplCopyWith<$Res>
    implements $BusinessDashDataCopyWith<$Res> {
  factory _$$BusinessDashDataImplCopyWith(_$BusinessDashDataImpl value,
          $Res Function(_$BusinessDashDataImpl) then) =
      __$$BusinessDashDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalBranches,
      int totalStaff,
      int transactionVolume,
      String walletBalance});
}

/// @nodoc
class __$$BusinessDashDataImplCopyWithImpl<$Res>
    extends _$BusinessDashDataCopyWithImpl<$Res, _$BusinessDashDataImpl>
    implements _$$BusinessDashDataImplCopyWith<$Res> {
  __$$BusinessDashDataImplCopyWithImpl(_$BusinessDashDataImpl _value,
      $Res Function(_$BusinessDashDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBranches = null,
    Object? totalStaff = null,
    Object? transactionVolume = null,
    Object? walletBalance = null,
  }) {
    return _then(_$BusinessDashDataImpl(
      totalBranches: null == totalBranches
          ? _value.totalBranches
          : totalBranches // ignore: cast_nullable_to_non_nullable
              as int,
      totalStaff: null == totalStaff
          ? _value.totalStaff
          : totalStaff // ignore: cast_nullable_to_non_nullable
              as int,
      transactionVolume: null == transactionVolume
          ? _value.transactionVolume
          : transactionVolume // ignore: cast_nullable_to_non_nullable
              as int,
      walletBalance: null == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessDashDataImpl implements _BusinessDashData {
  const _$BusinessDashDataImpl(
      {this.totalBranches = 0,
      this.totalStaff = 0,
      this.transactionVolume = 0,
      this.walletBalance = "0.00"});

  factory _$BusinessDashDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessDashDataImplFromJson(json);

  @override
  @JsonKey()
  final int totalBranches;
  @override
  @JsonKey()
  final int totalStaff;
  @override
  @JsonKey()
  final int transactionVolume;
  @override
  @JsonKey()
  final String walletBalance;

  @override
  String toString() {
    return 'BusinessDashData(totalBranches: $totalBranches, totalStaff: $totalStaff, transactionVolume: $transactionVolume, walletBalance: $walletBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDashDataImpl &&
            (identical(other.totalBranches, totalBranches) ||
                other.totalBranches == totalBranches) &&
            (identical(other.totalStaff, totalStaff) ||
                other.totalStaff == totalStaff) &&
            (identical(other.transactionVolume, transactionVolume) ||
                other.transactionVolume == transactionVolume) &&
            (identical(other.walletBalance, walletBalance) ||
                other.walletBalance == walletBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalBranches, totalStaff, transactionVolume, walletBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDashDataImplCopyWith<_$BusinessDashDataImpl> get copyWith =>
      __$$BusinessDashDataImplCopyWithImpl<_$BusinessDashDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessDashDataImplToJson(
      this,
    );
  }
}

abstract class _BusinessDashData implements BusinessDashData {
  const factory _BusinessDashData(
      {final int totalBranches,
      final int totalStaff,
      final int transactionVolume,
      final String walletBalance}) = _$BusinessDashDataImpl;

  factory _BusinessDashData.fromJson(Map<String, dynamic> json) =
      _$BusinessDashDataImpl.fromJson;

  @override
  int get totalBranches;
  @override
  int get totalStaff;
  @override
  int get transactionVolume;
  @override
  String get walletBalance;
  @override
  @JsonKey(ignore: true)
  _$$BusinessDashDataImplCopyWith<_$BusinessDashDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
