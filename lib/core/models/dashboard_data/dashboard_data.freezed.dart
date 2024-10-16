// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  int get totalStaff => throw _privateConstructorUsedError;
  int get totalBranches => throw _privateConstructorUsedError;
  int get transactionVolume => throw _privateConstructorUsedError;
  int get netProfit => throw _privateConstructorUsedError;

  /// Serializes this DashboardData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) then) =
      _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call(
      {int totalStaff,
      int totalBranches,
      int transactionVolume,
      int netProfit});
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStaff = null,
    Object? totalBranches = null,
    Object? transactionVolume = null,
    Object? netProfit = null,
  }) {
    return _then(_value.copyWith(
      totalStaff: null == totalStaff
          ? _value.totalStaff
          : totalStaff // ignore: cast_nullable_to_non_nullable
              as int,
      totalBranches: null == totalBranches
          ? _value.totalBranches
          : totalBranches // ignore: cast_nullable_to_non_nullable
              as int,
      transactionVolume: null == transactionVolume
          ? _value.transactionVolume
          : transactionVolume // ignore: cast_nullable_to_non_nullable
              as int,
      netProfit: null == netProfit
          ? _value.netProfit
          : netProfit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardDataImplCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$DashboardDataImplCopyWith(
          _$DashboardDataImpl value, $Res Function(_$DashboardDataImpl) then) =
      __$$DashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalStaff,
      int totalBranches,
      int transactionVolume,
      int netProfit});
}

/// @nodoc
class __$$DashboardDataImplCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$DashboardDataImpl>
    implements _$$DashboardDataImplCopyWith<$Res> {
  __$$DashboardDataImplCopyWithImpl(
      _$DashboardDataImpl _value, $Res Function(_$DashboardDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStaff = null,
    Object? totalBranches = null,
    Object? transactionVolume = null,
    Object? netProfit = null,
  }) {
    return _then(_$DashboardDataImpl(
      totalStaff: null == totalStaff
          ? _value.totalStaff
          : totalStaff // ignore: cast_nullable_to_non_nullable
              as int,
      totalBranches: null == totalBranches
          ? _value.totalBranches
          : totalBranches // ignore: cast_nullable_to_non_nullable
              as int,
      transactionVolume: null == transactionVolume
          ? _value.transactionVolume
          : transactionVolume // ignore: cast_nullable_to_non_nullable
              as int,
      netProfit: null == netProfit
          ? _value.netProfit
          : netProfit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardDataImpl implements _DashboardData {
  const _$DashboardDataImpl(
      {this.totalStaff = 0,
      this.totalBranches = 0,
      this.transactionVolume = 0,
      this.netProfit = 0});

  factory _$DashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardDataImplFromJson(json);

  @override
  @JsonKey()
  final int totalStaff;
  @override
  @JsonKey()
  final int totalBranches;
  @override
  @JsonKey()
  final int transactionVolume;
  @override
  @JsonKey()
  final int netProfit;

  @override
  String toString() {
    return 'DashboardData(totalStaff: $totalStaff, totalBranches: $totalBranches, transactionVolume: $transactionVolume, netProfit: $netProfit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardDataImpl &&
            (identical(other.totalStaff, totalStaff) ||
                other.totalStaff == totalStaff) &&
            (identical(other.totalBranches, totalBranches) ||
                other.totalBranches == totalBranches) &&
            (identical(other.transactionVolume, transactionVolume) ||
                other.transactionVolume == transactionVolume) &&
            (identical(other.netProfit, netProfit) ||
                other.netProfit == netProfit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, totalStaff, totalBranches, transactionVolume, netProfit);

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      __$$DashboardDataImplCopyWithImpl<_$DashboardDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardDataImplToJson(
      this,
    );
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
      {final int totalStaff,
      final int totalBranches,
      final int transactionVolume,
      final int netProfit}) = _$DashboardDataImpl;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$DashboardDataImpl.fromJson;

  @override
  int get totalStaff;
  @override
  int get totalBranches;
  @override
  int get transactionVolume;
  @override
  int get netProfit;

  /// Create a copy of DashboardData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardDataImplCopyWith<_$DashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
