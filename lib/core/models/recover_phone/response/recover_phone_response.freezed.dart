// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_phone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendNewPhoneResponse _$SendNewPhoneResponseFromJson(Map<String, dynamic> json) {
  return _SendNewPhoneResponse.fromJson(json);
}

/// @nodoc
mixin _$SendNewPhoneResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendNewPhoneResponseCopyWith<SendNewPhoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNewPhoneResponseCopyWith<$Res> {
  factory $SendNewPhoneResponseCopyWith(SendNewPhoneResponse value,
          $Res Function(SendNewPhoneResponse) then) =
      _$SendNewPhoneResponseCopyWithImpl<$Res, SendNewPhoneResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$SendNewPhoneResponseCopyWithImpl<$Res,
        $Val extends SendNewPhoneResponse>
    implements $SendNewPhoneResponseCopyWith<$Res> {
  _$SendNewPhoneResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SendNewPhoneResponseImplCopyWith<$Res>
    implements $SendNewPhoneResponseCopyWith<$Res> {
  factory _$$SendNewPhoneResponseImplCopyWith(_$SendNewPhoneResponseImpl value,
          $Res Function(_$SendNewPhoneResponseImpl) then) =
      __$$SendNewPhoneResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SendNewPhoneResponseImplCopyWithImpl<$Res>
    extends _$SendNewPhoneResponseCopyWithImpl<$Res, _$SendNewPhoneResponseImpl>
    implements _$$SendNewPhoneResponseImplCopyWith<$Res> {
  __$$SendNewPhoneResponseImplCopyWithImpl(_$SendNewPhoneResponseImpl _value,
      $Res Function(_$SendNewPhoneResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$SendNewPhoneResponseImpl(
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
class _$SendNewPhoneResponseImpl implements _SendNewPhoneResponse {
  const _$SendNewPhoneResponseImpl({this.status = "fail", this.message});

  factory _$SendNewPhoneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendNewPhoneResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SendNewPhoneResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNewPhoneResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNewPhoneResponseImplCopyWith<_$SendNewPhoneResponseImpl>
      get copyWith =>
          __$$SendNewPhoneResponseImplCopyWithImpl<_$SendNewPhoneResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendNewPhoneResponseImplToJson(
      this,
    );
  }
}

abstract class _SendNewPhoneResponse implements SendNewPhoneResponse {
  const factory _SendNewPhoneResponse(
      {final String status,
      final String? message}) = _$SendNewPhoneResponseImpl;

  factory _SendNewPhoneResponse.fromJson(Map<String, dynamic> json) =
      _$SendNewPhoneResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SendNewPhoneResponseImplCopyWith<_$SendNewPhoneResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
