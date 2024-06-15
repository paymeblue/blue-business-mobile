// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return _LoginData.fromJson(json);
}

/// @nodoc
mixin _$LoginData {
  int get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get kyc => throw _privateConstructorUsedError;
  int get totalStaff => throw _privateConstructorUsedError;
  int get totalBranches => throw _privateConstructorUsedError;
  int get transactionVolume => throw _privateConstructorUsedError;
  int get netProfit => throw _privateConstructorUsedError;
  Token get token => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call(
      {int id,
      String phone,
      String kyc,
      int totalStaff,
      int totalBranches,
      int transactionVolume,
      int netProfit,
      Token token,
      String? createdAt});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? kyc = null,
    Object? totalStaff = null,
    Object? totalBranches = null,
    Object? transactionVolume = null,
    Object? netProfit = null,
    Object? token = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
          _$LoginDataImpl value, $Res Function(_$LoginDataImpl) then) =
      __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String phone,
      String kyc,
      int totalStaff,
      int totalBranches,
      int transactionVolume,
      int netProfit,
      Token token,
      String? createdAt});

  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
      _$LoginDataImpl _value, $Res Function(_$LoginDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? kyc = null,
    Object? totalStaff = null,
    Object? totalBranches = null,
    Object? transactionVolume = null,
    Object? netProfit = null,
    Object? token = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$LoginDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  const _$LoginDataImpl(
      {required this.id,
      required this.phone,
      this.kyc = "basic",
      this.totalStaff = 0,
      this.totalBranches = 0,
      this.transactionVolume = 0,
      this.netProfit = 0,
      required this.token,
      this.createdAt});

  factory _$LoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataImplFromJson(json);

  @override
  final int id;
  @override
  final String phone;
  @override
  @JsonKey()
  final String kyc;
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
  final Token token;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'LoginData(id: $id, phone: $phone, kyc: $kyc, totalStaff: $totalStaff, totalBranches: $totalBranches, transactionVolume: $transactionVolume, netProfit: $netProfit, token: $token, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.kyc, kyc) || other.kyc == kyc) &&
            (identical(other.totalStaff, totalStaff) ||
                other.totalStaff == totalStaff) &&
            (identical(other.totalBranches, totalBranches) ||
                other.totalBranches == totalBranches) &&
            (identical(other.transactionVolume, transactionVolume) ||
                other.transactionVolume == transactionVolume) &&
            (identical(other.netProfit, netProfit) ||
                other.netProfit == netProfit) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, phone, kyc, totalStaff,
      totalBranches, transactionVolume, netProfit, token, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(
      this,
    );
  }
}

abstract class _LoginData implements LoginData {
  const factory _LoginData(
      {required final int id,
      required final String phone,
      final String kyc,
      final int totalStaff,
      final int totalBranches,
      final int transactionVolume,
      final int netProfit,
      required final Token token,
      final String? createdAt}) = _$LoginDataImpl;

  factory _LoginData.fromJson(Map<String, dynamic> json) =
      _$LoginDataImpl.fromJson;

  @override
  int get id;
  @override
  String get phone;
  @override
  String get kyc;
  @override
  int get totalStaff;
  @override
  int get totalBranches;
  @override
  int get transactionVolume;
  @override
  int get netProfit;
  @override
  Token get token;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
