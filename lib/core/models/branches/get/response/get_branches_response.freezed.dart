// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_branches_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBranchesResponse _$GetBranchesResponseFromJson(Map<String, dynamic> json) {
  return _GetBranchesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBranchesResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetBranchesData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetBranchesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBranchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBranchesResponseCopyWith<GetBranchesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBranchesResponseCopyWith<$Res> {
  factory $GetBranchesResponseCopyWith(
          GetBranchesResponse value, $Res Function(GetBranchesResponse) then) =
      _$GetBranchesResponseCopyWithImpl<$Res, GetBranchesResponse>;
  @useResult
  $Res call({String status, String? message, GetBranchesData? data});

  $GetBranchesDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetBranchesResponseCopyWithImpl<$Res, $Val extends GetBranchesResponse>
    implements $GetBranchesResponseCopyWith<$Res> {
  _$GetBranchesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBranchesResponse
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
              as GetBranchesData?,
    ) as $Val);
  }

  /// Create a copy of GetBranchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBranchesDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetBranchesDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetBranchesResponseImplCopyWith<$Res>
    implements $GetBranchesResponseCopyWith<$Res> {
  factory _$$GetBranchesResponseImplCopyWith(_$GetBranchesResponseImpl value,
          $Res Function(_$GetBranchesResponseImpl) then) =
      __$$GetBranchesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, GetBranchesData? data});

  @override
  $GetBranchesDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBranchesResponseImplCopyWithImpl<$Res>
    extends _$GetBranchesResponseCopyWithImpl<$Res, _$GetBranchesResponseImpl>
    implements _$$GetBranchesResponseImplCopyWith<$Res> {
  __$$GetBranchesResponseImplCopyWithImpl(_$GetBranchesResponseImpl _value,
      $Res Function(_$GetBranchesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBranchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetBranchesResponseImpl(
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
              as GetBranchesData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBranchesResponseImpl implements _GetBranchesResponse {
  const _$GetBranchesResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$GetBranchesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBranchesResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final GetBranchesData? data;

  @override
  String toString() {
    return 'GetBranchesResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBranchesResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetBranchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBranchesResponseImplCopyWith<_$GetBranchesResponseImpl> get copyWith =>
      __$$GetBranchesResponseImplCopyWithImpl<_$GetBranchesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBranchesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetBranchesResponse implements GetBranchesResponse {
  const factory _GetBranchesResponse(
      {final String status,
      final String? message,
      final GetBranchesData? data}) = _$GetBranchesResponseImpl;

  factory _GetBranchesResponse.fromJson(Map<String, dynamic> json) =
      _$GetBranchesResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  GetBranchesData? get data;

  /// Create a copy of GetBranchesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBranchesResponseImplCopyWith<_$GetBranchesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
