// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_branch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBranchResponse _$CreateBranchResponseFromJson(Map<String, dynamic> json) {
  return _CreateBranchResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateBranchResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Branch? get data => throw _privateConstructorUsedError;

  /// Serializes this CreateBranchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBranchResponseCopyWith<CreateBranchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBranchResponseCopyWith<$Res> {
  factory $CreateBranchResponseCopyWith(CreateBranchResponse value,
          $Res Function(CreateBranchResponse) then) =
      _$CreateBranchResponseCopyWithImpl<$Res, CreateBranchResponse>;
  @useResult
  $Res call({String status, String? message, Branch? data});

  $BranchCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateBranchResponseCopyWithImpl<$Res,
        $Val extends CreateBranchResponse>
    implements $CreateBranchResponseCopyWith<$Res> {
  _$CreateBranchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBranchResponse
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

  /// Create a copy of CreateBranchResponse
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
abstract class _$$CreateBranchResponseImplCopyWith<$Res>
    implements $CreateBranchResponseCopyWith<$Res> {
  factory _$$CreateBranchResponseImplCopyWith(_$CreateBranchResponseImpl value,
          $Res Function(_$CreateBranchResponseImpl) then) =
      __$$CreateBranchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, Branch? data});

  @override
  $BranchCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateBranchResponseImplCopyWithImpl<$Res>
    extends _$CreateBranchResponseCopyWithImpl<$Res, _$CreateBranchResponseImpl>
    implements _$$CreateBranchResponseImplCopyWith<$Res> {
  __$$CreateBranchResponseImplCopyWithImpl(_$CreateBranchResponseImpl _value,
      $Res Function(_$CreateBranchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateBranchResponseImpl(
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
class _$CreateBranchResponseImpl implements _CreateBranchResponse {
  const _$CreateBranchResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$CreateBranchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBranchResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final Branch? data;

  @override
  String toString() {
    return 'CreateBranchResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBranchResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of CreateBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBranchResponseImplCopyWith<_$CreateBranchResponseImpl>
      get copyWith =>
          __$$CreateBranchResponseImplCopyWithImpl<_$CreateBranchResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBranchResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateBranchResponse implements CreateBranchResponse {
  const factory _CreateBranchResponse(
      {final String status,
      final String? message,
      final Branch? data}) = _$CreateBranchResponseImpl;

  factory _CreateBranchResponse.fromJson(Map<String, dynamic> json) =
      _$CreateBranchResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  Branch? get data;

  /// Create a copy of CreateBranchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBranchResponseImplCopyWith<_$CreateBranchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
