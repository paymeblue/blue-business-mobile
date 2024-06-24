// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_transaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitiateTransactionData _$InitiateTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _InitiateTransactionData.fromJson(json);
}

/// @nodoc
mixin _$InitiateTransactionData {
  int get id => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitiateTransactionDataCopyWith<InitiateTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiateTransactionDataCopyWith<$Res> {
  factory $InitiateTransactionDataCopyWith(InitiateTransactionData value,
          $Res Function(InitiateTransactionData) then) =
      _$InitiateTransactionDataCopyWithImpl<$Res, InitiateTransactionData>;
  @useResult
  $Res call(
      {int id,
      String transactionId,
      String amount,
      String status,
      String createdAt});
}

/// @nodoc
class _$InitiateTransactionDataCopyWithImpl<$Res,
        $Val extends InitiateTransactionData>
    implements $InitiateTransactionDataCopyWith<$Res> {
  _$InitiateTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? status = null,
    Object? createdAt = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitiateTransactionDataImplCopyWith<$Res>
    implements $InitiateTransactionDataCopyWith<$Res> {
  factory _$$InitiateTransactionDataImplCopyWith(
          _$InitiateTransactionDataImpl value,
          $Res Function(_$InitiateTransactionDataImpl) then) =
      __$$InitiateTransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String transactionId,
      String amount,
      String status,
      String createdAt});
}

/// @nodoc
class __$$InitiateTransactionDataImplCopyWithImpl<$Res>
    extends _$InitiateTransactionDataCopyWithImpl<$Res,
        _$InitiateTransactionDataImpl>
    implements _$$InitiateTransactionDataImplCopyWith<$Res> {
  __$$InitiateTransactionDataImplCopyWithImpl(
      _$InitiateTransactionDataImpl _value,
      $Res Function(_$InitiateTransactionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$InitiateTransactionDataImpl(
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiateTransactionDataImpl implements _InitiateTransactionData {
  const _$InitiateTransactionDataImpl(
      {required this.id,
      required this.transactionId,
      required this.amount,
      required this.status,
      required this.createdAt});

  factory _$InitiateTransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitiateTransactionDataImplFromJson(json);

  @override
  final int id;
  @override
  final String transactionId;
  @override
  final String amount;
  @override
  final String status;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'InitiateTransactionData(id: $id, transactionId: $transactionId, amount: $amount, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateTransactionDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, transactionId, amount, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateTransactionDataImplCopyWith<_$InitiateTransactionDataImpl>
      get copyWith => __$$InitiateTransactionDataImplCopyWithImpl<
          _$InitiateTransactionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiateTransactionDataImplToJson(
      this,
    );
  }
}

abstract class _InitiateTransactionData implements InitiateTransactionData {
  const factory _InitiateTransactionData(
      {required final int id,
      required final String transactionId,
      required final String amount,
      required final String status,
      required final String createdAt}) = _$InitiateTransactionDataImpl;

  factory _InitiateTransactionData.fromJson(Map<String, dynamic> json) =
      _$InitiateTransactionDataImpl.fromJson;

  @override
  int get id;
  @override
  String get transactionId;
  @override
  String get amount;
  @override
  String get status;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$InitiateTransactionDataImplCopyWith<_$InitiateTransactionDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
