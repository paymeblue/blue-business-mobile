// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_question_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendQuestionResponse _$SendQuestionResponseFromJson(Map<String, dynamic> json) {
  return _SendQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$SendQuestionResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendQuestionResponseCopyWith<SendQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendQuestionResponseCopyWith<$Res> {
  factory $SendQuestionResponseCopyWith(SendQuestionResponse value,
          $Res Function(SendQuestionResponse) then) =
      _$SendQuestionResponseCopyWithImpl<$Res, SendQuestionResponse>;
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class _$SendQuestionResponseCopyWithImpl<$Res,
        $Val extends SendQuestionResponse>
    implements $SendQuestionResponseCopyWith<$Res> {
  _$SendQuestionResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SendQuestionResponseImplCopyWith<$Res>
    implements $SendQuestionResponseCopyWith<$Res> {
  factory _$$SendQuestionResponseImplCopyWith(_$SendQuestionResponseImpl value,
          $Res Function(_$SendQuestionResponseImpl) then) =
      __$$SendQuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class __$$SendQuestionResponseImplCopyWithImpl<$Res>
    extends _$SendQuestionResponseCopyWithImpl<$Res, _$SendQuestionResponseImpl>
    implements _$$SendQuestionResponseImplCopyWith<$Res> {
  __$$SendQuestionResponseImplCopyWithImpl(_$SendQuestionResponseImpl _value,
      $Res Function(_$SendQuestionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_$SendQuestionResponseImpl(
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
class _$SendQuestionResponseImpl implements _SendQuestionResponse {
  const _$SendQuestionResponseImpl({this.success = false, this.message});

  factory _$SendQuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendQuestionResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;

  @override
  String toString() {
    return 'SendQuestionResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendQuestionResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendQuestionResponseImplCopyWith<_$SendQuestionResponseImpl>
      get copyWith =>
          __$$SendQuestionResponseImplCopyWithImpl<_$SendQuestionResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendQuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _SendQuestionResponse implements SendQuestionResponse {
  const factory _SendQuestionResponse(
      {final bool success, final String? message}) = _$SendQuestionResponseImpl;

  factory _SendQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$SendQuestionResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SendQuestionResponseImplCopyWith<_$SendQuestionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
