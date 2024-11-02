// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_branch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBranchResponse _$GetBranchResponseFromJson(Map<String, dynamic> json) {
  return _GetBranchResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBranchResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Branch? get data => throw _privateConstructorUsedError;

  /// Serializes this GetBranchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBranchResponseCopyWith<GetBranchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBranchResponseCopyWith<$Res> {
  factory $GetBranchResponseCopyWith(
          GetBranchResponse value, $Res Function(GetBranchResponse) then) =
      _$GetBranchResponseCopyWithImpl<$Res, GetBranchResponse>;
  @useResult
  $Res call({String status, String? message, Branch? data});

  $BranchCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetBranchResponseCopyWithImpl<$Res, $Val extends GetBranchResponse>
    implements $GetBranchResponseCopyWith<$Res> {
  _$GetBranchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBranchResponse
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
              as Branch?,
    ) as $Val);
  }

  /// Create a copy of GetBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BranchCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BranchCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetBranchResponseImplCopyWith<$Res>
    implements $GetBranchResponseCopyWith<$Res> {
  factory _$$GetBranchResponseImplCopyWith(_$GetBranchResponseImpl value,
          $Res Function(_$GetBranchResponseImpl) then) =
      __$$GetBranchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, Branch? data});

  @override
  $BranchCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBranchResponseImplCopyWithImpl<$Res>
    extends _$GetBranchResponseCopyWithImpl<$Res, _$GetBranchResponseImpl>
    implements _$$GetBranchResponseImplCopyWith<$Res> {
  __$$GetBranchResponseImplCopyWithImpl(_$GetBranchResponseImpl _value,
      $Res Function(_$GetBranchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetBranchResponseImpl(
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
              as Branch?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBranchResponseImpl implements _GetBranchResponse {
  const _$GetBranchResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$GetBranchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBranchResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final Branch? data;

  @override
  String toString() {
    return 'GetBranchResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBranchResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of GetBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBranchResponseImplCopyWith<_$GetBranchResponseImpl> get copyWith =>
      __$$GetBranchResponseImplCopyWithImpl<_$GetBranchResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBranchResponseImplToJson(
      this,
    );
  }
}

abstract class _GetBranchResponse implements GetBranchResponse {
  const factory _GetBranchResponse(
      {final String status,
      final String? message,
      final Branch? data}) = _$GetBranchResponseImpl;

  factory _GetBranchResponse.fromJson(Map<String, dynamic> json) =
      _$GetBranchResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  Branch? get data;

  /// Create a copy of GetBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBranchResponseImplCopyWith<_$GetBranchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
