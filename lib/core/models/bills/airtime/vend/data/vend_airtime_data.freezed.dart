// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_airtime_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendAirtimeData _$VendAirtimeDataFromJson(Map<String, dynamic> json) {
  return _VendAirtimeData.fromJson(json);
}

/// @nodoc
mixin _$VendAirtimeData {
  String get transactionId => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get paymentReference => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendAirtimeDataCopyWith<VendAirtimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendAirtimeDataCopyWith<$Res> {
  factory $VendAirtimeDataCopyWith(
          VendAirtimeData value, $Res Function(VendAirtimeData) then) =
      _$VendAirtimeDataCopyWithImpl<$Res, VendAirtimeData>;
  @useResult
  $Res call(
      {String transactionId,
      String receiver,
      String provider,
      String paymentReference,
      String amount,
      String status,
      String? createdAt});
}

/// @nodoc
class _$VendAirtimeDataCopyWithImpl<$Res, $Val extends VendAirtimeData>
    implements $VendAirtimeDataCopyWith<$Res> {
  _$VendAirtimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? receiver = null,
    Object? provider = null,
    Object? paymentReference = null,
    Object? amount = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      paymentReference: null == paymentReference
          ? _value.paymentReference
          : paymentReference // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendAirtimeDataImplCopyWith<$Res>
    implements $VendAirtimeDataCopyWith<$Res> {
  factory _$$VendAirtimeDataImplCopyWith(_$VendAirtimeDataImpl value,
          $Res Function(_$VendAirtimeDataImpl) then) =
      __$$VendAirtimeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      String receiver,
      String provider,
      String paymentReference,
      String amount,
      String status,
      String? createdAt});
}

/// @nodoc
class __$$VendAirtimeDataImplCopyWithImpl<$Res>
    extends _$VendAirtimeDataCopyWithImpl<$Res, _$VendAirtimeDataImpl>
    implements _$$VendAirtimeDataImplCopyWith<$Res> {
  __$$VendAirtimeDataImplCopyWithImpl(
      _$VendAirtimeDataImpl _value, $Res Function(_$VendAirtimeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? receiver = null,
    Object? provider = null,
    Object? paymentReference = null,
    Object? amount = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$VendAirtimeDataImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      paymentReference: null == paymentReference
          ? _value.paymentReference
          : paymentReference // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$VendAirtimeDataImpl implements _VendAirtimeData {
  const _$VendAirtimeDataImpl(
      {required this.transactionId,
      required this.receiver,
      required this.provider,
      required this.paymentReference,
      required this.amount,
      this.status = "pending",
      this.createdAt});

  factory _$VendAirtimeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendAirtimeDataImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String receiver;
  @override
  final String provider;
  @override
  final String paymentReference;
  @override
  final String amount;
  @override
  @JsonKey()
  final String status;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'VendAirtimeData(transactionId: $transactionId, receiver: $receiver, provider: $provider, paymentReference: $paymentReference, amount: $amount, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendAirtimeDataImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.paymentReference, paymentReference) ||
                other.paymentReference == paymentReference) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, receiver,
      provider, paymentReference, amount, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendAirtimeDataImplCopyWith<_$VendAirtimeDataImpl> get copyWith =>
      __$$VendAirtimeDataImplCopyWithImpl<_$VendAirtimeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendAirtimeDataImplToJson(
      this,
    );
  }
}

abstract class _VendAirtimeData implements VendAirtimeData {
  const factory _VendAirtimeData(
      {required final String transactionId,
      required final String receiver,
      required final String provider,
      required final String paymentReference,
      required final String amount,
      final String status,
      final String? createdAt}) = _$VendAirtimeDataImpl;

  factory _VendAirtimeData.fromJson(Map<String, dynamic> json) =
      _$VendAirtimeDataImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get receiver;
  @override
  String get provider;
  @override
  String get paymentReference;
  @override
  String get amount;
  @override
  String get status;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$VendAirtimeDataImplCopyWith<_$VendAirtimeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
