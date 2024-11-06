// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BranchAnalyticsResponse _$BranchAnalyticsResponseFromJson(
    Map<String, dynamic> json) {
  return _BranchAnalyticsResponse.fromJson(json);
}

/// @nodoc
mixin _$BranchAnalyticsResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BranchAnalyticsData? get data => throw _privateConstructorUsedError;

  /// Serializes this BranchAnalyticsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BranchAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchAnalyticsResponseCopyWith<BranchAnalyticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchAnalyticsResponseCopyWith<$Res> {
  factory $BranchAnalyticsResponseCopyWith(BranchAnalyticsResponse value,
          $Res Function(BranchAnalyticsResponse) then) =
      _$BranchAnalyticsResponseCopyWithImpl<$Res, BranchAnalyticsResponse>;
  @useResult
  $Res call({String status, String? message, BranchAnalyticsData? data});

  $BranchAnalyticsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BranchAnalyticsResponseCopyWithImpl<$Res,
        $Val extends BranchAnalyticsResponse>
    implements $BranchAnalyticsResponseCopyWith<$Res> {
  _$BranchAnalyticsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchAnalyticsResponse
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
              as BranchAnalyticsData?,
    ) as $Val);
  }

  /// Create a copy of BranchAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchAnalyticsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BranchAnalyticsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BranchAnalyticsResponseImplCopyWith<$Res>
    implements $BranchAnalyticsResponseCopyWith<$Res> {
  factory _$$BranchAnalyticsResponseImplCopyWith(
          _$BranchAnalyticsResponseImpl value,
          $Res Function(_$BranchAnalyticsResponseImpl) then) =
      __$$BranchAnalyticsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, BranchAnalyticsData? data});

  @override
  $BranchAnalyticsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BranchAnalyticsResponseImplCopyWithImpl<$Res>
    extends _$BranchAnalyticsResponseCopyWithImpl<$Res,
        _$BranchAnalyticsResponseImpl>
    implements _$$BranchAnalyticsResponseImplCopyWith<$Res> {
  __$$BranchAnalyticsResponseImplCopyWithImpl(
      _$BranchAnalyticsResponseImpl _value,
      $Res Function(_$BranchAnalyticsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BranchAnalyticsResponseImpl(
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
              as BranchAnalyticsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BranchAnalyticsResponseImpl implements _BranchAnalyticsResponse {
  const _$BranchAnalyticsResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$BranchAnalyticsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BranchAnalyticsResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final BranchAnalyticsData? data;

  @override
  String toString() {
    return 'BranchAnalyticsResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchAnalyticsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of BranchAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchAnalyticsResponseImplCopyWith<_$BranchAnalyticsResponseImpl>
      get copyWith => __$$BranchAnalyticsResponseImplCopyWithImpl<
          _$BranchAnalyticsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BranchAnalyticsResponseImplToJson(
      this,
    );
  }
}

abstract class _BranchAnalyticsResponse implements BranchAnalyticsResponse {
  const factory _BranchAnalyticsResponse(
      {final String status,
      final String? message,
      final BranchAnalyticsData? data}) = _$BranchAnalyticsResponseImpl;

  factory _BranchAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$BranchAnalyticsResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  BranchAnalyticsData? get data;

  /// Create a copy of BranchAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchAnalyticsResponseImplCopyWith<_$BranchAnalyticsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
