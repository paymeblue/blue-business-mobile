// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPayoutResponse _$VerifyPayoutResponseFromJson(Map<String, dynamic> json) {
  return _VerifyPayoutResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyPayoutResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VerifyPayoutData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyPayoutResponseCopyWith<VerifyPayoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPayoutResponseCopyWith<$Res> {
  factory $VerifyPayoutResponseCopyWith(VerifyPayoutResponse value,
          $Res Function(VerifyPayoutResponse) then) =
      _$VerifyPayoutResponseCopyWithImpl<$Res, VerifyPayoutResponse>;
  @useResult
  $Res call({String status, String? message, VerifyPayoutData? data});

  $VerifyPayoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyPayoutResponseCopyWithImpl<$Res,
        $Val extends VerifyPayoutResponse>
    implements $VerifyPayoutResponseCopyWith<$Res> {
  _$VerifyPayoutResponseCopyWithImpl(this._value, this._then);

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
              as VerifyPayoutData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyPayoutDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VerifyPayoutDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyPayoutResponseImplCopyWith<$Res>
    implements $VerifyPayoutResponseCopyWith<$Res> {
  factory _$$VerifyPayoutResponseImplCopyWith(_$VerifyPayoutResponseImpl value,
          $Res Function(_$VerifyPayoutResponseImpl) then) =
      __$$VerifyPayoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VerifyPayoutData? data});

  @override
  $VerifyPayoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VerifyPayoutResponseImplCopyWithImpl<$Res>
    extends _$VerifyPayoutResponseCopyWithImpl<$Res, _$VerifyPayoutResponseImpl>
    implements _$$VerifyPayoutResponseImplCopyWith<$Res> {
  __$$VerifyPayoutResponseImplCopyWithImpl(_$VerifyPayoutResponseImpl _value,
      $Res Function(_$VerifyPayoutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VerifyPayoutResponseImpl(
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
              as VerifyPayoutData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPayoutResponseImpl implements _VerifyPayoutResponse {
  const _$VerifyPayoutResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$VerifyPayoutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPayoutResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VerifyPayoutData? data;

  @override
  String toString() {
    return 'VerifyPayoutResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPayoutResponseImpl &&
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
  _$$VerifyPayoutResponseImplCopyWith<_$VerifyPayoutResponseImpl>
      get copyWith =>
          __$$VerifyPayoutResponseImplCopyWithImpl<_$VerifyPayoutResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPayoutResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyPayoutResponse implements VerifyPayoutResponse {
  const factory _VerifyPayoutResponse(
      {final String status,
      final String? message,
      final VerifyPayoutData? data}) = _$VerifyPayoutResponseImpl;

  factory _VerifyPayoutResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyPayoutResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VerifyPayoutData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPayoutResponseImplCopyWith<_$VerifyPayoutResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
