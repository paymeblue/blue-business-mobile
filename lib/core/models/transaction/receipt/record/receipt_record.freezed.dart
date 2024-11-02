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

ReceiptRecord _$ReceiptRecordFromJson(Map<String, dynamic> json) {
  return _ReceiptRecord.fromJson(json);
}

/// @nodoc
mixin _$ReceiptRecord {
  int get id => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get orderReference => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get receivedBy => throw _privateConstructorUsedError;
  String get paymentMode => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get narration => throw _privateConstructorUsedError;

  /// Serializes this ReceiptRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiptRecordCopyWith<ReceiptRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptRecordCopyWith<$Res> {
  factory $ReceiptRecordCopyWith(
          ReceiptRecord value, $Res Function(ReceiptRecord) then) =
      _$ReceiptRecordCopyWithImpl<$Res, ReceiptRecord>;
  @useResult
  $Res call(
      {int id,
      String amount,
      String orderReference,
      String receiverName,
      String receivedBy,
      String paymentMode,
      String createdAt,
      String status,
      String? senderName,
      String? narration});
}

/// @nodoc
class _$ReceiptRecordCopyWithImpl<$Res, $Val extends ReceiptRecord>
    implements $ReceiptRecordCopyWith<$Res> {
  _$ReceiptRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? orderReference = null,
    Object? receiverName = null,
    Object? receivedBy = null,
    Object? paymentMode = null,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      orderReference: null == orderReference
          ? _value.orderReference
          : orderReference // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receivedBy: null == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ReceiptRecordImplCopyWith<$Res>
    implements $ReceiptRecordCopyWith<$Res> {
  factory _$$ReceiptRecordImplCopyWith(
          _$ReceiptRecordImpl value, $Res Function(_$ReceiptRecordImpl) then) =
      __$$ReceiptRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String amount,
      String orderReference,
      String receiverName,
      String receivedBy,
      String paymentMode,
      String createdAt,
      String status,
      String? senderName,
      String? narration});
}

/// @nodoc
class __$$ReceiptRecordImplCopyWithImpl<$Res>
    extends _$ReceiptRecordCopyWithImpl<$Res, _$ReceiptRecordImpl>
    implements _$$ReceiptRecordImplCopyWith<$Res> {
  __$$ReceiptRecordImplCopyWithImpl(
      _$ReceiptRecordImpl _value, $Res Function(_$ReceiptRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? orderReference = null,
    Object? receiverName = null,
    Object? receivedBy = null,
    Object? paymentMode = null,
    Object? createdAt = null,
    Object? status = null,
    Object? senderName = freezed,
    Object? narration = freezed,
  }) {
    return _then(_$ReceiptRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      orderReference: null == orderReference
          ? _value.orderReference
          : orderReference // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receivedBy: null == receivedBy
          ? _value.receivedBy
          : receivedBy // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
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
class _$ReceiptRecordImpl implements _ReceiptRecord {
  const _$ReceiptRecordImpl(
      {required this.id,
      required this.amount,
      required this.orderReference,
      required this.receiverName,
      required this.receivedBy,
      required this.paymentMode,
      required this.createdAt,
      this.status = "pending",
      this.senderName,
      this.narration});

  factory _$ReceiptRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptRecordImplFromJson(json);

  @override
  final int id;
  @override
  final String amount;
  @override
  final String orderReference;
  @override
  final String receiverName;
  @override
  final String receivedBy;
  @override
  final String paymentMode;
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
    return 'ReceiptRecord(id: $id, amount: $amount, orderReference: $orderReference, receiverName: $receiverName, receivedBy: $receivedBy, paymentMode: $paymentMode, createdAt: $createdAt, status: $status, senderName: $senderName, narration: $narration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.orderReference, orderReference) ||
                other.orderReference == orderReference) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.receivedBy, receivedBy) ||
                other.receivedBy == receivedBy) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      orderReference,
      receiverName,
      receivedBy,
      paymentMode,
      createdAt,
      status,
      senderName,
      narration);

  /// Create a copy of ReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptRecordImplCopyWith<_$ReceiptRecordImpl> get copyWith =>
      __$$ReceiptRecordImplCopyWithImpl<_$ReceiptRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptRecordImplToJson(
      this,
    );
  }
}

abstract class _ReceiptRecord implements ReceiptRecord {
  const factory _ReceiptRecord(
      {required final int id,
      required final String amount,
      required final String orderReference,
      required final String receiverName,
      required final String receivedBy,
      required final String paymentMode,
      required final String createdAt,
      final String status,
      final String? senderName,
      final String? narration}) = _$ReceiptRecordImpl;

  factory _ReceiptRecord.fromJson(Map<String, dynamic> json) =
      _$ReceiptRecordImpl.fromJson;

  @override
  int get id;
  @override
  String get amount;
  @override
  String get orderReference;
  @override
  String get receiverName;
  @override
  String get receivedBy;
  @override
  String get paymentMode;
  @override
  String get createdAt;
  @override
  String get status;
  @override
  String? get senderName;
  @override
  String? get narration;

  /// Create a copy of ReceiptRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiptRecordImplCopyWith<_$ReceiptRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
