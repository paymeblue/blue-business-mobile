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
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this SendQuestionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendQuestionResponseCopyWith<SendQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendQuestionResponseCopyWith<$Res> {
  factory $SendQuestionResponseCopyWith(SendQuestionResponse value,
          $Res Function(SendQuestionResponse) then) =
      _$SendQuestionResponseCopyWithImpl<$Res, SendQuestionResponse>;
  @useResult
  $Res call({String status, String? message});
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

  /// Create a copy of SendQuestionResponse
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
abstract class _$$SendQuestionResponseImplCopyWith<$Res>
    implements $SendQuestionResponseCopyWith<$Res> {
  factory _$$SendQuestionResponseImplCopyWith(_$SendQuestionResponseImpl value,
          $Res Function(_$SendQuestionResponseImpl) then) =
      __$$SendQuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$SendQuestionResponseImplCopyWithImpl<$Res>
    extends _$SendQuestionResponseCopyWithImpl<$Res, _$SendQuestionResponseImpl>
    implements _$$SendQuestionResponseImplCopyWith<$Res> {
  __$$SendQuestionResponseImplCopyWithImpl(_$SendQuestionResponseImpl _value,
      $Res Function(_$SendQuestionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$SendQuestionResponseImpl(
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
class _$SendQuestionResponseImpl implements _SendQuestionResponse {
  const _$SendQuestionResponseImpl({this.status = "fail", this.message});

  factory _$SendQuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendQuestionResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'SendQuestionResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendQuestionResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of SendQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {final String status,
      final String? message}) = _$SendQuestionResponseImpl;

  factory _SendQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$SendQuestionResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;

  /// Create a copy of SendQuestionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendQuestionResponseImplCopyWith<_$SendQuestionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
