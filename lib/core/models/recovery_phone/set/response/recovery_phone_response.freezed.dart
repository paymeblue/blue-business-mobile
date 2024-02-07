// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_phone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetRecoveryPhoneResponse _$SetRecoveryPhoneResponseFromJson(
    Map<String, dynamic> json) {
  return _SetRecoveryPhoneResponse.fromJson(json);
}

/// @nodoc
mixin _$SetRecoveryPhoneResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetRecoveryPhoneResponseCopyWith<SetRecoveryPhoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetRecoveryPhoneResponseCopyWith<$Res> {
  factory $SetRecoveryPhoneResponseCopyWith(SetRecoveryPhoneResponse value,
          $Res Function(SetRecoveryPhoneResponse) then) =
      _$SetRecoveryPhoneResponseCopyWithImpl<$Res, SetRecoveryPhoneResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$SetRecoveryPhoneResponseCopyWithImpl<$Res,
        $Val extends SetRecoveryPhoneResponse>
    implements $SetRecoveryPhoneResponseCopyWith<$Res> {
  _$SetRecoveryPhoneResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SetRecoveryPhoneResponseImplCopyWith<$Res>
    implements $SetRecoveryPhoneResponseCopyWith<$Res> {
  factory _$$SetRecoveryPhoneResponseImplCopyWith(
          _$SetRecoveryPhoneResponseImpl value,
          $Res Function(_$SetRecoveryPhoneResponseImpl) then) =
      __$$SetRecoveryPhoneResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SetRecoveryPhoneResponseImplCopyWithImpl<$Res>
    extends _$SetRecoveryPhoneResponseCopyWithImpl<$Res,
        _$SetRecoveryPhoneResponseImpl>
    implements _$$SetRecoveryPhoneResponseImplCopyWith<$Res> {
  __$$SetRecoveryPhoneResponseImplCopyWithImpl(
      _$SetRecoveryPhoneResponseImpl _value,
      $Res Function(_$SetRecoveryPhoneResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$SetRecoveryPhoneResponseImpl(
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
class _$SetRecoveryPhoneResponseImpl implements _SetRecoveryPhoneResponse {
  const _$SetRecoveryPhoneResponseImpl({this.status = "fail", this.message});

  factory _$SetRecoveryPhoneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetRecoveryPhoneResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SetRecoveryPhoneResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRecoveryPhoneResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRecoveryPhoneResponseImplCopyWith<_$SetRecoveryPhoneResponseImpl>
      get copyWith => __$$SetRecoveryPhoneResponseImplCopyWithImpl<
          _$SetRecoveryPhoneResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetRecoveryPhoneResponseImplToJson(
      this,
    );
  }
}

abstract class _SetRecoveryPhoneResponse implements SetRecoveryPhoneResponse {
  const factory _SetRecoveryPhoneResponse(
      {final String status,
      final String? message}) = _$SetRecoveryPhoneResponseImpl;

  factory _SetRecoveryPhoneResponse.fromJson(Map<String, dynamic> json) =
      _$SetRecoveryPhoneResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SetRecoveryPhoneResponseImplCopyWith<_$SetRecoveryPhoneResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
