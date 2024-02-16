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
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetRecoveryCodeData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetRecoveryCodeResponseCopyWith<GetRecoveryCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecoveryCodeResponseCopyWith<$Res> {
  factory $GetRecoveryCodeResponseCopyWith(GetRecoveryCodeResponse value,
          $Res Function(GetRecoveryCodeResponse) then) =
      _$GetRecoveryCodeResponseCopyWithImpl<$Res, GetRecoveryCodeResponse>;
  @useResult
  $Res call({bool success, String? message, GetRecoveryCodeData? data});

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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetRecoveryCodeData?,
    ) as $Val);
  }

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
  $Res call({bool success, String? message, GetRecoveryCodeData? data});

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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetRecoveryCodeResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {this.success = false, this.message, this.data});

  factory _$GetRecoveryCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetRecoveryCodeResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final GetRecoveryCodeData? data;

  @override
  String toString() {
    return 'GetRecoveryCodeResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecoveryCodeResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
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
      {final bool success,
      final String? message,
      final GetRecoveryCodeData? data}) = _$GetRecoveryCodeResponseImpl;

  factory _GetRecoveryCodeResponse.fromJson(Map<String, dynamic> json) =
      _$GetRecoveryCodeResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  GetRecoveryCodeData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetRecoveryCodeResponseImplCopyWith<_$GetRecoveryCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
