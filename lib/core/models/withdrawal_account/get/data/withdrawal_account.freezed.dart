// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawalAccount _$WithdrawalAccountFromJson(Map<String, dynamic> json) {
  return _WithdrawalAccount.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalAccount {
  int get id => throw _privateConstructorUsedError;
  int get bankId => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WithdrawalAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WithdrawalAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithdrawalAccountCopyWith<WithdrawalAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalAccountCopyWith<$Res> {
  factory $WithdrawalAccountCopyWith(
          WithdrawalAccount value, $Res Function(WithdrawalAccount) then) =
      _$WithdrawalAccountCopyWithImpl<$Res, WithdrawalAccount>;
  @useResult
  $Res call(
      {int id,
      int bankId,
      String bankName,
      String accountName,
      String accountNumber,
      String? createdAt});
}

/// @nodoc
class _$WithdrawalAccountCopyWithImpl<$Res, $Val extends WithdrawalAccount>
    implements $WithdrawalAccountCopyWith<$Res> {
  _$WithdrawalAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithdrawalAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bankId = null,
    Object? bankName = null,
    Object? accountName = null,
    Object? accountNumber = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawalAccountImplCopyWith<$Res>
    implements $WithdrawalAccountCopyWith<$Res> {
  factory _$$WithdrawalAccountImplCopyWith(_$WithdrawalAccountImpl value,
          $Res Function(_$WithdrawalAccountImpl) then) =
      __$$WithdrawalAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int bankId,
      String bankName,
      String accountName,
      String accountNumber,
      String? createdAt});
}

/// @nodoc
class __$$WithdrawalAccountImplCopyWithImpl<$Res>
    extends _$WithdrawalAccountCopyWithImpl<$Res, _$WithdrawalAccountImpl>
    implements _$$WithdrawalAccountImplCopyWith<$Res> {
  __$$WithdrawalAccountImplCopyWithImpl(_$WithdrawalAccountImpl _value,
      $Res Function(_$WithdrawalAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithdrawalAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bankId = null,
    Object? bankName = null,
    Object? accountName = null,
    Object? accountNumber = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$WithdrawalAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as int,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawalAccountImpl implements _WithdrawalAccount {
  const _$WithdrawalAccountImpl(
      {required this.id,
      required this.bankId,
      required this.bankName,
      required this.accountName,
      required this.accountNumber,
      this.createdAt});

  factory _$WithdrawalAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalAccountImplFromJson(json);

  @override
  final int id;
  @override
  final int bankId;
  @override
  final String bankName;
  @override
  final String accountName;
  @override
  final String accountNumber;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'WithdrawalAccount(id: $id, bankId: $bankId, bankName: $bankName, accountName: $accountName, accountNumber: $accountNumber, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, bankId, bankName, accountName, accountNumber, createdAt);

  /// Create a copy of WithdrawalAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalAccountImplCopyWith<_$WithdrawalAccountImpl> get copyWith =>
      __$$WithdrawalAccountImplCopyWithImpl<_$WithdrawalAccountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalAccountImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalAccount implements WithdrawalAccount {
  const factory _WithdrawalAccount(
      {required final int id,
      required final int bankId,
      required final String bankName,
      required final String accountName,
      required final String accountNumber,
      final String? createdAt}) = _$WithdrawalAccountImpl;

  factory _WithdrawalAccount.fromJson(Map<String, dynamic> json) =
      _$WithdrawalAccountImpl.fromJson;

  @override
  int get id;
  @override
  int get bankId;
  @override
  String get bankName;
  @override
  String get accountName;
  @override
  String get accountNumber;
  @override
  String? get createdAt;

  /// Create a copy of WithdrawalAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithdrawalAccountImplCopyWith<_$WithdrawalAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
