// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_dash_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessDashResponse _$BusinessDashResponseFromJson(Map<String, dynamic> json) {
  return _BusinessDashResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessDashResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BusinessDashData? get data => throw _privateConstructorUsedError;

  /// Serializes this BusinessDashResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessDashResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessDashResponseCopyWith<BusinessDashResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDashResponseCopyWith<$Res> {
  factory $BusinessDashResponseCopyWith(BusinessDashResponse value,
          $Res Function(BusinessDashResponse) then) =
      _$BusinessDashResponseCopyWithImpl<$Res, BusinessDashResponse>;
  @useResult
  $Res call({String status, String? message, BusinessDashData? data});

  $BusinessDashDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BusinessDashResponseCopyWithImpl<$Res,
        $Val extends BusinessDashResponse>
    implements $BusinessDashResponseCopyWith<$Res> {
  _$BusinessDashResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessDashResponse
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
              as BusinessDashData?,
    ) as $Val);
  }

  /// Create a copy of BusinessDashResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessDashDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BusinessDashDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessDashResponseImplCopyWith<$Res>
    implements $BusinessDashResponseCopyWith<$Res> {
  factory _$$BusinessDashResponseImplCopyWith(_$BusinessDashResponseImpl value,
          $Res Function(_$BusinessDashResponseImpl) then) =
      __$$BusinessDashResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, BusinessDashData? data});

  @override
  $BusinessDashDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BusinessDashResponseImplCopyWithImpl<$Res>
    extends _$BusinessDashResponseCopyWithImpl<$Res, _$BusinessDashResponseImpl>
    implements _$$BusinessDashResponseImplCopyWith<$Res> {
  __$$BusinessDashResponseImplCopyWithImpl(_$BusinessDashResponseImpl _value,
      $Res Function(_$BusinessDashResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessDashResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BusinessDashResponseImpl(
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
              as BusinessDashData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessDashResponseImpl implements _BusinessDashResponse {
  const _$BusinessDashResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$BusinessDashResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessDashResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final BusinessDashData? data;

  @override
  String toString() {
    return 'BusinessDashResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDashResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of BusinessDashResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDashResponseImplCopyWith<_$BusinessDashResponseImpl>
      get copyWith =>
          __$$BusinessDashResponseImplCopyWithImpl<_$BusinessDashResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessDashResponseImplToJson(
      this,
    );
  }
}

abstract class _BusinessDashResponse implements BusinessDashResponse {
  const factory _BusinessDashResponse(
      {final String status,
      final String? message,
      final BusinessDashData? data}) = _$BusinessDashResponseImpl;

  factory _BusinessDashResponse.fromJson(Map<String, dynamic> json) =
      _$BusinessDashResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  BusinessDashData? get data;

  /// Create a copy of BusinessDashResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDashResponseImplCopyWith<_$BusinessDashResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
