// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_cable_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyCableResponse _$VerifyCableResponseFromJson(Map<String, dynamic> json) {
  return _VerifyCableResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyCableResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VerifyCableData? get data => throw _privateConstructorUsedError;

  /// Serializes this VerifyCableResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyCableResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyCableResponseCopyWith<VerifyCableResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCableResponseCopyWith<$Res> {
  factory $VerifyCableResponseCopyWith(
          VerifyCableResponse value, $Res Function(VerifyCableResponse) then) =
      _$VerifyCableResponseCopyWithImpl<$Res, VerifyCableResponse>;
  @useResult
  $Res call({String status, String? message, VerifyCableData? data});

  $VerifyCableDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyCableResponseCopyWithImpl<$Res, $Val extends VerifyCableResponse>
    implements $VerifyCableResponseCopyWith<$Res> {
  _$VerifyCableResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyCableResponse
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
              as VerifyCableData?,
    ) as $Val);
  }

  /// Create a copy of VerifyCableResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerifyCableDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VerifyCableDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyCableResponseImplCopyWith<$Res>
    implements $VerifyCableResponseCopyWith<$Res> {
  factory _$$VerifyCableResponseImplCopyWith(_$VerifyCableResponseImpl value,
          $Res Function(_$VerifyCableResponseImpl) then) =
      __$$VerifyCableResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VerifyCableData? data});

  @override
  $VerifyCableDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VerifyCableResponseImplCopyWithImpl<$Res>
    extends _$VerifyCableResponseCopyWithImpl<$Res, _$VerifyCableResponseImpl>
    implements _$$VerifyCableResponseImplCopyWith<$Res> {
  __$$VerifyCableResponseImplCopyWithImpl(_$VerifyCableResponseImpl _value,
      $Res Function(_$VerifyCableResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyCableResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VerifyCableResponseImpl(
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
              as VerifyCableData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyCableResponseImpl implements _VerifyCableResponse {
  const _$VerifyCableResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$VerifyCableResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyCableResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VerifyCableData? data;

  @override
  String toString() {
    return 'VerifyCableResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCableResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of VerifyCableResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCableResponseImplCopyWith<_$VerifyCableResponseImpl> get copyWith =>
      __$$VerifyCableResponseImplCopyWithImpl<_$VerifyCableResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyCableResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyCableResponse implements VerifyCableResponse {
  const factory _VerifyCableResponse(
      {final String status,
      final String? message,
      final VerifyCableData? data}) = _$VerifyCableResponseImpl;

  factory _VerifyCableResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyCableResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VerifyCableData? get data;

  /// Create a copy of VerifyCableResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyCableResponseImplCopyWith<_$VerifyCableResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
