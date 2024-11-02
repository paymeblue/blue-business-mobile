// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_staff_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStaffResponse _$CreateStaffResponseFromJson(Map<String, dynamic> json) {
  return _CreateStaffResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateStaffResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CreateStaffResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStaffResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStaffResponseCopyWith<CreateStaffResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStaffResponseCopyWith<$Res> {
  factory $CreateStaffResponseCopyWith(
          CreateStaffResponse value, $Res Function(CreateStaffResponse) then) =
      _$CreateStaffResponseCopyWithImpl<$Res, CreateStaffResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$CreateStaffResponseCopyWithImpl<$Res, $Val extends CreateStaffResponse>
    implements $CreateStaffResponseCopyWith<$Res> {
  _$CreateStaffResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStaffResponse
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
abstract class _$$CreateStaffResponseImplCopyWith<$Res>
    implements $CreateStaffResponseCopyWith<$Res> {
  factory _$$CreateStaffResponseImplCopyWith(_$CreateStaffResponseImpl value,
          $Res Function(_$CreateStaffResponseImpl) then) =
      __$$CreateStaffResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$CreateStaffResponseImplCopyWithImpl<$Res>
    extends _$CreateStaffResponseCopyWithImpl<$Res, _$CreateStaffResponseImpl>
    implements _$$CreateStaffResponseImplCopyWith<$Res> {
  __$$CreateStaffResponseImplCopyWithImpl(_$CreateStaffResponseImpl _value,
      $Res Function(_$CreateStaffResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStaffResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$CreateStaffResponseImpl(
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
class _$CreateStaffResponseImpl implements _CreateStaffResponse {
  const _$CreateStaffResponseImpl({this.status = "fail", this.message});

  factory _$CreateStaffResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStaffResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CreateStaffResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStaffResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of CreateStaffResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStaffResponseImplCopyWith<_$CreateStaffResponseImpl> get copyWith =>
      __$$CreateStaffResponseImplCopyWithImpl<_$CreateStaffResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStaffResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateStaffResponse implements CreateStaffResponse {
  const factory _CreateStaffResponse(
      {final String status, final String? message}) = _$CreateStaffResponseImpl;

  factory _CreateStaffResponse.fromJson(Map<String, dynamic> json) =
      _$CreateStaffResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;

  /// Create a copy of CreateStaffResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStaffResponseImplCopyWith<_$CreateStaffResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
