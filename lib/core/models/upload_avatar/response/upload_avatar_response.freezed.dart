// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_avatar_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadAvatarResponse _$UploadAvatarResponseFromJson(Map<String, dynamic> json) {
  return _UploadAvatarResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadAvatarResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UploadAvatarResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadAvatarResponseCopyWith<UploadAvatarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadAvatarResponseCopyWith<$Res> {
  factory $UploadAvatarResponseCopyWith(UploadAvatarResponse value,
          $Res Function(UploadAvatarResponse) then) =
      _$UploadAvatarResponseCopyWithImpl<$Res, UploadAvatarResponse>;
  @useResult
  $Res call({String status, String? message, UploadAvatarResponseData? data});

  $UploadAvatarResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UploadAvatarResponseCopyWithImpl<$Res,
        $Val extends UploadAvatarResponse>
    implements $UploadAvatarResponseCopyWith<$Res> {
  _$UploadAvatarResponseCopyWithImpl(this._value, this._then);

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
              as UploadAvatarResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadAvatarResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UploadAvatarResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UploadAvatarResponseImplCopyWith<$Res>
    implements $UploadAvatarResponseCopyWith<$Res> {
  factory _$$UploadAvatarResponseImplCopyWith(_$UploadAvatarResponseImpl value,
          $Res Function(_$UploadAvatarResponseImpl) then) =
      __$$UploadAvatarResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, UploadAvatarResponseData? data});

  @override
  $UploadAvatarResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UploadAvatarResponseImplCopyWithImpl<$Res>
    extends _$UploadAvatarResponseCopyWithImpl<$Res, _$UploadAvatarResponseImpl>
    implements _$$UploadAvatarResponseImplCopyWith<$Res> {
  __$$UploadAvatarResponseImplCopyWithImpl(_$UploadAvatarResponseImpl _value,
      $Res Function(_$UploadAvatarResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UploadAvatarResponseImpl(
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
              as UploadAvatarResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadAvatarResponseImpl implements _UploadAvatarResponse {
  const _$UploadAvatarResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$UploadAvatarResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadAvatarResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final UploadAvatarResponseData? data;

  @override
  String toString() {
    return 'UploadAvatarResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarResponseImpl &&
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
  _$$UploadAvatarResponseImplCopyWith<_$UploadAvatarResponseImpl>
      get copyWith =>
          __$$UploadAvatarResponseImplCopyWithImpl<_$UploadAvatarResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadAvatarResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadAvatarResponse implements UploadAvatarResponse {
  const factory _UploadAvatarResponse(
      {final String status,
      final String? message,
      final UploadAvatarResponseData? data}) = _$UploadAvatarResponseImpl;

  factory _UploadAvatarResponse.fromJson(Map<String, dynamic> json) =
      _$UploadAvatarResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  UploadAvatarResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UploadAvatarResponseImplCopyWith<_$UploadAvatarResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
