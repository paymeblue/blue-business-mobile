// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_electricity_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendElectricityResponse _$VendElectricityResponseFromJson(
    Map<String, dynamic> json) {
  return _VendElectricityResponse.fromJson(json);
}

/// @nodoc
mixin _$VendElectricityResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VendElectricityData? get data => throw _privateConstructorUsedError;

  /// Serializes this VendElectricityResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendElectricityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendElectricityResponseCopyWith<VendElectricityResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendElectricityResponseCopyWith<$Res> {
  factory $VendElectricityResponseCopyWith(VendElectricityResponse value,
          $Res Function(VendElectricityResponse) then) =
      _$VendElectricityResponseCopyWithImpl<$Res, VendElectricityResponse>;
  @useResult
  $Res call({String status, String? message, VendElectricityData? data});

  $VendElectricityDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendElectricityResponseCopyWithImpl<$Res,
        $Val extends VendElectricityResponse>
    implements $VendElectricityResponseCopyWith<$Res> {
  _$VendElectricityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendElectricityResponse
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
              as VendElectricityData?,
    ) as $Val);
  }

  /// Create a copy of VendElectricityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VendElectricityDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendElectricityDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendElectricityResponseImplCopyWith<$Res>
    implements $VendElectricityResponseCopyWith<$Res> {
  factory _$$VendElectricityResponseImplCopyWith(
          _$VendElectricityResponseImpl value,
          $Res Function(_$VendElectricityResponseImpl) then) =
      __$$VendElectricityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VendElectricityData? data});

  @override
  $VendElectricityDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendElectricityResponseImplCopyWithImpl<$Res>
    extends _$VendElectricityResponseCopyWithImpl<$Res,
        _$VendElectricityResponseImpl>
    implements _$$VendElectricityResponseImplCopyWith<$Res> {
  __$$VendElectricityResponseImplCopyWithImpl(
      _$VendElectricityResponseImpl _value,
      $Res Function(_$VendElectricityResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendElectricityResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VendElectricityResponseImpl(
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
              as VendElectricityData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendElectricityResponseImpl implements _VendElectricityResponse {
  const _$VendElectricityResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$VendElectricityResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendElectricityResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VendElectricityData? data;

  @override
  String toString() {
    return 'VendElectricityResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendElectricityResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of VendElectricityResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendElectricityResponseImplCopyWith<_$VendElectricityResponseImpl>
      get copyWith => __$$VendElectricityResponseImplCopyWithImpl<
          _$VendElectricityResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendElectricityResponseImplToJson(
      this,
    );
  }
}

abstract class _VendElectricityResponse implements VendElectricityResponse {
  const factory _VendElectricityResponse(
      {final String status,
      final String? message,
      final VendElectricityData? data}) = _$VendElectricityResponseImpl;

  factory _VendElectricityResponse.fromJson(Map<String, dynamic> json) =
      _$VendElectricityResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VendElectricityData? get data;

  /// Create a copy of VendElectricityResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendElectricityResponseImplCopyWith<_$VendElectricityResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
