// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompleteRegistrationRequest _$CompleteRegistrationRequestFromJson(
    Map<String, dynamic> json) {
  return _CompleteRegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$CompleteRegistrationRequest {
  int get userId => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;

  /// Serializes this CompleteRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompleteRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompleteRegistrationRequestCopyWith<CompleteRegistrationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompleteRegistrationRequestCopyWith<$Res> {
  factory $CompleteRegistrationRequestCopyWith(
          CompleteRegistrationRequest value,
          $Res Function(CompleteRegistrationRequest) then) =
      _$CompleteRegistrationRequestCopyWithImpl<$Res,
          CompleteRegistrationRequest>;
  @useResult
  $Res call({int userId, String pin});
}

/// @nodoc
class _$CompleteRegistrationRequestCopyWithImpl<$Res,
        $Val extends CompleteRegistrationRequest>
    implements $CompleteRegistrationRequestCopyWith<$Res> {
  _$CompleteRegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompleteRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? pin = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompleteRegistrationRequestImplCopyWith<$Res>
    implements $CompleteRegistrationRequestCopyWith<$Res> {
  factory _$$CompleteRegistrationRequestImplCopyWith(
          _$CompleteRegistrationRequestImpl value,
          $Res Function(_$CompleteRegistrationRequestImpl) then) =
      __$$CompleteRegistrationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String pin});
}

/// @nodoc
class __$$CompleteRegistrationRequestImplCopyWithImpl<$Res>
    extends _$CompleteRegistrationRequestCopyWithImpl<$Res,
        _$CompleteRegistrationRequestImpl>
    implements _$$CompleteRegistrationRequestImplCopyWith<$Res> {
  __$$CompleteRegistrationRequestImplCopyWithImpl(
      _$CompleteRegistrationRequestImpl _value,
      $Res Function(_$CompleteRegistrationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompleteRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? pin = null,
  }) {
    return _then(_$CompleteRegistrationRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompleteRegistrationRequestImpl
    implements _CompleteRegistrationRequest {
  const _$CompleteRegistrationRequestImpl(
      {required this.userId, required this.pin});

  factory _$CompleteRegistrationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CompleteRegistrationRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final String pin;

  @override
  String toString() {
    return 'CompleteRegistrationRequest(userId: $userId, pin: $pin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.pin, pin) || other.pin == pin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, pin);

  /// Create a copy of CompleteRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationRequestImplCopyWith<_$CompleteRegistrationRequestImpl>
      get copyWith => __$$CompleteRegistrationRequestImplCopyWithImpl<
          _$CompleteRegistrationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompleteRegistrationRequestImplToJson(
      this,
    );
  }
}

abstract class _CompleteRegistrationRequest
    implements CompleteRegistrationRequest {
  const factory _CompleteRegistrationRequest(
      {required final int userId,
      required final String pin}) = _$CompleteRegistrationRequestImpl;

  factory _CompleteRegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$CompleteRegistrationRequestImpl.fromJson;

  @override
  int get userId;
  @override
  String get pin;

  /// Create a copy of CompleteRegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteRegistrationRequestImplCopyWith<_$CompleteRegistrationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
