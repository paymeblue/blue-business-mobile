// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetRecoveryCodeResponse _$GetRecoveryCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _GetRecoveryCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$GetRecoveryCodeResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetRecoveryCodeData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetRecoveryCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetRecoveryCodeResponseCopyWith<GetRecoveryCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecoveryCodeResponseCopyWith<$Res> {
  factory $GetRecoveryCodeResponseCopyWith(GetRecoveryCodeResponse value,
          $Res Function(GetRecoveryCodeResponse) then) =
      _$GetRecoveryCodeResponseCopyWithImpl<$Res, GetRecoveryCodeResponse>;
  @useResult
  $Res call({String status, String? message, GetRecoveryCodeData? data});

  $GetRecoveryCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetRecoveryCodeResponseCopyWithImpl<$Res,
        $Val extends GetRecoveryCodeResponse>
    implements $GetRecoveryCodeResponseCopyWith<$Res> {
  _$GetRecoveryCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetRecoveryCodeResponse
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
              as GetRecoveryCodeData?,
    ) as $Val);
  }

  /// Create a copy of GetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetRecoveryCodeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetRecoveryCodeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetRecoveryCodeResponseImplCopyWith<$Res>
    implements $GetRecoveryCodeResponseCopyWith<$Res> {
  factory _$$GetRecoveryCodeResponseImplCopyWith(
          _$GetRecoveryCodeResponseImpl value,
          $Res Function(_$GetRecoveryCodeResponseImpl) then) =
      __$$GetRecoveryCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, GetRecoveryCodeData? data});

  @override
  $GetRecoveryCodeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetRecoveryCodeResponseImplCopyWithImpl<$Res>
    extends _$GetRecoveryCodeResponseCopyWithImpl<$Res,
        _$GetRecoveryCodeResponseImpl>
    implements _$$GetRecoveryCodeResponseImplCopyWith<$Res> {
  __$$GetRecoveryCodeResponseImplCopyWithImpl(
      _$GetRecoveryCodeResponseImpl _value,
      $Res Function(_$GetRecoveryCodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetRecoveryCodeResponseImpl(
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
              as GetRecoveryCodeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetRecoveryCodeResponseImpl implements _GetRecoveryCodeResponse {
  const _$GetRecoveryCodeResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$GetRecoveryCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRecoveryCodeResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final GetRecoveryCodeData? data;

  @override
  String toString() {
    return 'GetRecoveryCodeResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecoveryCodeResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecoveryCodeResponseImplCopyWith<_$GetRecoveryCodeResponseImpl>
      get copyWith => __$$GetRecoveryCodeResponseImplCopyWithImpl<
          _$GetRecoveryCodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetRecoveryCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _GetRecoveryCodeResponse implements GetRecoveryCodeResponse {
  const factory _GetRecoveryCodeResponse(
      {final String status,
      final String? message,
      final GetRecoveryCodeData? data}) = _$GetRecoveryCodeResponseImpl;

  factory _GetRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =
      _$GetRecoveryCodeResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  GetRecoveryCodeData? get data;

  /// Create a copy of GetRecoveryCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRecoveryCodeResponseImplCopyWith<_$GetRecoveryCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
