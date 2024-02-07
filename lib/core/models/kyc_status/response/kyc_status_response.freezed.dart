// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KycStatusResponse _$KycStatusResponseFromJson(Map<String, dynamic> json) {
  return _KycStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$KycStatusResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  KycStatusData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycStatusResponseCopyWith<KycStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStatusResponseCopyWith<$Res> {
  factory $KycStatusResponseCopyWith(
          KycStatusResponse value, $Res Function(KycStatusResponse) then) =
      _$KycStatusResponseCopyWithImpl<$Res, KycStatusResponse>;
  @useResult
  $Res call({String status, String? message, KycStatusData? data});

  $KycStatusDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$KycStatusResponseCopyWithImpl<$Res, $Val extends KycStatusResponse>
    implements $KycStatusResponseCopyWith<$Res> {
  _$KycStatusResponseCopyWithImpl(this._value, this._then);

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
              as KycStatusData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KycStatusDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $KycStatusDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KycStatusResponseImplCopyWith<$Res>
    implements $KycStatusResponseCopyWith<$Res> {
  factory _$$KycStatusResponseImplCopyWith(_$KycStatusResponseImpl value,
          $Res Function(_$KycStatusResponseImpl) then) =
      __$$KycStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, KycStatusData? data});

  @override
  $KycStatusDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$KycStatusResponseImplCopyWithImpl<$Res>
    extends _$KycStatusResponseCopyWithImpl<$Res, _$KycStatusResponseImpl>
    implements _$$KycStatusResponseImplCopyWith<$Res> {
  __$$KycStatusResponseImplCopyWithImpl(_$KycStatusResponseImpl _value,
      $Res Function(_$KycStatusResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$KycStatusResponseImpl(
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
              as KycStatusData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStatusResponseImpl implements _KycStatusResponse {
  const _$KycStatusResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$KycStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStatusResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final KycStatusData? data;

  @override
  String toString() {
    return 'KycStatusResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStatusResponseImpl &&
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
  _$$KycStatusResponseImplCopyWith<_$KycStatusResponseImpl> get copyWith =>
      __$$KycStatusResponseImplCopyWithImpl<_$KycStatusResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycStatusResponseImplToJson(
      this,
    );
  }
}

abstract class _KycStatusResponse implements KycStatusResponse {
  const factory _KycStatusResponse(
      {final String status,
      final String? message,
      final KycStatusData? data}) = _$KycStatusResponseImpl;

  factory _KycStatusResponse.fromJson(Map<String, dynamic> json) =
      _$KycStatusResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  KycStatusData? get data;
  @override
  @JsonKey(ignore: true)
  _$$KycStatusResponseImplCopyWith<_$KycStatusResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
