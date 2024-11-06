// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendDataResponse _$VendDataResponseFromJson(Map<String, dynamic> json) {
  return _VendDataResponse.fromJson(json);
}

/// @nodoc
mixin _$VendDataResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VendDataData? get data => throw _privateConstructorUsedError;

  /// Serializes this VendDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendDataResponseCopyWith<VendDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendDataResponseCopyWith<$Res> {
  factory $VendDataResponseCopyWith(
          VendDataResponse value, $Res Function(VendDataResponse) then) =
      _$VendDataResponseCopyWithImpl<$Res, VendDataResponse>;
  @useResult
  $Res call({String status, String? message, VendDataData? data});

  $VendDataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendDataResponseCopyWithImpl<$Res, $Val extends VendDataResponse>
    implements $VendDataResponseCopyWith<$Res> {
  _$VendDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendDataResponse
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
              as VendDataData?,
    ) as $Val);
  }

  /// Create a copy of VendDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendDataDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendDataDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendDataResponseImplCopyWith<$Res>
    implements $VendDataResponseCopyWith<$Res> {
  factory _$$VendDataResponseImplCopyWith(_$VendDataResponseImpl value,
          $Res Function(_$VendDataResponseImpl) then) =
      __$$VendDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VendDataData? data});

  @override
  $VendDataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendDataResponseImplCopyWithImpl<$Res>
    extends _$VendDataResponseCopyWithImpl<$Res, _$VendDataResponseImpl>
    implements _$$VendDataResponseImplCopyWith<$Res> {
  __$$VendDataResponseImplCopyWithImpl(_$VendDataResponseImpl _value,
      $Res Function(_$VendDataResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VendDataResponseImpl(
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
              as VendDataData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendDataResponseImpl implements _VendDataResponse {
  const _$VendDataResponseImpl({this.status = "fail", this.message, this.data});

  factory _$VendDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendDataResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VendDataData? data;

  @override
  String toString() {
    return 'VendDataResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendDataResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of VendDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendDataResponseImplCopyWith<_$VendDataResponseImpl> get copyWith =>
      __$$VendDataResponseImplCopyWithImpl<_$VendDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendDataResponseImplToJson(
      this,
    );
  }
}

abstract class _VendDataResponse implements VendDataResponse {
  const factory _VendDataResponse(
      {final String status,
      final String? message,
      final VendDataData? data}) = _$VendDataResponseImpl;

  factory _VendDataResponse.fromJson(Map<String, dynamic> json) =
      _$VendDataResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VendDataData? get data;

  /// Create a copy of VendDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendDataResponseImplCopyWith<_$VendDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
