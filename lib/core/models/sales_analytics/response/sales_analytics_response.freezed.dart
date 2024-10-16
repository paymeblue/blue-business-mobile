// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalesAnalyticsResponse _$SalesAnalyticsResponseFromJson(
    Map<String, dynamic> json) {
  return _SalesAnalyticsResponse.fromJson(json);
}

/// @nodoc
mixin _$SalesAnalyticsResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get data => throw _privateConstructorUsedError;

  /// Serializes this SalesAnalyticsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalesAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalesAnalyticsResponseCopyWith<SalesAnalyticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesAnalyticsResponseCopyWith<$Res> {
  factory $SalesAnalyticsResponseCopyWith(SalesAnalyticsResponse value,
          $Res Function(SalesAnalyticsResponse) then) =
      _$SalesAnalyticsResponseCopyWithImpl<$Res, SalesAnalyticsResponse>;
  @useResult
  $Res call({String status, String? message, List<Map<String, dynamic>>? data});
}

/// @nodoc
class _$SalesAnalyticsResponseCopyWithImpl<$Res,
        $Val extends SalesAnalyticsResponse>
    implements $SalesAnalyticsResponseCopyWith<$Res> {
  _$SalesAnalyticsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesAnalyticsResponse
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
              as List<Map<String, dynamic>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalesAnalyticsResponseImplCopyWith<$Res>
    implements $SalesAnalyticsResponseCopyWith<$Res> {
  factory _$$SalesAnalyticsResponseImplCopyWith(
          _$SalesAnalyticsResponseImpl value,
          $Res Function(_$SalesAnalyticsResponseImpl) then) =
      __$$SalesAnalyticsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, List<Map<String, dynamic>>? data});
}

/// @nodoc
class __$$SalesAnalyticsResponseImplCopyWithImpl<$Res>
    extends _$SalesAnalyticsResponseCopyWithImpl<$Res,
        _$SalesAnalyticsResponseImpl>
    implements _$$SalesAnalyticsResponseImplCopyWith<$Res> {
  __$$SalesAnalyticsResponseImplCopyWithImpl(
      _$SalesAnalyticsResponseImpl _value,
      $Res Function(_$SalesAnalyticsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SalesAnalyticsResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalesAnalyticsResponseImpl implements _SalesAnalyticsResponse {
  const _$SalesAnalyticsResponseImpl(
      {this.status = "fail",
      this.message,
      final List<Map<String, dynamic>>? data})
      : _data = data;

  factory _$SalesAnalyticsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalesAnalyticsResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  final List<Map<String, dynamic>>? _data;
  @override
  List<Map<String, dynamic>>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalesAnalyticsResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalesAnalyticsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SalesAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalesAnalyticsResponseImplCopyWith<_$SalesAnalyticsResponseImpl>
      get copyWith => __$$SalesAnalyticsResponseImplCopyWithImpl<
          _$SalesAnalyticsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalesAnalyticsResponseImplToJson(
      this,
    );
  }
}

abstract class _SalesAnalyticsResponse implements SalesAnalyticsResponse {
  const factory _SalesAnalyticsResponse(
      {final String status,
      final String? message,
      final List<Map<String, dynamic>>? data}) = _$SalesAnalyticsResponseImpl;

  factory _SalesAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$SalesAnalyticsResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  List<Map<String, dynamic>>? get data;

  /// Create a copy of SalesAnalyticsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalesAnalyticsResponseImplCopyWith<_$SalesAnalyticsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
