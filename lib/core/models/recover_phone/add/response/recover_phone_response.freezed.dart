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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendNewPhoneResponse _$SendNewPhoneResponseFromJson(Map<String, dynamic> json) {
  return _SendNewPhoneResponse.fromJson(json);
}

/// @nodoc
mixin _$SendNewPhoneResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SendNewPhoneData? get data => throw _privateConstructorUsedError;

  /// Serializes this SendNewPhoneResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendNewPhoneResponseCopyWith<SendNewPhoneResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNewPhoneResponseCopyWith<$Res> {
  factory $SendNewPhoneResponseCopyWith(SendNewPhoneResponse value,
          $Res Function(SendNewPhoneResponse) then) =
      _$SendNewPhoneResponseCopyWithImpl<$Res, SendNewPhoneResponse>;
  @useResult
  $Res call({String status, String? message, SendNewPhoneData? data});

  $SendNewPhoneDataCopyWith<$Res>? get data;
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

  /// Create a copy of SendNewPhoneResponse
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
              as SendNewPhoneData?,
    ) as $Val);
  }

  /// Create a copy of SendNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SendNewPhoneDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SendNewPhoneDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({String status, String? message, SendNewPhoneData? data});

  @override
  $SendNewPhoneDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SendNewPhoneResponseImplCopyWithImpl<$Res>
    extends _$SendNewPhoneResponseCopyWithImpl<$Res, _$SendNewPhoneResponseImpl>
    implements _$$SendNewPhoneResponseImplCopyWith<$Res> {
  __$$SendNewPhoneResponseImplCopyWithImpl(_$SendNewPhoneResponseImpl _value,
      $Res Function(_$SendNewPhoneResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SendNewPhoneData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendNewPhoneResponseImpl implements _SendNewPhoneResponse {
  const _$SendNewPhoneResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$SendNewPhoneResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendNewPhoneResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final SendNewPhoneData? data;

  @override
  String toString() {
    return 'SendNewPhoneResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNewPhoneResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of SendNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final String? message,
      final SendNewPhoneData? data}) = _$SendNewPhoneResponseImpl;

  factory _SendNewPhoneResponse.fromJson(Map<String, dynamic> json) =
      _$SendNewPhoneResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  SendNewPhoneData? get data;

  /// Create a copy of SendNewPhoneResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendNewPhoneResponseImplCopyWith<_$SendNewPhoneResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
