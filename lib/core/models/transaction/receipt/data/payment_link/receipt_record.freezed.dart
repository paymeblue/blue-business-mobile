// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentLinkReceiptRecord _$PaymentLinkReceiptRecordFromJson(
    Map<String, dynamic> json) {
  return _PaymentLinkReceiptRecord.fromJson(json);
}

/// @nodoc
mixin _$PaymentLinkReceiptRecord {
  int get id => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get narration => throw _privateConstructorUsedError;

  /// Serializes this PaymentLinkReceiptRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentLinkReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentLinkReceiptRecordCopyWith<PaymentLinkReceiptRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentLinkReceiptRecordCopyWith<$Res> {
  factory $PaymentLinkReceiptRecordCopyWith(PaymentLinkReceiptRecord value,
          $Res Function(PaymentLinkReceiptRecord) then) =
      _$PaymentLinkReceiptRecordCopyWithImpl<$Res, PaymentLinkReceiptRecord>;
  @useResult
  $Res call(
      {int id,
      String transactionId,
      String amount,
      String receiverName,
      String phone,
      String createdAt,
      String status,
      String? senderName,
      String? narration});
}

/// @nodoc
class _$PaymentLinkReceiptRecordCopyWithImpl<$Res,
        $Val extends PaymentLinkReceiptRecord>
    implements $PaymentLinkReceiptRecordCopyWith<$Res> {
  _$PaymentLinkReceiptRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentLinkReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? receiverName = null,
    Object? phone = null,
    Object? createdAt = null,
    Object? status = null,
    Object? senderName = freezed,
    Object? narration = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentLinkReceiptRecordImplCopyWith<$Res>
    implements $PaymentLinkReceiptRecordCopyWith<$Res> {
  factory _$$PaymentLinkReceiptRecordImplCopyWith(
          _$PaymentLinkReceiptRecordImpl value,
          $Res Function(_$PaymentLinkReceiptRecordImpl) then) =
      __$$PaymentLinkReceiptRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String transactionId,
      String amount,
      String receiverName,
      String phone,
      String createdAt,
      String status,
      String? senderName,
      String? narration});
}

/// @nodoc
class __$$PaymentLinkReceiptRecordImplCopyWithImpl<$Res>
    extends _$PaymentLinkReceiptRecordCopyWithImpl<$Res,
        _$PaymentLinkReceiptRecordImpl>
    implements _$$PaymentLinkReceiptRecordImplCopyWith<$Res> {
  __$$PaymentLinkReceiptRecordImplCopyWithImpl(
      _$PaymentLinkReceiptRecordImpl _value,
      $Res Function(_$PaymentLinkReceiptRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentLinkReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? receiverName = null,
    Object? phone = null,
    Object? createdAt = null,
    Object? status = null,
    Object? senderName = freezed,
    Object? narration = freezed,
  }) {
    return _then(_$PaymentLinkReceiptRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentLinkReceiptRecordImpl implements _PaymentLinkReceiptRecord {
  const _$PaymentLinkReceiptRecordImpl(
      {required this.id,
      required this.transactionId,
      required this.amount,
      required this.receiverName,
      required this.phone,
      required this.createdAt,
      this.status = "pending",
      this.senderName,
      this.narration});

  factory _$PaymentLinkReceiptRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentLinkReceiptRecordImplFromJson(json);

  @override
  final int id;
  @override
  final String transactionId;
  @override
  final String amount;
  @override
  final String receiverName;
  @override
  final String phone;
  @override
  final String createdAt;
  @override
  @JsonKey()
  final String status;
  @override
  final String? senderName;
  @override
  final String? narration;

  @override
  String toString() {
    return 'PaymentLinkReceiptRecord(id: $id, transactionId: $transactionId, amount: $amount, receiverName: $receiverName, phone: $phone, createdAt: $createdAt, status: $status, senderName: $senderName, narration: $narration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLinkReceiptRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.narration, narration) ||
                other.narration == narration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionId, amount,
      receiverName, phone, createdAt, status, senderName, narration);

  /// Create a copy of PaymentLinkReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLinkReceiptRecordImplCopyWith<_$PaymentLinkReceiptRecordImpl>
      get copyWith => __$$PaymentLinkReceiptRecordImplCopyWithImpl<
          _$PaymentLinkReceiptRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentLinkReceiptRecordImplToJson(
      this,
    );
  }
}

abstract class _PaymentLinkReceiptRecord implements PaymentLinkReceiptRecord {
  const factory _PaymentLinkReceiptRecord(
      {required final int id,
      required final String transactionId,
      required final String amount,
      required final String receiverName,
      required final String phone,
      required final String createdAt,
      final String status,
      final String? senderName,
      final String? narration}) = _$PaymentLinkReceiptRecordImpl;

  factory _PaymentLinkReceiptRecord.fromJson(Map<String, dynamic> json) =
      _$PaymentLinkReceiptRecordImpl.fromJson;

  @override
  int get id;
  @override
  String get transactionId;
  @override
  String get amount;
  @override
  String get receiverName;
  @override
  String get phone;
  @override
  String get createdAt;
  @override
  String get status;
  @override
  String? get senderName;
  @override
  String? get narration;

  /// Create a copy of PaymentLinkReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentLinkReceiptRecordImplCopyWith<_$PaymentLinkReceiptRecordImpl>
      get copyWith => throw _privateConstructorUsedError;
}
