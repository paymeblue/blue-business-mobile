// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyPayoutData _$VerifyPayoutDataFromJson(Map<String, dynamic> json) {
  return _VerifyPayoutData.fromJson(json);
}

/// @nodoc
mixin _$VerifyPayoutData {
  VerifyPayoutAccount get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyPayoutDataCopyWith<VerifyPayoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPayoutDataCopyWith<$Res> {
  factory $VerifyPayoutDataCopyWith(
          VerifyPayoutData value, $Res Function(VerifyPayoutData) then) =
      _$VerifyPayoutDataCopyWithImpl<$Res, VerifyPayoutData>;
  @useResult
  $Res call({VerifyPayoutAccount account});

  $VerifyPayoutAccountCopyWith<$Res> get account;
}

/// @nodoc
class _$VerifyPayoutDataCopyWithImpl<$Res, $Val extends VerifyPayoutData>
    implements $VerifyPayoutDataCopyWith<$Res> {
  _$VerifyPayoutDataCopyWithImpl(this._value, this._then);

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
              as VerifyPayoutAccount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyPayoutAccountCopyWith<$Res> get account {
    return $VerifyPayoutAccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyPayoutDataImplCopyWith<$Res>
    implements $VerifyPayoutDataCopyWith<$Res> {
  factory _$$VerifyPayoutDataImplCopyWith(_$VerifyPayoutDataImpl value,
          $Res Function(_$VerifyPayoutDataImpl) then) =
      __$$VerifyPayoutDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VerifyPayoutAccount account});

  @override
  $VerifyPayoutAccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$VerifyPayoutDataImplCopyWithImpl<$Res>
    extends _$VerifyPayoutDataCopyWithImpl<$Res, _$VerifyPayoutDataImpl>
    implements _$$VerifyPayoutDataImplCopyWith<$Res> {
  __$$VerifyPayoutDataImplCopyWithImpl(_$VerifyPayoutDataImpl _value,
      $Res Function(_$VerifyPayoutDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$VerifyPayoutDataImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as VerifyPayoutAccount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPayoutDataImpl implements _VerifyPayoutData {
  const _$VerifyPayoutDataImpl({required this.account});

  factory _$VerifyPayoutDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPayoutDataImplFromJson(json);

  @override
  final VerifyPayoutAccount account;

  @override
  String toString() {
    return 'VerifyPayoutData(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPayoutDataImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPayoutDataImplCopyWith<_$VerifyPayoutDataImpl> get copyWith =>
      __$$VerifyPayoutDataImplCopyWithImpl<_$VerifyPayoutDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPayoutDataImplToJson(
      this,
    );
  }
}

abstract class _VerifyPayoutData implements VerifyPayoutData {
  const factory _VerifyPayoutData(
      {required final VerifyPayoutAccount account}) = _$VerifyPayoutDataImpl;

  factory _VerifyPayoutData.fromJson(Map<String, dynamic> json) =
      _$VerifyPayoutDataImpl.fromJson;

  @override
  VerifyPayoutAccount get account;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPayoutDataImplCopyWith<_$VerifyPayoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
