// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PushPayment _$PushPaymentFromJson(Map<String, dynamic> json) {
  return _PushPayment.fromJson(json);
}

/// @nodoc
mixin _$PushPayment {
  String get businessName => throw _privateConstructorUsedError;
  String get lga => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushPaymentCopyWith<PushPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushPaymentCopyWith<$Res> {
  factory $PushPaymentCopyWith(
          PushPayment value, $Res Function(PushPayment) then) =
      _$PushPaymentCopyWithImpl<$Res, PushPayment>;
  @useResult
  $Res call(
      {String businessName,
      String lga,
      String amount,
      String transactionId,
      String dueDate,
      String createdAt});
}

/// @nodoc
class _$PushPaymentCopyWithImpl<$Res, $Val extends PushPayment>
    implements $PushPaymentCopyWith<$Res> {
  _$PushPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = null,
    Object? lga = null,
    Object? amount = null,
    Object? transactionId = null,
    Object? dueDate = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushPaymentImplCopyWith<$Res>
    implements $PushPaymentCopyWith<$Res> {
  factory _$$PushPaymentImplCopyWith(
          _$PushPaymentImpl value, $Res Function(_$PushPaymentImpl) then) =
      __$$PushPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String businessName,
      String lga,
      String amount,
      String transactionId,
      String dueDate,
      String createdAt});
}

/// @nodoc
class __$$PushPaymentImplCopyWithImpl<$Res>
    extends _$PushPaymentCopyWithImpl<$Res, _$PushPaymentImpl>
    implements _$$PushPaymentImplCopyWith<$Res> {
  __$$PushPaymentImplCopyWithImpl(
      _$PushPaymentImpl _value, $Res Function(_$PushPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businessName = null,
    Object? lga = null,
    Object? amount = null,
    Object? transactionId = null,
    Object? dueDate = null,
    Object? createdAt = null,
  }) {
    return _then(_$PushPaymentImpl(
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
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
class _$PushPaymentImpl implements _PushPayment {
  const _$PushPaymentImpl(
      {required this.businessName,
      required this.lga,
      required this.amount,
      required this.transactionId,
      required this.dueDate,
      required this.createdAt});

  factory _$PushPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushPaymentImplFromJson(json);

  @override
  final String businessName;
  @override
  final String lga;
  @override
  final String amount;
  @override
  final String transactionId;
  @override
  final String dueDate;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'PushPayment(businessName: $businessName, lga: $lga, amount: $amount, transactionId: $transactionId, dueDate: $dueDate, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushPaymentImpl &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.lga, lga) || other.lga == lga) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, businessName, lga, amount,
      transactionId, dueDate, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushPaymentImplCopyWith<_$PushPaymentImpl> get copyWith =>
      __$$PushPaymentImplCopyWithImpl<_$PushPaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushPaymentImplToJson(
      this,
    );
  }
}

abstract class _PushPayment implements PushPayment {
  const factory _PushPayment(
      {required final String businessName,
      required final String lga,
      required final String amount,
      required final String transactionId,
      required final String dueDate,
      required final String createdAt}) = _$PushPaymentImpl;

  factory _PushPayment.fromJson(Map<String, dynamic> json) =
      _$PushPaymentImpl.fromJson;

  @override
  String get businessName;
  @override
  String get lga;
  @override
  String get amount;
  @override
  String get transactionId;
  @override
  String get dueDate;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PushPaymentImplCopyWith<_$PushPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
