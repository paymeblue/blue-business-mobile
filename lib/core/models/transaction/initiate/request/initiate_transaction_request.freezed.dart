// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitiateTransactionRequest _$InitiateTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return _InitiateTransactionRequest.fromJson(json);
}

/// @nodoc
mixin _$InitiateTransactionRequest {
  String get amount => throw _privateConstructorUsedError;
  String? get narration => throw _privateConstructorUsedError;
  String get paymentMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitiateTransactionRequestCopyWith<InitiateTransactionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiateTransactionRequestCopyWith<$Res> {
  factory $InitiateTransactionRequestCopyWith(InitiateTransactionRequest value,
          $Res Function(InitiateTransactionRequest) then) =
      _$InitiateTransactionRequestCopyWithImpl<$Res,
          InitiateTransactionRequest>;
  @useResult
  $Res call({String amount, String? narration, String paymentMode});
}

/// @nodoc
class _$InitiateTransactionRequestCopyWithImpl<$Res,
        $Val extends InitiateTransactionRequest>
    implements $InitiateTransactionRequestCopyWith<$Res> {
  _$InitiateTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? narration = freezed,
    Object? paymentMode = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitiateTransactionRequestImplCopyWith<$Res>
    implements $InitiateTransactionRequestCopyWith<$Res> {
  factory _$$InitiateTransactionRequestImplCopyWith(
          _$InitiateTransactionRequestImpl value,
          $Res Function(_$InitiateTransactionRequestImpl) then) =
      __$$InitiateTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount, String? narration, String paymentMode});
}

/// @nodoc
class __$$InitiateTransactionRequestImplCopyWithImpl<$Res>
    extends _$InitiateTransactionRequestCopyWithImpl<$Res,
        _$InitiateTransactionRequestImpl>
    implements _$$InitiateTransactionRequestImplCopyWith<$Res> {
  __$$InitiateTransactionRequestImplCopyWithImpl(
      _$InitiateTransactionRequestImpl _value,
      $Res Function(_$InitiateTransactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? narration = freezed,
    Object? paymentMode = null,
  }) {
    return _then(_$InitiateTransactionRequestImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiateTransactionRequestImpl implements _InitiateTransactionRequest {
  const _$InitiateTransactionRequestImpl(
      {required this.amount, this.narration, required this.paymentMode});

  factory _$InitiateTransactionRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InitiateTransactionRequestImplFromJson(json);

  @override
  final String amount;
  @override
  final String? narration;
  @override
  final String paymentMode;

  @override
  String toString() {
    return 'InitiateTransactionRequest(amount: $amount, narration: $narration, paymentMode: $paymentMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateTransactionRequestImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.narration, narration) ||
                other.narration == narration) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, narration, paymentMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateTransactionRequestImplCopyWith<_$InitiateTransactionRequestImpl>
      get copyWith => __$$InitiateTransactionRequestImplCopyWithImpl<
          _$InitiateTransactionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiateTransactionRequestImplToJson(
      this,
    );
  }
}

abstract class _InitiateTransactionRequest
    implements InitiateTransactionRequest {
  const factory _InitiateTransactionRequest(
      {required final String amount,
      final String? narration,
      required final String paymentMode}) = _$InitiateTransactionRequestImpl;

  factory _InitiateTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$InitiateTransactionRequestImpl.fromJson;

  @override
  String get amount;
  @override
  String? get narration;
  @override
  String get paymentMode;
  @override
  @JsonKey(ignore: true)
  _$$InitiateTransactionRequestImplCopyWith<_$InitiateTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
