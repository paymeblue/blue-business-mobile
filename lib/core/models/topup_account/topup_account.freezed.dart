// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopupAccount _$TopupAccountFromJson(Map<String, dynamic> json) {
  return _TopupAccount.fromJson(json);
}

/// @nodoc
mixin _$TopupAccount {
  int get id => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopupAccountCopyWith<TopupAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopupAccountCopyWith<$Res> {
  factory $TopupAccountCopyWith(
          TopupAccount value, $Res Function(TopupAccount) then) =
      _$TopupAccountCopyWithImpl<$Res, TopupAccount>;
  @useResult
  $Res call(
      {int id, String accountName, String bankName, String accountNumber});
}

/// @nodoc
class _$TopupAccountCopyWithImpl<$Res, $Val extends TopupAccount>
    implements $TopupAccountCopyWith<$Res> {
  _$TopupAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountName = null,
    Object? bankName = null,
    Object? accountNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopupAccountImplCopyWith<$Res>
    implements $TopupAccountCopyWith<$Res> {
  factory _$$TopupAccountImplCopyWith(
          _$TopupAccountImpl value, $Res Function(_$TopupAccountImpl) then) =
      __$$TopupAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String accountName, String bankName, String accountNumber});
}

/// @nodoc
class __$$TopupAccountImplCopyWithImpl<$Res>
    extends _$TopupAccountCopyWithImpl<$Res, _$TopupAccountImpl>
    implements _$$TopupAccountImplCopyWith<$Res> {
  __$$TopupAccountImplCopyWithImpl(
      _$TopupAccountImpl _value, $Res Function(_$TopupAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountName = null,
    Object? bankName = null,
    Object? accountNumber = null,
  }) {
    return _then(_$TopupAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopupAccountImpl implements _TopupAccount {
  const _$TopupAccountImpl(
      {required this.id,
      required this.accountName,
      required this.bankName,
      required this.accountNumber});

  factory _$TopupAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopupAccountImplFromJson(json);

  @override
  final int id;
  @override
  final String accountName;
  @override
  final String bankName;
  @override
  final String accountNumber;

  @override
  String toString() {
    return 'TopupAccount(id: $id, accountName: $accountName, bankName: $bankName, accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopupAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, accountName, bankName, accountNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopupAccountImplCopyWith<_$TopupAccountImpl> get copyWith =>
      __$$TopupAccountImplCopyWithImpl<_$TopupAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopupAccountImplToJson(
      this,
    );
  }
}

abstract class _TopupAccount implements TopupAccount {
  const factory _TopupAccount(
      {required final int id,
      required final String accountName,
      required final String bankName,
      required final String accountNumber}) = _$TopupAccountImpl;

  factory _TopupAccount.fromJson(Map<String, dynamic> json) =
      _$TopupAccountImpl.fromJson;

  @override
  int get id;
  @override
  String get accountName;
  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  @JsonKey(ignore: true)
  _$$TopupAccountImplCopyWith<_$TopupAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
