// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePinResponse _$ChangePinResponseFromJson(Map<String, dynamic> json) {
  return _ChangePinResponse.fromJson(json);
}

/// @nodoc
mixin _$ChangePinResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePinResponseCopyWith<ChangePinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePinResponseCopyWith<$Res> {
  factory $ChangePinResponseCopyWith(
          ChangePinResponse value, $Res Function(ChangePinResponse) then) =
      _$ChangePinResponseCopyWithImpl<$Res, ChangePinResponse>;
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class _$ChangePinResponseCopyWithImpl<$Res, $Val extends ChangePinResponse>
    implements $ChangePinResponseCopyWith<$Res> {
  _$ChangePinResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePinResponseImplCopyWith<$Res>
    implements $ChangePinResponseCopyWith<$Res> {
  factory _$$ChangePinResponseImplCopyWith(_$ChangePinResponseImpl value,
          $Res Function(_$ChangePinResponseImpl) then) =
      __$$ChangePinResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class __$$ChangePinResponseImplCopyWithImpl<$Res>
    extends _$ChangePinResponseCopyWithImpl<$Res, _$ChangePinResponseImpl>
    implements _$$ChangePinResponseImplCopyWith<$Res> {
  __$$ChangePinResponseImplCopyWithImpl(_$ChangePinResponseImpl _value,
      $Res Function(_$ChangePinResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_$ChangePinResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePinResponseImpl implements _ChangePinResponse {
  const _$ChangePinResponseImpl({this.success = false, this.message});

  factory _$ChangePinResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePinResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;

  @override
  String toString() {
    return 'ChangePinResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePinResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePinResponseImplCopyWith<_$ChangePinResponseImpl> get copyWith =>
      __$$ChangePinResponseImplCopyWithImpl<_$ChangePinResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePinResponseImplToJson(
      this,
    );
  }
}

abstract class _ChangePinResponse implements ChangePinResponse {
  const factory _ChangePinResponse(
      {final bool success, final String? message}) = _$ChangePinResponseImpl;

  factory _ChangePinResponse.fromJson(Map<String, dynamic> json) =
      _$ChangePinResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ChangePinResponseImplCopyWith<_$ChangePinResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
