// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_business_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBusinessProfileResponse _$CreateBusinessProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateBusinessProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateBusinessProfileResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CreateBusinessProfileData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBusinessProfileResponseCopyWith<CreateBusinessProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBusinessProfileResponseCopyWith<$Res> {
  factory $CreateBusinessProfileResponseCopyWith(
          CreateBusinessProfileResponse value,
          $Res Function(CreateBusinessProfileResponse) then) =
      _$CreateBusinessProfileResponseCopyWithImpl<$Res,
          CreateBusinessProfileResponse>;
  @useResult
  $Res call({String status, String? message, CreateBusinessProfileData? data});

  $CreateBusinessProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateBusinessProfileResponseCopyWithImpl<$Res,
        $Val extends CreateBusinessProfileResponse>
    implements $CreateBusinessProfileResponseCopyWith<$Res> {
  _$CreateBusinessProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as CreateBusinessProfileData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateBusinessProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateBusinessProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBusinessProfileResponseImplCopyWith<$Res>
    implements $CreateBusinessProfileResponseCopyWith<$Res> {
  factory _$$CreateBusinessProfileResponseImplCopyWith(
          _$CreateBusinessProfileResponseImpl value,
          $Res Function(_$CreateBusinessProfileResponseImpl) then) =
      __$$CreateBusinessProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, CreateBusinessProfileData? data});

  @override
  $CreateBusinessProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateBusinessProfileResponseImplCopyWithImpl<$Res>
    extends _$CreateBusinessProfileResponseCopyWithImpl<$Res,
        _$CreateBusinessProfileResponseImpl>
    implements _$$CreateBusinessProfileResponseImplCopyWith<$Res> {
  __$$CreateBusinessProfileResponseImplCopyWithImpl(
      _$CreateBusinessProfileResponseImpl _value,
      $Res Function(_$CreateBusinessProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateBusinessProfileResponseImpl(
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
              as CreateBusinessProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBusinessProfileResponseImpl
    implements _CreateBusinessProfileResponse {
  const _$CreateBusinessProfileResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$CreateBusinessProfileResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateBusinessProfileResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final CreateBusinessProfileData? data;

  @override
  String toString() {
    return 'CreateBusinessProfileResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBusinessProfileResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBusinessProfileResponseImplCopyWith<
          _$CreateBusinessProfileResponseImpl>
      get copyWith => __$$CreateBusinessProfileResponseImplCopyWithImpl<
          _$CreateBusinessProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBusinessProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateBusinessProfileResponse
    implements CreateBusinessProfileResponse {
  const factory _CreateBusinessProfileResponse(
          {final String status,
          final String? message,
          final CreateBusinessProfileData? data}) =
      _$CreateBusinessProfileResponseImpl;

  factory _CreateBusinessProfileResponse.fromJson(Map<String, dynamic> json) =
      _$CreateBusinessProfileResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  CreateBusinessProfileData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateBusinessProfileResponseImplCopyWith<
          _$CreateBusinessProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
