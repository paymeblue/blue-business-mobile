// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPinResponse _$ForgotPinResponseFromJson(Map<String, dynamic> json) {
  return _ForgotPinResponse.fromJson(json);
}

/// @nodoc
mixin _$ForgotPinResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ForgotPinData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPinResponseCopyWith<ForgotPinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPinResponseCopyWith<$Res> {
  factory $ForgotPinResponseCopyWith(
          ForgotPinResponse value, $Res Function(ForgotPinResponse) then) =
      _$ForgotPinResponseCopyWithImpl<$Res, ForgotPinResponse>;
  @useResult
  $Res call({String status, String? message, ForgotPinData? data});

  $ForgotPinDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ForgotPinResponseCopyWithImpl<$Res, $Val extends ForgotPinResponse>
    implements $ForgotPinResponseCopyWith<$Res> {
  _$ForgotPinResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as ForgotPinData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ForgotPinDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ForgotPinDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotPinResponseImplCopyWith<$Res>
    implements $ForgotPinResponseCopyWith<$Res> {
  factory _$$ForgotPinResponseImplCopyWith(_$ForgotPinResponseImpl value,
          $Res Function(_$ForgotPinResponseImpl) then) =
      __$$ForgotPinResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, ForgotPinData? data});

  @override
  $ForgotPinDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ForgotPinResponseImplCopyWithImpl<$Res>
    extends _$ForgotPinResponseCopyWithImpl<$Res, _$ForgotPinResponseImpl>
    implements _$$ForgotPinResponseImplCopyWith<$Res> {
  __$$ForgotPinResponseImplCopyWithImpl(_$ForgotPinResponseImpl _value,
      $Res Function(_$ForgotPinResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ForgotPinResponseImpl(
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
              as ForgotPinData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPinResponseImpl implements _ForgotPinResponse {
  const _$ForgotPinResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$ForgotPinResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPinResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final ForgotPinData? data;

  @override
  String toString() {
    return 'ForgotPinResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPinResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPinResponseImplCopyWith<_$ForgotPinResponseImpl> get copyWith =>
      __$$ForgotPinResponseImplCopyWithImpl<_$ForgotPinResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPinResponseImplToJson(
      this,
    );
  }
}

abstract class _ForgotPinResponse implements ForgotPinResponse {
  const factory _ForgotPinResponse(
      {final String status,
      final String? message,
      final ForgotPinData? data}) = _$ForgotPinResponseImpl;

  factory _ForgotPinResponse.fromJson(Map<String, dynamic> json) =
      _$ForgotPinResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  ForgotPinData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPinResponseImplCopyWith<_$ForgotPinResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
