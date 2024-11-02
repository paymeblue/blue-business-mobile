// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_electricity_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyElectricityRequest _$VerifyElectricityRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifyElectricityRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyElectricityRequest {
  String get receiver => throw _privateConstructorUsedError;
  String get meterType => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;

  /// Serializes this VerifyElectricityRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyElectricityRequestCopyWith<VerifyElectricityRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyElectricityRequestCopyWith<$Res> {
  factory $VerifyElectricityRequestCopyWith(VerifyElectricityRequest value,
          $Res Function(VerifyElectricityRequest) then) =
      _$VerifyElectricityRequestCopyWithImpl<$Res, VerifyElectricityRequest>;
  @useResult
  $Res call({String receiver, String meterType, String providerId});
}

/// @nodoc
class _$VerifyElectricityRequestCopyWithImpl<$Res,
        $Val extends VerifyElectricityRequest>
    implements $VerifyElectricityRequestCopyWith<$Res> {
  _$VerifyElectricityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? meterType = null,
    Object? providerId = null,
  }) {
    return _then(_value.copyWith(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      meterType: null == meterType
          ? _value.meterType
          : meterType // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyElectricityRequestImplCopyWith<$Res>
    implements $VerifyElectricityRequestCopyWith<$Res> {
  factory _$$VerifyElectricityRequestImplCopyWith(
          _$VerifyElectricityRequestImpl value,
          $Res Function(_$VerifyElectricityRequestImpl) then) =
      __$$VerifyElectricityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String receiver, String meterType, String providerId});
}

/// @nodoc
class __$$VerifyElectricityRequestImplCopyWithImpl<$Res>
    extends _$VerifyElectricityRequestCopyWithImpl<$Res,
        _$VerifyElectricityRequestImpl>
    implements _$$VerifyElectricityRequestImplCopyWith<$Res> {
  __$$VerifyElectricityRequestImplCopyWithImpl(
      _$VerifyElectricityRequestImpl _value,
      $Res Function(_$VerifyElectricityRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? meterType = null,
    Object? providerId = null,
  }) {
    return _then(_$VerifyElectricityRequestImpl(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      meterType: null == meterType
          ? _value.meterType
          : meterType // ignore: cast_nullable_to_non_nullable
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
class _$VerifyElectricityRequestImpl implements _VerifyElectricityRequest {
  const _$VerifyElectricityRequestImpl(
      {required this.receiver,
      required this.meterType,
      required this.providerId});

  factory _$VerifyElectricityRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyElectricityRequestImplFromJson(json);

  @override
  final String receiver;
  @override
  final String meterType;
  @override
  final String providerId;

  @override
  String toString() {
    return 'VerifyElectricityRequest(receiver: $receiver, meterType: $meterType, providerId: $providerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyElectricityRequestImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.meterType, meterType) ||
                other.meterType == meterType) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, receiver, meterType, providerId);

  /// Create a copy of VerifyElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyElectricityRequestImplCopyWith<_$VerifyElectricityRequestImpl>
      get copyWith => __$$VerifyElectricityRequestImplCopyWithImpl<
          _$VerifyElectricityRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyElectricityRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyElectricityRequest implements VerifyElectricityRequest {
  const factory _VerifyElectricityRequest(
      {required final String receiver,
      required final String meterType,
      required final String providerId}) = _$VerifyElectricityRequestImpl;

  factory _VerifyElectricityRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyElectricityRequestImpl.fromJson;

  @override
  String get receiver;
  @override
  String get meterType;
  @override
  String get providerId;

  /// Create a copy of VerifyElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyElectricityRequestImplCopyWith<_$VerifyElectricityRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
