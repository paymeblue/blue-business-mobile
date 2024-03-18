// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_pay_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PushPayData _$PushPayDataFromJson(Map<String, dynamic> json) {
  return _PushPayData.fromJson(json);
}

/// @nodoc
mixin _$PushPayData {
  int get id => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get receiverWallet => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushPayDataCopyWith<PushPayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushPayDataCopyWith<$Res> {
  factory $PushPayDataCopyWith(
          PushPayData value, $Res Function(PushPayData) then) =
      _$PushPayDataCopyWithImpl<$Res, PushPayData>;
  @useResult
  $Res call(
      {int id,
      String amount,
      String receiverName,
      String receiverWallet,
      String reference,
      String status,
      String createdAt});
}

/// @nodoc
class _$PushPayDataCopyWithImpl<$Res, $Val extends PushPayData>
    implements $PushPayDataCopyWith<$Res> {
  _$PushPayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? receiverName = null,
    Object? receiverWallet = null,
    Object? reference = null,
    Object? status = null,
    Object? createdAt = null,
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
abstract class _$$PushPayDataImplCopyWith<$Res>
    implements $PushPayDataCopyWith<$Res> {
  factory _$$PushPayDataImplCopyWith(
          _$PushPayDataImpl value, $Res Function(_$PushPayDataImpl) then) =
      __$$PushPayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String amount,
      String receiverName,
      String receiverWallet,
      String reference,
      String status,
      String createdAt});
}

/// @nodoc
class __$$PushPayDataImplCopyWithImpl<$Res>
    extends _$PushPayDataCopyWithImpl<$Res, _$PushPayDataImpl>
    implements _$$PushPayDataImplCopyWith<$Res> {
  __$$PushPayDataImplCopyWithImpl(
      _$PushPayDataImpl _value, $Res Function(_$PushPayDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? receiverName = null,
    Object? receiverWallet = null,
    Object? reference = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$PushPayDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$PushPayDataImpl implements _PushPayData {
  const _$PushPayDataImpl(
      {required this.id,
      required this.amount,
      required this.receiverName,
      required this.receiverWallet,
      required this.reference,
      required this.status,
      required this.createdAt});

  factory _$PushPayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushPayDataImplFromJson(json);

  @override
  final int id;
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
    return 'PushPayData(id: $id, amount: $amount, receiverName: $receiverName, receiverWallet: $receiverWallet, reference: $reference, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushPayDataImpl &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, amount, receiverName,
      receiverWallet, reference, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushPayDataImplCopyWith<_$PushPayDataImpl> get copyWith =>
      __$$PushPayDataImplCopyWithImpl<_$PushPayDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushPayDataImplToJson(
      this,
    );
  }
}

abstract class _PushPayData implements PushPayData {
  const factory _PushPayData(
      {required final int id,
      required final String amount,
      required final String receiverName,
      required final String receiverWallet,
      required final String reference,
      required final String status,
      required final String createdAt}) = _$PushPayDataImpl;

  factory _PushPayData.fromJson(Map<String, dynamic> json) =
      _$PushPayDataImpl.fromJson;

  @override
  int get id;
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
  _$$PushPayDataImplCopyWith<_$PushPayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
