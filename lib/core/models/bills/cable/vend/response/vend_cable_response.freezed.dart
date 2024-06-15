// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_cable_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendCableResponse _$VendCableResponseFromJson(Map<String, dynamic> json) {
  return _VendCableResponse.fromJson(json);
}

/// @nodoc
mixin _$VendCableResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VendCableData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendCableResponseCopyWith<VendCableResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendCableResponseCopyWith<$Res> {
  factory $VendCableResponseCopyWith(
          VendCableResponse value, $Res Function(VendCableResponse) then) =
      _$VendCableResponseCopyWithImpl<$Res, VendCableResponse>;
  @useResult
  $Res call({String status, String? message, VendCableData? data});

  $VendCableDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendCableResponseCopyWithImpl<$Res, $Val extends VendCableResponse>
    implements $VendCableResponseCopyWith<$Res> {
  _$VendCableResponseCopyWithImpl(this._value, this._then);

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
              as VendCableData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendCableDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendCableDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendCableResponseImplCopyWith<$Res>
    implements $VendCableResponseCopyWith<$Res> {
  factory _$$VendCableResponseImplCopyWith(_$VendCableResponseImpl value,
          $Res Function(_$VendCableResponseImpl) then) =
      __$$VendCableResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VendCableData? data});

  @override
  $VendCableDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendCableResponseImplCopyWithImpl<$Res>
    extends _$VendCableResponseCopyWithImpl<$Res, _$VendCableResponseImpl>
    implements _$$VendCableResponseImplCopyWith<$Res> {
  __$$VendCableResponseImplCopyWithImpl(_$VendCableResponseImpl _value,
      $Res Function(_$VendCableResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VendCableResponseImpl(
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
              as VendCableData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendCableResponseImpl implements _VendCableResponse {
  const _$VendCableResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$VendCableResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendCableResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VendCableData? data;

  @override
  String toString() {
    return 'VendCableResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendCableResponseImpl &&
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
  _$$VendCableResponseImplCopyWith<_$VendCableResponseImpl> get copyWith =>
      __$$VendCableResponseImplCopyWithImpl<_$VendCableResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendCableResponseImplToJson(
      this,
    );
  }
}

abstract class _VendCableResponse implements VendCableResponse {
  const factory _VendCableResponse(
      {final String status,
      final String? message,
      final VendCableData? data}) = _$VendCableResponseImpl;

  factory _VendCableResponse.fromJson(Map<String, dynamic> json) =
      _$VendCableResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VendCableData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VendCableResponseImplCopyWith<_$VendCableResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
