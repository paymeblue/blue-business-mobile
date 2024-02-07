// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopupAccountData _$TopupAccountDataFromJson(Map<String, dynamic> json) {
  return _TopupAccountData.fromJson(json);
}

/// @nodoc
mixin _$TopupAccountData {
  TopupAccount get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopupAccountDataCopyWith<TopupAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopupAccountDataCopyWith<$Res> {
  factory $TopupAccountDataCopyWith(
          TopupAccountData value, $Res Function(TopupAccountData) then) =
      _$TopupAccountDataCopyWithImpl<$Res, TopupAccountData>;
  @useResult
  $Res call({TopupAccount account});

  $TopupAccountCopyWith<$Res> get account;
}

/// @nodoc
class _$TopupAccountDataCopyWithImpl<$Res, $Val extends TopupAccountData>
    implements $TopupAccountDataCopyWith<$Res> {
  _$TopupAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as TopupAccount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopupAccountCopyWith<$Res> get account {
    return $TopupAccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopupAccountDataImplCopyWith<$Res>
    implements $TopupAccountDataCopyWith<$Res> {
  factory _$$TopupAccountDataImplCopyWith(_$TopupAccountDataImpl value,
          $Res Function(_$TopupAccountDataImpl) then) =
      __$$TopupAccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TopupAccount account});

  @override
  $TopupAccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$TopupAccountDataImplCopyWithImpl<$Res>
    extends _$TopupAccountDataCopyWithImpl<$Res, _$TopupAccountDataImpl>
    implements _$$TopupAccountDataImplCopyWith<$Res> {
  __$$TopupAccountDataImplCopyWithImpl(_$TopupAccountDataImpl _value,
      $Res Function(_$TopupAccountDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$TopupAccountDataImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as TopupAccount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopupAccountDataImpl implements _TopupAccountData {
  const _$TopupAccountDataImpl({required this.account});

  factory _$TopupAccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopupAccountDataImplFromJson(json);

  @override
  final TopupAccount account;

  @override
  String toString() {
    return 'TopupAccountData(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopupAccountDataImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopupAccountDataImplCopyWith<_$TopupAccountDataImpl> get copyWith =>
      __$$TopupAccountDataImplCopyWithImpl<_$TopupAccountDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopupAccountDataImplToJson(
      this,
    );
  }
}

abstract class _TopupAccountData implements TopupAccountData {
  const factory _TopupAccountData({required final TopupAccount account}) =
      _$TopupAccountDataImpl;

  factory _TopupAccountData.fromJson(Map<String, dynamic> json) =
      _$TopupAccountDataImpl.fromJson;

  @override
  TopupAccount get account;
  @override
  @JsonKey(ignore: true)
  _$$TopupAccountDataImplCopyWith<_$TopupAccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
