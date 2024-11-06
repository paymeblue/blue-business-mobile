// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_new_phone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyNewPhoneResponse _$VerifyNewPhoneResponseFromJson(
    Map<String, dynamic> json) {
  return _VerifyNewPhoneResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyNewPhoneResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this VerifyNewPhoneResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyNewPhoneResponseCopyWith<VerifyNewPhoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyNewPhoneResponseCopyWith<$Res> {
  factory $VerifyNewPhoneResponseCopyWith(VerifyNewPhoneResponse value,
          $Res Function(VerifyNewPhoneResponse) then) =
      _$VerifyNewPhoneResponseCopyWithImpl<$Res, VerifyNewPhoneResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$VerifyNewPhoneResponseCopyWithImpl<$Res,
        $Val extends VerifyNewPhoneResponse>
    implements $VerifyNewPhoneResponseCopyWith<$Res> {
  _$VerifyNewPhoneResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$VerifyNewPhoneResponseImplCopyWith<$Res>
    implements $VerifyNewPhoneResponseCopyWith<$Res> {
  factory _$$VerifyNewPhoneResponseImplCopyWith(
          _$VerifyNewPhoneResponseImpl value,
          $Res Function(_$VerifyNewPhoneResponseImpl) then) =
      __$$VerifyNewPhoneResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$VerifyNewPhoneResponseImplCopyWithImpl<$Res>
    extends _$VerifyNewPhoneResponseCopyWithImpl<$Res,
        _$VerifyNewPhoneResponseImpl>
    implements _$$VerifyNewPhoneResponseImplCopyWith<$Res> {
  __$$VerifyNewPhoneResponseImplCopyWithImpl(
      _$VerifyNewPhoneResponseImpl _value,
      $Res Function(_$VerifyNewPhoneResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$VerifyNewPhoneResponseImpl(
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
class _$VerifyNewPhoneResponseImpl implements _VerifyNewPhoneResponse {
  const _$VerifyNewPhoneResponseImpl({this.status = "fail", this.message});

  factory _$VerifyNewPhoneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyNewPhoneResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyNewPhoneResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyNewPhoneResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of VerifyNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyNewPhoneResponseImplCopyWith<_$VerifyNewPhoneResponseImpl>
      get copyWith => __$$VerifyNewPhoneResponseImplCopyWithImpl<
          _$VerifyNewPhoneResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyNewPhoneResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyNewPhoneResponse implements VerifyNewPhoneResponse {
  const factory _VerifyNewPhoneResponse(
      {final String status,
      final String? message}) = _$VerifyNewPhoneResponseImpl;

  factory _VerifyNewPhoneResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyNewPhoneResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;

  /// Create a copy of VerifyNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyNewPhoneResponseImplCopyWith<_$VerifyNewPhoneResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
