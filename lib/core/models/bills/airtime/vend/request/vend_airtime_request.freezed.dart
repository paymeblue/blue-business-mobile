// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_airtime_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendAirtimeRequest _$VendAirtimeRequestFromJson(Map<String, dynamic> json) {
  return _VendAirtimeRequest.fromJson(json);
}

/// @nodoc
mixin _$VendAirtimeRequest {
  String get receiver => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;

  /// Serializes this VendAirtimeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendAirtimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendAirtimeRequestCopyWith<VendAirtimeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendAirtimeRequestCopyWith<$Res> {
  factory $VendAirtimeRequestCopyWith(
          VendAirtimeRequest value, $Res Function(VendAirtimeRequest) then) =
      _$VendAirtimeRequestCopyWithImpl<$Res, VendAirtimeRequest>;
  @useResult
  $Res call(
      {String receiver, String passcode, String amount, String providerId});
}

/// @nodoc
class _$VendAirtimeRequestCopyWithImpl<$Res, $Val extends VendAirtimeRequest>
    implements $VendAirtimeRequestCopyWith<$Res> {
  _$VendAirtimeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendAirtimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? passcode = null,
    Object? amount = null,
    Object? providerId = null,
  }) {
    return _then(_value.copyWith(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendAirtimeRequestImplCopyWith<$Res>
    implements $VendAirtimeRequestCopyWith<$Res> {
  factory _$$VendAirtimeRequestImplCopyWith(_$VendAirtimeRequestImpl value,
          $Res Function(_$VendAirtimeRequestImpl) then) =
      __$$VendAirtimeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String receiver, String passcode, String amount, String providerId});
}

/// @nodoc
class __$$VendAirtimeRequestImplCopyWithImpl<$Res>
    extends _$VendAirtimeRequestCopyWithImpl<$Res, _$VendAirtimeRequestImpl>
    implements _$$VendAirtimeRequestImplCopyWith<$Res> {
  __$$VendAirtimeRequestImplCopyWithImpl(_$VendAirtimeRequestImpl _value,
      $Res Function(_$VendAirtimeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendAirtimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? passcode = null,
    Object? amount = null,
    Object? providerId = null,
  }) {
    return _then(_$VendAirtimeRequestImpl(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendAirtimeRequestImpl implements _VendAirtimeRequest {
  const _$VendAirtimeRequestImpl(
      {required this.receiver,
      required this.passcode,
      required this.amount,
      required this.providerId});

  factory _$VendAirtimeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendAirtimeRequestImplFromJson(json);

  @override
  final String receiver;
  @override
  final String passcode;
  @override
  final String amount;
  @override
  final String providerId;

  @override
  String toString() {
    return 'VendAirtimeRequest(receiver: $receiver, passcode: $passcode, amount: $amount, providerId: $providerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendAirtimeRequestImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, receiver, passcode, amount, providerId);

  /// Create a copy of VendAirtimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendAirtimeRequestImplCopyWith<_$VendAirtimeRequestImpl> get copyWith =>
      __$$VendAirtimeRequestImplCopyWithImpl<_$VendAirtimeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendAirtimeRequestImplToJson(
      this,
    );
  }
}

abstract class _VendAirtimeRequest implements VendAirtimeRequest {
  const factory _VendAirtimeRequest(
      {required final String receiver,
      required final String passcode,
      required final String amount,
      required final String providerId}) = _$VendAirtimeRequestImpl;

  factory _VendAirtimeRequest.fromJson(Map<String, dynamic> json) =
      _$VendAirtimeRequestImpl.fromJson;

  @override
  String get receiver;
  @override
  String get passcode;
  @override
  String get amount;
  @override
  String get providerId;

  /// Create a copy of VendAirtimeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendAirtimeRequestImplCopyWith<_$VendAirtimeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
