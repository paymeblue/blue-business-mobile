// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdraw_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawRequest _$WithdrawRequestFromJson(Map<String, dynamic> json) {
  return _WithdrawRequest.fromJson(json);
}

/// @nodoc
mixin _$WithdrawRequest {
  String get paymentMode => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawRequestCopyWith<WithdrawRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawRequestCopyWith<$Res> {
  factory $WithdrawRequestCopyWith(
          WithdrawRequest value, $Res Function(WithdrawRequest) then) =
      _$WithdrawRequestCopyWithImpl<$Res, WithdrawRequest>;
  @useResult
  $Res call({String paymentMode, String amount, String passcode});
}

/// @nodoc
class _$WithdrawRequestCopyWithImpl<$Res, $Val extends WithdrawRequest>
    implements $WithdrawRequestCopyWith<$Res> {
  _$WithdrawRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMode = null,
    Object? amount = null,
    Object? passcode = null,
  }) {
    return _then(_value.copyWith(
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawRequestImplCopyWith<$Res>
    implements $WithdrawRequestCopyWith<$Res> {
  factory _$$WithdrawRequestImplCopyWith(_$WithdrawRequestImpl value,
          $Res Function(_$WithdrawRequestImpl) then) =
      __$$WithdrawRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String paymentMode, String amount, String passcode});
}

/// @nodoc
class __$$WithdrawRequestImplCopyWithImpl<$Res>
    extends _$WithdrawRequestCopyWithImpl<$Res, _$WithdrawRequestImpl>
    implements _$$WithdrawRequestImplCopyWith<$Res> {
  __$$WithdrawRequestImplCopyWithImpl(
      _$WithdrawRequestImpl _value, $Res Function(_$WithdrawRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMode = null,
    Object? amount = null,
    Object? passcode = null,
  }) {
    return _then(_$WithdrawRequestImpl(
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WithdrawRequestImpl implements _WithdrawRequest {
  const _$WithdrawRequestImpl(
      {this.paymentMode = "withdrawal",
      required this.amount,
      required this.passcode});

  factory _$WithdrawRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawRequestImplFromJson(json);

  @override
  @JsonKey()
  final String paymentMode;
  @override
  final String amount;
  @override
  final String passcode;

  @override
  String toString() {
    return 'WithdrawRequest(paymentMode: $paymentMode, amount: $amount, passcode: $passcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawRequestImpl &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentMode, amount, passcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawRequestImplCopyWith<_$WithdrawRequestImpl> get copyWith =>
      __$$WithdrawRequestImplCopyWithImpl<_$WithdrawRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawRequestImplToJson(
      this,
    );
  }
}

abstract class _WithdrawRequest implements WithdrawRequest {
  const factory _WithdrawRequest(
      {final String paymentMode,
      required final String amount,
      required final String passcode}) = _$WithdrawRequestImpl;

  factory _WithdrawRequest.fromJson(Map<String, dynamic> json) =
      _$WithdrawRequestImpl.fromJson;

  @override
  String get paymentMode;
  @override
  String get amount;
  @override
  String get passcode;
  @override
  @JsonKey(ignore: true)
  _$$WithdrawRequestImplCopyWith<_$WithdrawRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
