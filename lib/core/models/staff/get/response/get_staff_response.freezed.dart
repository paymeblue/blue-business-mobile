// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_staff_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStaffResponse _$GetStaffResponseFromJson(Map<String, dynamic> json) {
  return _GetStaffResponse.fromJson(json);
}

/// @nodoc
mixin _$GetStaffResponse {
  String get status => throw _privateConstructorUsedError;
  GetStaffData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStaffResponseCopyWith<GetStaffResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStaffResponseCopyWith<$Res> {
  factory $GetStaffResponseCopyWith(
          GetStaffResponse value, $Res Function(GetStaffResponse) then) =
      _$GetStaffResponseCopyWithImpl<$Res, GetStaffResponse>;
  @useResult
  $Res call({String status, GetStaffData? data, String? message});

  $GetStaffDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetStaffResponseCopyWithImpl<$Res, $Val extends GetStaffResponse>
    implements $GetStaffResponseCopyWith<$Res> {
  _$GetStaffResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetStaffData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetStaffDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetStaffDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStaffResponseImplCopyWith<$Res>
    implements $GetStaffResponseCopyWith<$Res> {
  factory _$$GetStaffResponseImplCopyWith(_$GetStaffResponseImpl value,
          $Res Function(_$GetStaffResponseImpl) then) =
      __$$GetStaffResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, GetStaffData? data, String? message});

  @override
  $GetStaffDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetStaffResponseImplCopyWithImpl<$Res>
    extends _$GetStaffResponseCopyWithImpl<$Res, _$GetStaffResponseImpl>
    implements _$$GetStaffResponseImplCopyWith<$Res> {
  __$$GetStaffResponseImplCopyWithImpl(_$GetStaffResponseImpl _value,
      $Res Function(_$GetStaffResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$GetStaffResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetStaffData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStaffResponseImpl implements _GetStaffResponse {
  const _$GetStaffResponseImpl({this.status = "fail", this.data, this.message});

  factory _$GetStaffResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStaffResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final GetStaffData? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'GetStaffResponse(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffResponseImplCopyWith<_$GetStaffResponseImpl> get copyWith =>
      __$$GetStaffResponseImplCopyWithImpl<_$GetStaffResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStaffResponseImplToJson(
      this,
    );
  }
}

abstract class _GetStaffResponse implements GetStaffResponse {
  const factory _GetStaffResponse(
      {final String status,
      final GetStaffData? data,
      final String? message}) = _$GetStaffResponseImpl;

  factory _GetStaffResponse.fromJson(Map<String, dynamic> json) =
      _$GetStaffResponseImpl.fromJson;

  @override
  String get status;
  @override
  GetStaffData? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffResponseImplCopyWith<_$GetStaffResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
