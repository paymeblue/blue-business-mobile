// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'airtime_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirtimeDetails _$AirtimeDetailsFromJson(Map<String, dynamic> json) {
  return _AirtimeDetails.fromJson(json);
}

/// @nodoc
mixin _$AirtimeDetails {
  int get id => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this AirtimeDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AirtimeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirtimeDetailsCopyWith<AirtimeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirtimeDetailsCopyWith<$Res> {
  factory $AirtimeDetailsCopyWith(
          AirtimeDetails value, $Res Function(AirtimeDetails) then) =
      _$AirtimeDetailsCopyWithImpl<$Res, AirtimeDetails>;
  @useResult
  $Res call(
      {int id,
      String amount,
      String receiver,
      String transactionId,
      String provider,
      String createdAt,
      String service,
      String status});
}

/// @nodoc
class _$AirtimeDetailsCopyWithImpl<$Res, $Val extends AirtimeDetails>
    implements $AirtimeDetailsCopyWith<$Res> {
  _$AirtimeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirtimeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? receiver = null,
    Object? transactionId = null,
    Object? provider = null,
    Object? createdAt = null,
    Object? service = null,
    Object? status = null,
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
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirtimeDetailsImplCopyWith<$Res>
    implements $AirtimeDetailsCopyWith<$Res> {
  factory _$$AirtimeDetailsImplCopyWith(_$AirtimeDetailsImpl value,
          $Res Function(_$AirtimeDetailsImpl) then) =
      __$$AirtimeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String amount,
      String receiver,
      String transactionId,
      String provider,
      String createdAt,
      String service,
      String status});
}

/// @nodoc
class __$$AirtimeDetailsImplCopyWithImpl<$Res>
    extends _$AirtimeDetailsCopyWithImpl<$Res, _$AirtimeDetailsImpl>
    implements _$$AirtimeDetailsImplCopyWith<$Res> {
  __$$AirtimeDetailsImplCopyWithImpl(
      _$AirtimeDetailsImpl _value, $Res Function(_$AirtimeDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AirtimeDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? receiver = null,
    Object? transactionId = null,
    Object? provider = null,
    Object? createdAt = null,
    Object? service = null,
    Object? status = null,
  }) {
    return _then(_$AirtimeDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
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
class _$AirtimeDetailsImpl implements _AirtimeDetails {
  const _$AirtimeDetailsImpl(
      {required this.id,
      required this.amount,
      required this.receiver,
      required this.transactionId,
      required this.provider,
      required this.createdAt,
      this.service = "airtime",
      this.status = "successful"});

  factory _$AirtimeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirtimeDetailsImplFromJson(json);

  @override
  final int id;
  @override
  final String amount;
  @override
  final String receiver;
  @override
  final String transactionId;
  @override
  final String provider;
  @override
  final String createdAt;
  @override
  @JsonKey()
  final String service;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'AirtimeDetails(id: $id, amount: $amount, receiver: $receiver, transactionId: $transactionId, provider: $provider, createdAt: $createdAt, service: $service, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirtimeDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount, receiver,
      transactionId, provider, createdAt, service, status);

  /// Create a copy of AirtimeDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirtimeDetailsImplCopyWith<_$AirtimeDetailsImpl> get copyWith =>
      __$$AirtimeDetailsImplCopyWithImpl<_$AirtimeDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirtimeDetailsImplToJson(
      this,
    );
  }
}

abstract class _AirtimeDetails implements AirtimeDetails {
  const factory _AirtimeDetails(
      {required final int id,
      required final String amount,
      required final String receiver,
      required final String transactionId,
      required final String provider,
      required final String createdAt,
      final String service,
      final String status}) = _$AirtimeDetailsImpl;

  factory _AirtimeDetails.fromJson(Map<String, dynamic> json) =
      _$AirtimeDetailsImpl.fromJson;

  @override
  int get id;
  @override
  String get amount;
  @override
  String get receiver;
  @override
  String get transactionId;
  @override
  String get provider;
  @override
  String get createdAt;
  @override
  String get service;
  @override
  String get status;

  /// Create a copy of AirtimeDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirtimeDetailsImplCopyWith<_$AirtimeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
