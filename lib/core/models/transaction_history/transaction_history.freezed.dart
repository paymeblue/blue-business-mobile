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
  int get transactionId => throw _privateConstructorUsedError;
  String? get receiverName => throw _privateConstructorUsedError;
  String? get otherPartyName => throw _privateConstructorUsedError;
  String get amount =>
      throw _privateConstructorUsedError; // required String paymentMode,
  String? get type => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get initials => throw _privateConstructorUsedError;

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
      {int transactionId,
      String? receiverName,
      String? otherPartyName,
      String amount,
      String? type,
      String createdAt,
      String status,
      String initials});
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
    Object? transactionId = null,
    Object? receiverName = freezed,
    Object? otherPartyName = freezed,
    Object? amount = null,
    Object? type = freezed,
    Object? createdAt = null,
    Object? status = null,
    Object? initials = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPartyName: freezed == otherPartyName
          ? _value.otherPartyName
          : otherPartyName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      initials: null == initials
          ? _value.initials
          : initials // ignore: cast_nullable_to_non_nullable
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
      {int transactionId,
      String? receiverName,
      String? otherPartyName,
      String amount,
      String? type,
      String createdAt,
      String status,
      String initials});
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
    Object? transactionId = null,
    Object? receiverName = freezed,
    Object? otherPartyName = freezed,
    Object? amount = null,
    Object? type = freezed,
    Object? createdAt = null,
    Object? status = null,
    Object? initials = null,
  }) {
    return _then(_$TransactionHistoryImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPartyName: freezed == otherPartyName
          ? _value.otherPartyName
          : otherPartyName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
      initials: null == initials
          ? _value.initials
          : initials // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionHistoryImpl implements _TransactionHistory {
  const _$TransactionHistoryImpl(
      {required this.transactionId,
      required this.receiverName,
      this.otherPartyName,
      required this.amount,
      this.type,
      required this.createdAt,
      this.status = "pending",
      this.initials = "N/A"});

  factory _$TransactionHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionHistoryImplFromJson(json);

  @override
  final int transactionId;
  @override
  final String? receiverName;
  @override
  final String? otherPartyName;
  @override
  final String amount;
// required String paymentMode,
  @override
  final String? type;
  @override
  final String createdAt;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String initials;

  @override
  String toString() {
    return 'TransactionHistory(transactionId: $transactionId, receiverName: $receiverName, otherPartyName: $otherPartyName, amount: $amount, type: $type, createdAt: $createdAt, status: $status, initials: $initials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionHistoryImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.otherPartyName, otherPartyName) ||
                other.otherPartyName == otherPartyName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.initials, initials) ||
                other.initials == initials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, receiverName,
      otherPartyName, amount, type, createdAt, status, initials);

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
      {required final int transactionId,
      required final String? receiverName,
      final String? otherPartyName,
      required final String amount,
      final String? type,
      required final String createdAt,
      final String status,
      final String initials}) = _$TransactionHistoryImpl;

  factory _TransactionHistory.fromJson(Map<String, dynamic> json) =
      _$TransactionHistoryImpl.fromJson;

  @override
  int get transactionId;
  @override
  String? get receiverName;
  @override
  String? get otherPartyName;
  @override
  String get amount;
  @override // required String paymentMode,
  String? get type;
  @override
  String get createdAt;
  @override
  String get status;
  @override
  String get initials;
  @override
  @JsonKey(ignore: true)
  _$$TransactionHistoryImplCopyWith<_$TransactionHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
