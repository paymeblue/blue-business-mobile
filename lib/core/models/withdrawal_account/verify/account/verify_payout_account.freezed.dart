// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPayoutAccount _$VerifyPayoutAccountFromJson(Map<String, dynamic> json) {
  return _VerifyPayoutAccount.fromJson(json);
}

/// @nodoc
mixin _$VerifyPayoutAccount {
  int get id => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get bankId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyPayoutAccountCopyWith<VerifyPayoutAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPayoutAccountCopyWith<$Res> {
  factory $VerifyPayoutAccountCopyWith(
          VerifyPayoutAccount value, $Res Function(VerifyPayoutAccount) then) =
      _$VerifyPayoutAccountCopyWithImpl<$Res, VerifyPayoutAccount>;
  @useResult
  $Res call(
      {int id,
      String reference,
      String accountNumber,
      String accountName,
      String bankId,
      String name,
      String createdAt});
}

/// @nodoc
class _$VerifyPayoutAccountCopyWithImpl<$Res, $Val extends VerifyPayoutAccount>
    implements $VerifyPayoutAccountCopyWith<$Res> {
  _$VerifyPayoutAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reference = null,
    Object? accountNumber = null,
    Object? accountName = null,
    Object? bankId = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPayoutAccountImplCopyWith<$Res>
    implements $VerifyPayoutAccountCopyWith<$Res> {
  factory _$$VerifyPayoutAccountImplCopyWith(_$VerifyPayoutAccountImpl value,
          $Res Function(_$VerifyPayoutAccountImpl) then) =
      __$$VerifyPayoutAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String reference,
      String accountNumber,
      String accountName,
      String bankId,
      String name,
      String createdAt});
}

/// @nodoc
class __$$VerifyPayoutAccountImplCopyWithImpl<$Res>
    extends _$VerifyPayoutAccountCopyWithImpl<$Res, _$VerifyPayoutAccountImpl>
    implements _$$VerifyPayoutAccountImplCopyWith<$Res> {
  __$$VerifyPayoutAccountImplCopyWithImpl(_$VerifyPayoutAccountImpl _value,
      $Res Function(_$VerifyPayoutAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reference = null,
    Object? accountNumber = null,
    Object? accountName = null,
    Object? bankId = null,
    Object? name = null,
    Object? createdAt = null,
  }) {
    return _then(_$VerifyPayoutAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPayoutAccountImpl implements _VerifyPayoutAccount {
  const _$VerifyPayoutAccountImpl(
      {required this.id,
      required this.reference,
      required this.accountNumber,
      required this.accountName,
      required this.bankId,
      required this.name,
      required this.createdAt});

  factory _$VerifyPayoutAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPayoutAccountImplFromJson(json);

  @override
  final int id;
  @override
  final String reference;
  @override
  final String accountNumber;
  @override
  final String accountName;
  @override
  final String bankId;
  @override
  final String name;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'VerifyPayoutAccount(id: $id, reference: $reference, accountNumber: $accountNumber, accountName: $accountName, bankId: $bankId, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPayoutAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, reference, accountNumber,
      accountName, bankId, name, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPayoutAccountImplCopyWith<_$VerifyPayoutAccountImpl> get copyWith =>
      __$$VerifyPayoutAccountImplCopyWithImpl<_$VerifyPayoutAccountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPayoutAccountImplToJson(
      this,
    );
  }
}

abstract class _VerifyPayoutAccount implements VerifyPayoutAccount {
  const factory _VerifyPayoutAccount(
      {required final int id,
      required final String reference,
      required final String accountNumber,
      required final String accountName,
      required final String bankId,
      required final String name,
      required final String createdAt}) = _$VerifyPayoutAccountImpl;

  factory _VerifyPayoutAccount.fromJson(Map<String, dynamic> json) =
      _$VerifyPayoutAccountImpl.fromJson;

  @override
  int get id;
  @override
  String get reference;
  @override
  String get accountNumber;
  @override
  String get accountName;
  @override
  String get bankId;
  @override
  String get name;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPayoutAccountImplCopyWith<_$VerifyPayoutAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
