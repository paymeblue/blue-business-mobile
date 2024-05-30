// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_data_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendDataData _$VendDataDataFromJson(Map<String, dynamic> json) {
  return _VendDataData.fromJson(json);
}

/// @nodoc
mixin _$VendDataData {
  String get transactionId => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get package => throw _privateConstructorUsedError;
  String get paymentReference => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendDataDataCopyWith<VendDataData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendDataDataCopyWith<$Res> {
  factory $VendDataDataCopyWith(
          VendDataData value, $Res Function(VendDataData) then) =
      _$VendDataDataCopyWithImpl<$Res, VendDataData>;
  @useResult
  $Res call(
      {String transactionId,
      String receiver,
      String provider,
      String package,
      String paymentReference,
      String amount,
      String status,
      String? createdAt});
}

/// @nodoc
class _$VendDataDataCopyWithImpl<$Res, $Val extends VendDataData>
    implements $VendDataDataCopyWith<$Res> {
  _$VendDataDataCopyWithImpl(this._value, this._then);

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
    Object? package = null,
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
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
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
abstract class _$$VendDataDataImplCopyWith<$Res>
    implements $VendDataDataCopyWith<$Res> {
  factory _$$VendDataDataImplCopyWith(
          _$VendDataDataImpl value, $Res Function(_$VendDataDataImpl) then) =
      __$$VendDataDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      String receiver,
      String provider,
      String package,
      String paymentReference,
      String amount,
      String status,
      String? createdAt});
}

/// @nodoc
class __$$VendDataDataImplCopyWithImpl<$Res>
    extends _$VendDataDataCopyWithImpl<$Res, _$VendDataDataImpl>
    implements _$$VendDataDataImplCopyWith<$Res> {
  __$$VendDataDataImplCopyWithImpl(
      _$VendDataDataImpl _value, $Res Function(_$VendDataDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? receiver = null,
    Object? provider = null,
    Object? package = null,
    Object? paymentReference = null,
    Object? amount = null,
    Object? status = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$VendDataDataImpl(
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
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
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
class _$VendDataDataImpl implements _VendDataData {
  const _$VendDataDataImpl(
      {required this.transactionId,
      required this.receiver,
      required this.provider,
      required this.package,
      required this.paymentReference,
      required this.amount,
      this.status = "pending",
      this.createdAt});

  factory _$VendDataDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendDataDataImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String receiver;
  @override
  final String provider;
  @override
  final String package;
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
    return 'VendDataData(transactionId: $transactionId, receiver: $receiver, provider: $provider, package: $package, paymentReference: $paymentReference, amount: $amount, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendDataDataImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.package, package) || other.package == package) &&
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
      provider, package, paymentReference, amount, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendDataDataImplCopyWith<_$VendDataDataImpl> get copyWith =>
      __$$VendDataDataImplCopyWithImpl<_$VendDataDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendDataDataImplToJson(
      this,
    );
  }
}

abstract class _VendDataData implements VendDataData {
  const factory _VendDataData(
      {required final String transactionId,
      required final String receiver,
      required final String provider,
      required final String package,
      required final String paymentReference,
      required final String amount,
      final String status,
      final String? createdAt}) = _$VendDataDataImpl;

  factory _VendDataData.fromJson(Map<String, dynamic> json) =
      _$VendDataDataImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get receiver;
  @override
  String get provider;
  @override
  String get package;
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
  _$$VendDataDataImplCopyWith<_$VendDataDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
