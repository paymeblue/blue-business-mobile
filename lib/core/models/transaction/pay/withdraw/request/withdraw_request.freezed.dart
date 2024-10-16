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
  String get amount => throw _privateConstructorUsedError;
  String get paymentMode => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  /// Serializes this WithdrawRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WithdrawRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithdrawRequestCopyWith<WithdrawRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawRequestCopyWith<$Res> {
  factory $WithdrawRequestCopyWith(
          WithdrawRequest value, $Res Function(WithdrawRequest) then) =
      _$WithdrawRequestCopyWithImpl<$Res, WithdrawRequest>;
  @useResult
  $Res call({String amount, String paymentMode, String passcode});
}

/// @nodoc
class _$WithdrawRequestCopyWithImpl<$Res, $Val extends WithdrawRequest>
    implements $WithdrawRequestCopyWith<$Res> {
  _$WithdrawRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithdrawRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? paymentMode = null,
    Object? passcode = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
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
  $Res call({String amount, String paymentMode, String passcode});
}

/// @nodoc
class __$$WithdrawRequestImplCopyWithImpl<$Res>
    extends _$WithdrawRequestCopyWithImpl<$Res, _$WithdrawRequestImpl>
    implements _$$WithdrawRequestImplCopyWith<$Res> {
  __$$WithdrawRequestImplCopyWithImpl(
      _$WithdrawRequestImpl _value, $Res Function(_$WithdrawRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithdrawRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? paymentMode = null,
    Object? passcode = null,
  }) {
    return _then(_$WithdrawRequestImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
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
      {required this.amount,
      this.paymentMode = "withdrawal",
      required this.passcode});

  factory _$WithdrawRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawRequestImplFromJson(json);

  @override
  final String amount;
  @override
  @JsonKey()
  final String paymentMode;
  @override
  final String passcode;

  @override
  String toString() {
    return 'WithdrawRequest(amount: $amount, paymentMode: $paymentMode, passcode: $passcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawRequestImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, paymentMode, passcode);

  /// Create a copy of WithdrawRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {required final String amount,
      final String paymentMode,
      required final String passcode}) = _$WithdrawRequestImpl;

  factory _WithdrawRequest.fromJson(Map<String, dynamic> json) =
      _$WithdrawRequestImpl.fromJson;

  @override
  String get amount;
  @override
  String get paymentMode;
  @override
  String get passcode;

  /// Create a copy of WithdrawRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithdrawRequestImplCopyWith<_$WithdrawRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
