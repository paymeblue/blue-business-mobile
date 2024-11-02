// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spending_analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpendingAnalyticsResponse _$SpendingAnalyticsResponseFromJson(
    Map<String, dynamic> json) {
  return _SpendingAnalyticsResponse.fromJson(json);
}

/// @nodoc
mixin _$SpendingAnalyticsResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SpendingAnalyticsData? get data => throw _privateConstructorUsedError;

  /// Serializes this SpendingAnalyticsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpendingAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpendingAnalyticsResponseCopyWith<SpendingAnalyticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendingAnalyticsResponseCopyWith<$Res> {
  factory $SpendingAnalyticsResponseCopyWith(SpendingAnalyticsResponse value,
          $Res Function(SpendingAnalyticsResponse) then) =
      _$SpendingAnalyticsResponseCopyWithImpl<$Res, SpendingAnalyticsResponse>;
  @useResult
  $Res call({String status, String? message, SpendingAnalyticsData? data});

  $SpendingAnalyticsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SpendingAnalyticsResponseCopyWithImpl<$Res,
        $Val extends SpendingAnalyticsResponse>
    implements $SpendingAnalyticsResponseCopyWith<$Res> {
  _$SpendingAnalyticsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpendingAnalyticsResponse
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
              as SpendingAnalyticsData?,
    ) as $Val);
  }

  /// Create a copy of SpendingAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendingAnalyticsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SpendingAnalyticsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpendingAnalyticsResponseImplCopyWith<$Res>
    implements $SpendingAnalyticsResponseCopyWith<$Res> {
  factory _$$SpendingAnalyticsResponseImplCopyWith(
          _$SpendingAnalyticsResponseImpl value,
          $Res Function(_$SpendingAnalyticsResponseImpl) then) =
      __$$SpendingAnalyticsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, SpendingAnalyticsData? data});

  @override
  $SpendingAnalyticsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SpendingAnalyticsResponseImplCopyWithImpl<$Res>
    extends _$SpendingAnalyticsResponseCopyWithImpl<$Res,
        _$SpendingAnalyticsResponseImpl>
    implements _$$SpendingAnalyticsResponseImplCopyWith<$Res> {
  __$$SpendingAnalyticsResponseImplCopyWithImpl(
      _$SpendingAnalyticsResponseImpl _value,
      $Res Function(_$SpendingAnalyticsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpendingAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SpendingAnalyticsResponseImpl(
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
              as SpendingAnalyticsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpendingAnalyticsResponseImpl implements _SpendingAnalyticsResponse {
  const _$SpendingAnalyticsResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$SpendingAnalyticsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpendingAnalyticsResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final SpendingAnalyticsData? data;

  @override
  String toString() {
    return 'SpendingAnalyticsResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpendingAnalyticsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of SpendingAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpendingAnalyticsResponseImplCopyWith<_$SpendingAnalyticsResponseImpl>
      get copyWith => __$$SpendingAnalyticsResponseImplCopyWithImpl<
          _$SpendingAnalyticsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpendingAnalyticsResponseImplToJson(
      this,
    );
  }
}

abstract class _SpendingAnalyticsResponse implements SpendingAnalyticsResponse {
  const factory _SpendingAnalyticsResponse(
      {final String status,
      final String? message,
      final SpendingAnalyticsData? data}) = _$SpendingAnalyticsResponseImpl;

  factory _SpendingAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$SpendingAnalyticsResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  SpendingAnalyticsData? get data;

  /// Create a copy of SpendingAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpendingAnalyticsResponseImplCopyWith<_$SpendingAnalyticsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
