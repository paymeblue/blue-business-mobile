// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_link_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentLinkResponse _$PaymentLinkResponseFromJson(Map<String, dynamic> json) {
  return _PaymentLinkResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentLinkResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PaymentLinkData? get data => throw _privateConstructorUsedError;

  /// Serializes this PaymentLinkResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentLinkResponseCopyWith<PaymentLinkResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentLinkResponseCopyWith<$Res> {
  factory $PaymentLinkResponseCopyWith(
          PaymentLinkResponse value, $Res Function(PaymentLinkResponse) then) =
      _$PaymentLinkResponseCopyWithImpl<$Res, PaymentLinkResponse>;
  @useResult
  $Res call({String status, String? message, PaymentLinkData? data});

  $PaymentLinkDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentLinkResponseCopyWithImpl<$Res, $Val extends PaymentLinkResponse>
    implements $PaymentLinkResponseCopyWith<$Res> {
  _$PaymentLinkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentLinkResponse
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
              as PaymentLinkData?,
    ) as $Val);
  }

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentLinkDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PaymentLinkDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentLinkResponseImplCopyWith<$Res>
    implements $PaymentLinkResponseCopyWith<$Res> {
  factory _$$PaymentLinkResponseImplCopyWith(_$PaymentLinkResponseImpl value,
          $Res Function(_$PaymentLinkResponseImpl) then) =
      __$$PaymentLinkResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, PaymentLinkData? data});

  @override
  $PaymentLinkDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PaymentLinkResponseImplCopyWithImpl<$Res>
    extends _$PaymentLinkResponseCopyWithImpl<$Res, _$PaymentLinkResponseImpl>
    implements _$$PaymentLinkResponseImplCopyWith<$Res> {
  __$$PaymentLinkResponseImplCopyWithImpl(_$PaymentLinkResponseImpl _value,
      $Res Function(_$PaymentLinkResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PaymentLinkResponseImpl(
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
              as PaymentLinkData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentLinkResponseImpl implements _PaymentLinkResponse {
  const _$PaymentLinkResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$PaymentLinkResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentLinkResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final PaymentLinkData? data;

  @override
  String toString() {
    return 'PaymentLinkResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLinkResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLinkResponseImplCopyWith<_$PaymentLinkResponseImpl> get copyWith =>
      __$$PaymentLinkResponseImplCopyWithImpl<_$PaymentLinkResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentLinkResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentLinkResponse implements PaymentLinkResponse {
  const factory _PaymentLinkResponse(
      {final String status,
      final String? message,
      final PaymentLinkData? data}) = _$PaymentLinkResponseImpl;

  factory _PaymentLinkResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentLinkResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  PaymentLinkData? get data;

  /// Create a copy of PaymentLinkResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentLinkResponseImplCopyWith<_$PaymentLinkResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
