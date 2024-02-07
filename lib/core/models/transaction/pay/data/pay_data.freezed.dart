// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayData _$PayDataFromJson(Map<String, dynamic> json) {
  return _PayData.fromJson(json);
}

/// @nodoc
mixin _$PayData {
  String get transactionId => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get receiverWallet => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayDataCopyWith<PayData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayDataCopyWith<$Res> {
  factory $PayDataCopyWith(PayData value, $Res Function(PayData) then) =
      _$PayDataCopyWithImpl<$Res, PayData>;
  @useResult
  $Res call(
      {String transactionId,
      String amount,
      String receiverName,
      String receiverWallet,
      String reference,
      String status,
      String createdAt});
}

/// @nodoc
class _$PayDataCopyWithImpl<$Res, $Val extends PayData>
    implements $PayDataCopyWith<$Res> {
  _$PayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? amount = null,
    Object? receiverName = null,
    Object? receiverWallet = null,
    Object? reference = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
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
      receiverWallet: null == receiverWallet
          ? _value.receiverWallet
          : receiverWallet // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PayDataImplCopyWith<$Res> implements $PayDataCopyWith<$Res> {
  factory _$$PayDataImplCopyWith(
          _$PayDataImpl value, $Res Function(_$PayDataImpl) then) =
      __$$PayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transactionId,
      String amount,
      String receiverName,
      String receiverWallet,
      String reference,
      String status,
      String createdAt});
}

/// @nodoc
class __$$PayDataImplCopyWithImpl<$Res>
    extends _$PayDataCopyWithImpl<$Res, _$PayDataImpl>
    implements _$$PayDataImplCopyWith<$Res> {
  __$$PayDataImplCopyWithImpl(
      _$PayDataImpl _value, $Res Function(_$PayDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? amount = null,
    Object? receiverName = null,
    Object? receiverWallet = null,
    Object? reference = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$PayDataImpl(
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
      receiverWallet: null == receiverWallet
          ? _value.receiverWallet
          : receiverWallet // ignore: cast_nullable_to_non_nullable
              as String,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
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
class _$PayDataImpl implements _PayData {
  const _$PayDataImpl(
      {required this.transactionId,
      required this.amount,
      required this.receiverName,
      required this.receiverWallet,
      required this.reference,
      required this.status,
      required this.createdAt});

  factory _$PayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayDataImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String amount;
  @override
  final String receiverName;
  @override
  final String receiverWallet;
  @override
  final String reference;
  @override
  final String status;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'PayData(transactionId: $transactionId, amount: $amount, receiverName: $receiverName, receiverWallet: $receiverWallet, reference: $reference, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayDataImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.receiverWallet, receiverWallet) ||
                other.receiverWallet == receiverWallet) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, amount,
      receiverName, receiverWallet, reference, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayDataImplCopyWith<_$PayDataImpl> get copyWith =>
      __$$PayDataImplCopyWithImpl<_$PayDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayDataImplToJson(
      this,
    );
  }
}

abstract class _PayData implements PayData {
  const factory _PayData(
      {required final String transactionId,
      required final String amount,
      required final String receiverName,
      required final String receiverWallet,
      required final String reference,
      required final String status,
      required final String createdAt}) = _$PayDataImpl;

  factory _PayData.fromJson(Map<String, dynamic> json) = _$PayDataImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get amount;
  @override
  String get receiverName;
  @override
  String get receiverWallet;
  @override
  String get reference;
  @override
  String get status;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PayDataImplCopyWith<_$PayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
