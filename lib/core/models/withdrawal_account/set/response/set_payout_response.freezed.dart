// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_payout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetPayoutResponse _$SetPayoutResponseFromJson(Map<String, dynamic> json) {
  return _SetPayoutResponse.fromJson(json);
}

/// @nodoc
mixin _$SetPayoutResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SetPayoutData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetPayoutResponseCopyWith<SetPayoutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPayoutResponseCopyWith<$Res> {
  factory $SetPayoutResponseCopyWith(
          SetPayoutResponse value, $Res Function(SetPayoutResponse) then) =
      _$SetPayoutResponseCopyWithImpl<$Res, SetPayoutResponse>;
  @useResult
  $Res call({String status, String? message, SetPayoutData? data});

  $SetPayoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SetPayoutResponseCopyWithImpl<$Res, $Val extends SetPayoutResponse>
    implements $SetPayoutResponseCopyWith<$Res> {
  _$SetPayoutResponseCopyWithImpl(this._value, this._then);

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
              as SetPayoutData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetPayoutDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SetPayoutDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetPayoutResponseImplCopyWith<$Res>
    implements $SetPayoutResponseCopyWith<$Res> {
  factory _$$SetPayoutResponseImplCopyWith(_$SetPayoutResponseImpl value,
          $Res Function(_$SetPayoutResponseImpl) then) =
      __$$SetPayoutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, SetPayoutData? data});

  @override
  $SetPayoutDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetPayoutResponseImplCopyWithImpl<$Res>
    extends _$SetPayoutResponseCopyWithImpl<$Res, _$SetPayoutResponseImpl>
    implements _$$SetPayoutResponseImplCopyWith<$Res> {
  __$$SetPayoutResponseImplCopyWithImpl(_$SetPayoutResponseImpl _value,
      $Res Function(_$SetPayoutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SetPayoutResponseImpl(
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
              as SetPayoutData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetPayoutResponseImpl implements _SetPayoutResponse {
  const _$SetPayoutResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$SetPayoutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPayoutResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final SetPayoutData? data;

  @override
  String toString() {
    return 'SetPayoutResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPayoutResponseImpl &&
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
  _$$SetPayoutResponseImplCopyWith<_$SetPayoutResponseImpl> get copyWith =>
      __$$SetPayoutResponseImplCopyWithImpl<_$SetPayoutResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPayoutResponseImplToJson(
      this,
    );
  }
}

abstract class _SetPayoutResponse implements SetPayoutResponse {
  const factory _SetPayoutResponse(
      {final String status,
      final String? message,
      final SetPayoutData? data}) = _$SetPayoutResponseImpl;

  factory _SetPayoutResponse.fromJson(Map<String, dynamic> json) =
      _$SetPayoutResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  SetPayoutData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetPayoutResponseImplCopyWith<_$SetPayoutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
