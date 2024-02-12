// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_payout_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetPayoutData _$SetPayoutDataFromJson(Map<String, dynamic> json) {
  return _SetPayoutData.fromJson(json);
}

/// @nodoc
mixin _$SetPayoutData {
  WithdrawalAccount get withdrawalAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetPayoutDataCopyWith<SetPayoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPayoutDataCopyWith<$Res> {
  factory $SetPayoutDataCopyWith(
          SetPayoutData value, $Res Function(SetPayoutData) then) =
      _$SetPayoutDataCopyWithImpl<$Res, SetPayoutData>;
  @useResult
  $Res call({WithdrawalAccount withdrawalAccount});

  $WithdrawalAccountCopyWith<$Res> get withdrawalAccount;
}

/// @nodoc
class _$SetPayoutDataCopyWithImpl<$Res, $Val extends SetPayoutData>
    implements $SetPayoutDataCopyWith<$Res> {
  _$SetPayoutDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withdrawalAccount = null,
  }) {
    return _then(_value.copyWith(
      withdrawalAccount: null == withdrawalAccount
          ? _value.withdrawalAccount
          : withdrawalAccount // ignore: cast_nullable_to_non_nullable
              as WithdrawalAccount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WithdrawalAccountCopyWith<$Res> get withdrawalAccount {
    return $WithdrawalAccountCopyWith<$Res>(_value.withdrawalAccount, (value) {
      return _then(_value.copyWith(withdrawalAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetPayoutDataImplCopyWith<$Res>
    implements $SetPayoutDataCopyWith<$Res> {
  factory _$$SetPayoutDataImplCopyWith(
          _$SetPayoutDataImpl value, $Res Function(_$SetPayoutDataImpl) then) =
      __$$SetPayoutDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WithdrawalAccount withdrawalAccount});

  @override
  $WithdrawalAccountCopyWith<$Res> get withdrawalAccount;
}

/// @nodoc
class __$$SetPayoutDataImplCopyWithImpl<$Res>
    extends _$SetPayoutDataCopyWithImpl<$Res, _$SetPayoutDataImpl>
    implements _$$SetPayoutDataImplCopyWith<$Res> {
  __$$SetPayoutDataImplCopyWithImpl(
      _$SetPayoutDataImpl _value, $Res Function(_$SetPayoutDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withdrawalAccount = null,
  }) {
    return _then(_$SetPayoutDataImpl(
      withdrawalAccount: null == withdrawalAccount
          ? _value.withdrawalAccount
          : withdrawalAccount // ignore: cast_nullable_to_non_nullable
              as WithdrawalAccount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetPayoutDataImpl implements _SetPayoutData {
  const _$SetPayoutDataImpl({required this.withdrawalAccount});

  factory _$SetPayoutDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPayoutDataImplFromJson(json);

  @override
  final WithdrawalAccount withdrawalAccount;

  @override
  String toString() {
    return 'SetPayoutData(withdrawalAccount: $withdrawalAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPayoutDataImpl &&
            (identical(other.withdrawalAccount, withdrawalAccount) ||
                other.withdrawalAccount == withdrawalAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, withdrawalAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPayoutDataImplCopyWith<_$SetPayoutDataImpl> get copyWith =>
      __$$SetPayoutDataImplCopyWithImpl<_$SetPayoutDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPayoutDataImplToJson(
      this,
    );
  }
}

abstract class _SetPayoutData implements SetPayoutData {
  const factory _SetPayoutData(
          {required final WithdrawalAccount withdrawalAccount}) =
      _$SetPayoutDataImpl;

  factory _SetPayoutData.fromJson(Map<String, dynamic> json) =
      _$SetPayoutDataImpl.fromJson;

  @override
  WithdrawalAccount get withdrawalAccount;
  @override
  @JsonKey(ignore: true)
  _$$SetPayoutDataImplCopyWith<_$SetPayoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
