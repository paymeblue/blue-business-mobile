// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataDetails _$DataDetailsFromJson(Map<String, dynamic> json) {
  return _DataDetails.fromJson(json);
}

/// @nodoc
mixin _$DataDetails {
  int get id => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get receiver => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get package => throw _privateConstructorUsedError;
  String get paymentMode => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get service => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDetailsCopyWith<DataDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDetailsCopyWith<$Res> {
  factory $DataDetailsCopyWith(
          DataDetails value, $Res Function(DataDetails) then) =
      _$DataDetailsCopyWithImpl<$Res, DataDetails>;
  @useResult
  $Res call(
      {int id,
      String amount,
      String receiver,
      String transactionId,
      String provider,
      String package,
      String paymentMode,
      String createdAt,
      String service,
      String status});
}

/// @nodoc
class _$DataDetailsCopyWithImpl<$Res, $Val extends DataDetails>
    implements $DataDetailsCopyWith<$Res> {
  _$DataDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? receiver = null,
    Object? transactionId = null,
    Object? provider = null,
    Object? package = null,
    Object? paymentMode = null,
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
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DataDetailsImplCopyWith<$Res>
    implements $DataDetailsCopyWith<$Res> {
  factory _$$DataDetailsImplCopyWith(
          _$DataDetailsImpl value, $Res Function(_$DataDetailsImpl) then) =
      __$$DataDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String amount,
      String receiver,
      String transactionId,
      String provider,
      String package,
      String paymentMode,
      String createdAt,
      String service,
      String status});
}

/// @nodoc
class __$$DataDetailsImplCopyWithImpl<$Res>
    extends _$DataDetailsCopyWithImpl<$Res, _$DataDetailsImpl>
    implements _$$DataDetailsImplCopyWith<$Res> {
  __$$DataDetailsImplCopyWithImpl(
      _$DataDetailsImpl _value, $Res Function(_$DataDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? receiver = null,
    Object? transactionId = null,
    Object? provider = null,
    Object? package = null,
    Object? paymentMode = null,
    Object? createdAt = null,
    Object? service = null,
    Object? status = null,
  }) {
    return _then(_$DataDetailsImpl(
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
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
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
class _$DataDetailsImpl implements _DataDetails {
  const _$DataDetailsImpl(
      {required this.id,
      required this.amount,
      required this.receiver,
      required this.transactionId,
      required this.provider,
      required this.package,
      required this.paymentMode,
      required this.createdAt,
      this.service = "data",
      this.status = "successful"});

  factory _$DataDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDetailsImplFromJson(json);

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
  final String package;
  @override
  final String paymentMode;
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
    return 'DataDetails(id: $id, amount: $amount, receiver: $receiver, transactionId: $transactionId, provider: $provider, package: $package, paymentMode: $paymentMode, createdAt: $createdAt, service: $service, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      amount,
      receiver,
      transactionId,
      provider,
      package,
      paymentMode,
      createdAt,
      service,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDetailsImplCopyWith<_$DataDetailsImpl> get copyWith =>
      __$$DataDetailsImplCopyWithImpl<_$DataDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDetailsImplToJson(
      this,
    );
  }
}

abstract class _DataDetails implements DataDetails {
  const factory _DataDetails(
      {required final int id,
      required final String amount,
      required final String receiver,
      required final String transactionId,
      required final String provider,
      required final String package,
      required final String paymentMode,
      required final String createdAt,
      final String service,
      final String status}) = _$DataDetailsImpl;

  factory _DataDetails.fromJson(Map<String, dynamic> json) =
      _$DataDetailsImpl.fromJson;

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
  String get package;
  @override
  String get paymentMode;
  @override
  String get createdAt;
  @override
  String get service;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$DataDetailsImplCopyWith<_$DataDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
