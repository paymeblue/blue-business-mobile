// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentDetail _$PaymentDetailFromJson(Map<String, dynamic> json) {
  return _PaymentDetail.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetail {
  String? get id => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  String get paymentMode => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get narration => throw _privateConstructorUsedError;

  /// Serializes this PaymentDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentDetailCopyWith<PaymentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailCopyWith<$Res> {
  factory $PaymentDetailCopyWith(
          PaymentDetail value, $Res Function(PaymentDetail) then) =
      _$PaymentDetailCopyWithImpl<$Res, PaymentDetail>;
  @useResult
  $Res call(
      {String? id,
      String amount,
      String receiver,
      String details,
      String paymentMode,
      String createdAt,
      String transactionId,
      String service,
      String status,
      String? narration});
}

/// @nodoc
class _$PaymentDetailCopyWithImpl<$Res, $Val extends PaymentDetail>
    implements $PaymentDetailCopyWith<$Res> {
  _$PaymentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = null,
    Object? receiver = null,
    Object? details = null,
    Object? paymentMode = null,
    Object? createdAt = null,
    Object? transactionId = null,
    Object? service = null,
    Object? status = null,
    Object? narration = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDetailImplCopyWith<$Res>
    implements $PaymentDetailCopyWith<$Res> {
  factory _$$PaymentDetailImplCopyWith(
          _$PaymentDetailImpl value, $Res Function(_$PaymentDetailImpl) then) =
      __$$PaymentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String amount,
      String receiver,
      String details,
      String paymentMode,
      String createdAt,
      String transactionId,
      String service,
      String status,
      String? narration});
}

/// @nodoc
class __$$PaymentDetailImplCopyWithImpl<$Res>
    extends _$PaymentDetailCopyWithImpl<$Res, _$PaymentDetailImpl>
    implements _$$PaymentDetailImplCopyWith<$Res> {
  __$$PaymentDetailImplCopyWithImpl(
      _$PaymentDetailImpl _value, $Res Function(_$PaymentDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? amount = null,
    Object? receiver = null,
    Object? details = null,
    Object? paymentMode = null,
    Object? createdAt = null,
    Object? transactionId = null,
    Object? service = null,
    Object? status = null,
    Object? narration = freezed,
  }) {
    return _then(_$PaymentDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDetailImpl implements _PaymentDetail {
  const _$PaymentDetailImpl(
      {required this.id,
      required this.amount,
      required this.receiver,
      required this.details,
      required this.paymentMode,
      required this.createdAt,
      required this.transactionId,
      this.service = "payment",
      this.status = "pending",
      this.narration});

  factory _$PaymentDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDetailImplFromJson(json);

  @override
  final String? id;
  @override
  final String amount;
  @override
  final String receiver;
  @override
  final String details;
  @override
  final String paymentMode;
  @override
  final String createdAt;
  @override
  final String transactionId;
  @override
  @JsonKey()
  final String service;
  @override
  @JsonKey()
  final String status;
  @override
  final String? narration;

  @override
  String toString() {
    return 'PaymentDetail(id: $id, amount: $amount, receiver: $receiver, details: $details, paymentMode: $paymentMode, createdAt: $createdAt, transactionId: $transactionId, service: $service, status: $status, narration: $narration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.narration, narration) ||
                other.narration == narration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, receiver, details,
      paymentMode, createdAt, transactionId, service, status, narration);

  /// Create a copy of PaymentDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDetailImplCopyWith<_$PaymentDetailImpl> get copyWith =>
      __$$PaymentDetailImplCopyWithImpl<_$PaymentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDetailImplToJson(
      this,
    );
  }
}

abstract class _PaymentDetail implements PaymentDetail {
  const factory _PaymentDetail(
      {required final String? id,
      required final String amount,
      required final String receiver,
      required final String details,
      required final String paymentMode,
      required final String createdAt,
      required final String transactionId,
      final String service,
      final String status,
      final String? narration}) = _$PaymentDetailImpl;

  factory _PaymentDetail.fromJson(Map<String, dynamic> json) =
      _$PaymentDetailImpl.fromJson;

  @override
  String? get id;
  @override
  String get amount;
  @override
  String get receiver;
  @override
  String get details;
  @override
  String get paymentMode;
  @override
  String get createdAt;
  @override
  String get transactionId;
  @override
  String get service;
  @override
  String get status;
  @override
  String? get narration;

  /// Create a copy of PaymentDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentDetailImplCopyWith<_$PaymentDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
