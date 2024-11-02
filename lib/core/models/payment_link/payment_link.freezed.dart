// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentLinkItem _$PaymentLinkItemFromJson(Map<String, dynamic> json) {
  return _PaymentLinkItem.fromJson(json);
}

/// @nodoc
mixin _$PaymentLinkItem {
  int get id => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get originalUrl => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentLinkItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentLinkItemCopyWith<PaymentLinkItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentLinkItemCopyWith<$Res> {
  factory $PaymentLinkItemCopyWith(
          PaymentLinkItem value, $Res Function(PaymentLinkItem) then) =
      _$PaymentLinkItemCopyWithImpl<$Res, PaymentLinkItem>;
  @useResult
  $Res call(
      {int id,
      String transactionId,
      String amount,
      String phone,
      String receiverName,
      String status,
      String originalUrl,
      String createdAt});
}

/// @nodoc
class _$PaymentLinkItemCopyWithImpl<$Res, $Val extends PaymentLinkItem>
    implements $PaymentLinkItemCopyWith<$Res> {
  _$PaymentLinkItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? phone = null,
    Object? receiverName = null,
    Object? status = null,
    Object? originalUrl = null,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      originalUrl: null == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentLinkItemImplCopyWith<$Res>
    implements $PaymentLinkItemCopyWith<$Res> {
  factory _$$PaymentLinkItemImplCopyWith(_$PaymentLinkItemImpl value,
          $Res Function(_$PaymentLinkItemImpl) then) =
      __$$PaymentLinkItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String transactionId,
      String amount,
      String phone,
      String receiverName,
      String status,
      String originalUrl,
      String createdAt});
}

/// @nodoc
class __$$PaymentLinkItemImplCopyWithImpl<$Res>
    extends _$PaymentLinkItemCopyWithImpl<$Res, _$PaymentLinkItemImpl>
    implements _$$PaymentLinkItemImplCopyWith<$Res> {
  __$$PaymentLinkItemImplCopyWithImpl(
      _$PaymentLinkItemImpl _value, $Res Function(_$PaymentLinkItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? amount = null,
    Object? phone = null,
    Object? receiverName = null,
    Object? status = null,
    Object? originalUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_$PaymentLinkItemImpl(
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      originalUrl: null == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
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
class _$PaymentLinkItemImpl implements _PaymentLinkItem {
  const _$PaymentLinkItemImpl(
      {required this.id,
      required this.transactionId,
      required this.amount,
      required this.phone,
      required this.receiverName,
      required this.status,
      required this.originalUrl,
      required this.createdAt});

  factory _$PaymentLinkItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentLinkItemImplFromJson(json);

  @override
  final int id;
  @override
  final String transactionId;
  @override
  final String amount;
  @override
  final String phone;
  @override
  final String receiverName;
  @override
  final String status;
  @override
  final String originalUrl;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'PaymentLinkItem(id: $id, transactionId: $transactionId, amount: $amount, phone: $phone, receiverName: $receiverName, status: $status, originalUrl: $originalUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLinkItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, transactionId, amount, phone,
      receiverName, status, originalUrl, createdAt);

  /// Create a copy of PaymentLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLinkItemImplCopyWith<_$PaymentLinkItemImpl> get copyWith =>
      __$$PaymentLinkItemImplCopyWithImpl<_$PaymentLinkItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentLinkItemImplToJson(
      this,
    );
  }
}

abstract class _PaymentLinkItem implements PaymentLinkItem {
  const factory _PaymentLinkItem(
      {required final int id,
      required final String transactionId,
      required final String amount,
      required final String phone,
      required final String receiverName,
      required final String status,
      required final String originalUrl,
      required final String createdAt}) = _$PaymentLinkItemImpl;

  factory _PaymentLinkItem.fromJson(Map<String, dynamic> json) =
      _$PaymentLinkItemImpl.fromJson;

  @override
  int get id;
  @override
  String get transactionId;
  @override
  String get amount;
  @override
  String get phone;
  @override
  String get receiverName;
  @override
  String get status;
  @override
  String get originalUrl;
  @override
  String get createdAt;

  /// Create a copy of PaymentLinkItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentLinkItemImplCopyWith<_$PaymentLinkItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
