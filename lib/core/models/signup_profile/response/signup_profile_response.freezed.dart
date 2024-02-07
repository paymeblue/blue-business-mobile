// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupProfileResponse _$SignupProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _SignupProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$SignupProfileResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupProfileResponseCopyWith<SignupProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupProfileResponseCopyWith<$Res> {
  factory $SignupProfileResponseCopyWith(SignupProfileResponse value,
          $Res Function(SignupProfileResponse) then) =
      _$SignupProfileResponseCopyWithImpl<$Res, SignupProfileResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$SignupProfileResponseCopyWithImpl<$Res,
        $Val extends SignupProfileResponse>
    implements $SignupProfileResponseCopyWith<$Res> {
  _$SignupProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupProfileResponseImplCopyWith<$Res>
    implements $SignupProfileResponseCopyWith<$Res> {
  factory _$$SignupProfileResponseImplCopyWith(
          _$SignupProfileResponseImpl value,
          $Res Function(_$SignupProfileResponseImpl) then) =
      __$$SignupProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SignupProfileResponseImplCopyWithImpl<$Res>
    extends _$SignupProfileResponseCopyWithImpl<$Res,
        _$SignupProfileResponseImpl>
    implements _$$SignupProfileResponseImplCopyWith<$Res> {
  __$$SignupProfileResponseImplCopyWithImpl(_$SignupProfileResponseImpl _value,
      $Res Function(_$SignupProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$SignupProfileResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupProfileResponseImpl implements _SignupProfileResponse {
  const _$SignupProfileResponseImpl({this.status = "fail", this.message});

  factory _$SignupProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupProfileResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SignupProfileResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupProfileResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupProfileResponseImplCopyWith<_$SignupProfileResponseImpl>
      get copyWith => __$$SignupProfileResponseImplCopyWithImpl<
          _$SignupProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _SignupProfileResponse implements SignupProfileResponse {
  const factory _SignupProfileResponse(
      {final String status,
      final String? message}) = _$SignupProfileResponseImpl;

  factory _SignupProfileResponse.fromJson(Map<String, dynamic> json) =
      _$SignupProfileResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SignupProfileResponseImplCopyWith<_$SignupProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
