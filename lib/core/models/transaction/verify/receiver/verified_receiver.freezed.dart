// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_receiver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifiedReceiver _$VerifiedReceiverFromJson(Map<String, dynamic> json) {
  return _VerifiedReceiver.fromJson(json);
}

/// @nodoc
mixin _$VerifiedReceiver {
  int get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get walletCode => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  double get charge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifiedReceiverCopyWith<VerifiedReceiver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiedReceiverCopyWith<$Res> {
  factory $VerifiedReceiverCopyWith(
          VerifiedReceiver value, $Res Function(VerifiedReceiver) then) =
      _$VerifiedReceiverCopyWithImpl<$Res, VerifiedReceiver>;
  @useResult
  $Res call(
      {int id,
      int? userId,
      String? walletCode,
      String receiverName,
      String phone,
      String amount,
      double charge});
}

/// @nodoc
class _$VerifiedReceiverCopyWithImpl<$Res, $Val extends VerifiedReceiver>
    implements $VerifiedReceiverCopyWith<$Res> {
  _$VerifiedReceiverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? walletCode = freezed,
    Object? receiverName = null,
    Object? phone = null,
    Object? amount = null,
    Object? charge = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      walletCode: freezed == walletCode
          ? _value.walletCode
          : walletCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifiedReceiverImplCopyWith<$Res>
    implements $VerifiedReceiverCopyWith<$Res> {
  factory _$$VerifiedReceiverImplCopyWith(_$VerifiedReceiverImpl value,
          $Res Function(_$VerifiedReceiverImpl) then) =
      __$$VerifiedReceiverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? userId,
      String? walletCode,
      String receiverName,
      String phone,
      String amount,
      double charge});
}

/// @nodoc
class __$$VerifiedReceiverImplCopyWithImpl<$Res>
    extends _$VerifiedReceiverCopyWithImpl<$Res, _$VerifiedReceiverImpl>
    implements _$$VerifiedReceiverImplCopyWith<$Res> {
  __$$VerifiedReceiverImplCopyWithImpl(_$VerifiedReceiverImpl _value,
      $Res Function(_$VerifiedReceiverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? walletCode = freezed,
    Object? receiverName = null,
    Object? phone = null,
    Object? amount = null,
    Object? charge = null,
  }) {
    return _then(_$VerifiedReceiverImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      walletCode: freezed == walletCode
          ? _value.walletCode
          : walletCode // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifiedReceiverImpl implements _VerifiedReceiver {
  const _$VerifiedReceiverImpl(
      {required this.id,
      this.userId,
      this.walletCode,
      required this.receiverName,
      required this.phone,
      required this.amount,
      required this.charge});

  factory _$VerifiedReceiverImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiedReceiverImplFromJson(json);

  @override
  final int id;
  @override
  final int? userId;
  @override
  final String? walletCode;
  @override
  final String receiverName;
  @override
  final String phone;
  @override
  final String amount;
  @override
  final double charge;

  @override
  String toString() {
    return 'VerifiedReceiver(id: $id, userId: $userId, walletCode: $walletCode, receiverName: $receiverName, phone: $phone, amount: $amount, charge: $charge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiedReceiverImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.walletCode, walletCode) ||
                other.walletCode == walletCode) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.charge, charge) || other.charge == charge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, walletCode, receiverName, phone, amount, charge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiedReceiverImplCopyWith<_$VerifiedReceiverImpl> get copyWith =>
      __$$VerifiedReceiverImplCopyWithImpl<_$VerifiedReceiverImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiedReceiverImplToJson(
      this,
    );
  }
}

abstract class _VerifiedReceiver implements VerifiedReceiver {
  const factory _VerifiedReceiver(
      {required final int id,
      final int? userId,
      final String? walletCode,
      required final String receiverName,
      required final String phone,
      required final String amount,
      required final double charge}) = _$VerifiedReceiverImpl;

  factory _VerifiedReceiver.fromJson(Map<String, dynamic> json) =
      _$VerifiedReceiverImpl.fromJson;

  @override
  int get id;
  @override
  int? get userId;
  @override
  String? get walletCode;
  @override
  String get receiverName;
  @override
  String get phone;
  @override
  String get amount;
  @override
  double get charge;
  @override
  @JsonKey(ignore: true)
  _$$VerifiedReceiverImplCopyWith<_$VerifiedReceiverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
