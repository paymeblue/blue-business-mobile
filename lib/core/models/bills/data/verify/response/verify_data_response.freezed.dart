// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyDataResponse _$VerifyDataResponseFromJson(Map<String, dynamic> json) {
  return _VerifyDataResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyDataResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VerifyDataData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyDataResponseCopyWith<VerifyDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyDataResponseCopyWith<$Res> {
  factory $VerifyDataResponseCopyWith(
          VerifyDataResponse value, $Res Function(VerifyDataResponse) then) =
      _$VerifyDataResponseCopyWithImpl<$Res, VerifyDataResponse>;
  @useResult
  $Res call({String status, String? message, VerifyDataData? data});

  $VerifyDataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyDataResponseCopyWithImpl<$Res, $Val extends VerifyDataResponse>
    implements $VerifyDataResponseCopyWith<$Res> {
  _$VerifyDataResponseCopyWithImpl(this._value, this._then);

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
              as VerifyDataData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyDataDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VerifyDataDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyDataResponseImplCopyWith<$Res>
    implements $VerifyDataResponseCopyWith<$Res> {
  factory _$$VerifyDataResponseImplCopyWith(_$VerifyDataResponseImpl value,
          $Res Function(_$VerifyDataResponseImpl) then) =
      __$$VerifyDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VerifyDataData? data});

  @override
  $VerifyDataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VerifyDataResponseImplCopyWithImpl<$Res>
    extends _$VerifyDataResponseCopyWithImpl<$Res, _$VerifyDataResponseImpl>
    implements _$$VerifyDataResponseImplCopyWith<$Res> {
  __$$VerifyDataResponseImplCopyWithImpl(_$VerifyDataResponseImpl _value,
      $Res Function(_$VerifyDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VerifyDataResponseImpl(
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
              as VerifyDataData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyDataResponseImpl implements _VerifyDataResponse {
  const _$VerifyDataResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$VerifyDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyDataResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VerifyDataData? data;

  @override
  String toString() {
    return 'VerifyDataResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyDataResponseImpl &&
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
  _$$VerifyDataResponseImplCopyWith<_$VerifyDataResponseImpl> get copyWith =>
      __$$VerifyDataResponseImplCopyWithImpl<_$VerifyDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyDataResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyDataResponse implements VerifyDataResponse {
  const factory _VerifyDataResponse(
      {final String status,
      final String? message,
      final VerifyDataData? data}) = _$VerifyDataResponseImpl;

  factory _VerifyDataResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyDataResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VerifyDataData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VerifyDataResponseImplCopyWith<_$VerifyDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
