// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_shareholders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateShareholdersResponse _$CreateShareholdersResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateShareholdersResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateShareholdersResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateShareholdersData? get data => throw _privateConstructorUsedError;

  /// Serializes this CreateShareholdersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateShareholdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateShareholdersResponseCopyWith<CreateShareholdersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateShareholdersResponseCopyWith<$Res> {
  factory $CreateShareholdersResponseCopyWith(CreateShareholdersResponse value,
          $Res Function(CreateShareholdersResponse) then) =
      _$CreateShareholdersResponseCopyWithImpl<$Res,
          CreateShareholdersResponse>;
  @useResult
  $Res call({String status, String? message, CreateShareholdersData? data});

  $CreateShareholdersDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateShareholdersResponseCopyWithImpl<$Res,
        $Val extends CreateShareholdersResponse>
    implements $CreateShareholdersResponseCopyWith<$Res> {
  _$CreateShareholdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateShareholdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateShareholdersData?,
    ) as $Val);
  }

  /// Create a copy of CreateShareholdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateShareholdersDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateShareholdersDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateShareholdersResponseImplCopyWith<$Res>
    implements $CreateShareholdersResponseCopyWith<$Res> {
  factory _$$CreateShareholdersResponseImplCopyWith(
          _$CreateShareholdersResponseImpl value,
          $Res Function(_$CreateShareholdersResponseImpl) then) =
      __$$CreateShareholdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, CreateShareholdersData? data});

  @override
  $CreateShareholdersDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateShareholdersResponseImplCopyWithImpl<$Res>
    extends _$CreateShareholdersResponseCopyWithImpl<$Res,
        _$CreateShareholdersResponseImpl>
    implements _$$CreateShareholdersResponseImplCopyWith<$Res> {
  __$$CreateShareholdersResponseImplCopyWithImpl(
      _$CreateShareholdersResponseImpl _value,
      $Res Function(_$CreateShareholdersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateShareholdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateShareholdersResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateShareholdersData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateShareholdersResponseImpl implements _CreateShareholdersResponse {
  const _$CreateShareholdersResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$CreateShareholdersResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateShareholdersResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final CreateShareholdersData? data;

  @override
  String toString() {
    return 'CreateShareholdersResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateShareholdersResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of CreateShareholdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateShareholdersResponseImplCopyWith<_$CreateShareholdersResponseImpl>
      get copyWith => __$$CreateShareholdersResponseImplCopyWithImpl<
          _$CreateShareholdersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateShareholdersResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateShareholdersResponse
    implements CreateShareholdersResponse {
  const factory _CreateShareholdersResponse(
      {final String status,
      final String? message,
      final CreateShareholdersData? data}) = _$CreateShareholdersResponseImpl;

  factory _CreateShareholdersResponse.fromJson(Map<String, dynamic> json) =
      _$CreateShareholdersResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  CreateShareholdersData? get data;

  /// Create a copy of CreateShareholdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateShareholdersResponseImplCopyWith<_$CreateShareholdersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
