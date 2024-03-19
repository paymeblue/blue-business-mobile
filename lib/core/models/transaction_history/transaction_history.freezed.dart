// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionHistory _$TransactionHistoryFromJson(Map<String, dynamic> json) {
  return _TransactionHistory.fromJson(json);
}

/// @nodoc
mixin _$TransactionHistory {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get transactionId => throw _privateConstructorUsedError;
  String? get receiverName => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get paymentMode => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionHistoryCopyWith<TransactionHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionHistoryCopyWith<$Res> {
  factory $TransactionHistoryCopyWith(
          TransactionHistory value, $Res Function(TransactionHistory) then) =
      _$TransactionHistoryCopyWithImpl<$Res, TransactionHistory>;
  @useResult
  $Res call(
      {int id,
      int userId,
      int transactionId,
      String? receiverName,
      String? senderName,
      String amount,
      String paymentMode,
      String? type,
      String createdAt,
      String status});
}

/// @nodoc
class _$TransactionHistoryCopyWithImpl<$Res, $Val extends TransactionHistory>
    implements $TransactionHistoryCopyWith<$Res> {
  _$TransactionHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? transactionId = null,
    Object? receiverName = freezed,
    Object? senderName = freezed,
    Object? amount = null,
    Object? paymentMode = null,
    Object? type = freezed,
    Object? createdAt = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionHistoryImplCopyWith<$Res>
    implements $TransactionHistoryCopyWith<$Res> {
  factory _$$TransactionHistoryImplCopyWith(_$TransactionHistoryImpl value,
          $Res Function(_$TransactionHistoryImpl) then) =
      __$$TransactionHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int userId,
      int transactionId,
      String? receiverName,
      String? senderName,
      String amount,
      String paymentMode,
      String? type,
      String createdAt,
      String status});
}

/// @nodoc
class __$$TransactionHistoryImplCopyWithImpl<$Res>
    extends _$TransactionHistoryCopyWithImpl<$Res, _$TransactionHistoryImpl>
    implements _$$TransactionHistoryImplCopyWith<$Res> {
  __$$TransactionHistoryImplCopyWithImpl(_$TransactionHistoryImpl _value,
      $Res Function(_$TransactionHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? transactionId = null,
    Object? receiverName = freezed,
    Object? senderName = freezed,
    Object? amount = null,
    Object? paymentMode = null,
    Object? type = freezed,
    Object? createdAt = null,
    Object? status = null,
  }) {
    return _then(_$TransactionHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionHistoryImpl implements _TransactionHistory {
  const _$TransactionHistoryImpl(
      {required this.id,
      required this.userId,
      required this.transactionId,
      required this.receiverName,
      this.senderName,
      required this.amount,
      required this.paymentMode,
      this.type,
      required this.createdAt,
      this.status = "pending"});

  factory _$TransactionHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final int transactionId;
  @override
  final String? receiverName;
  @override
  final String? senderName;
  @override
  final String amount;
  @override
  final String paymentMode;
  @override
  final String? type;
  @override
  final String createdAt;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'TransactionHistory(id: $id, userId: $userId, transactionId: $transactionId, receiverName: $receiverName, senderName: $senderName, amount: $amount, paymentMode: $paymentMode, type: $type, createdAt: $createdAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, transactionId,
      receiverName, senderName, amount, paymentMode, type, createdAt, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionHistoryImplCopyWith<_$TransactionHistoryImpl> get copyWith =>
      __$$TransactionHistoryImplCopyWithImpl<_$TransactionHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionHistoryImplToJson(
      this,
    );
  }
}

abstract class _TransactionHistory implements TransactionHistory {
  const factory _TransactionHistory(
      {required final int id,
      required final int userId,
      required final int transactionId,
      required final String? receiverName,
      final String? senderName,
      required final String amount,
      required final String paymentMode,
      final String? type,
      required final String createdAt,
      final String status}) = _$TransactionHistoryImpl;

  factory _TransactionHistory.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  int get transactionId;
  @override
  String? get receiverName;
  @override
  String? get senderName;
  @override
  String get amount;
  @override
  String get paymentMode;
  @override
  String? get type;
  @override
  String get createdAt;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryImplCopyWith<_$TransactionHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
