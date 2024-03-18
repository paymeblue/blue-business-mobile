// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_pay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PushPayResponse _$PushPayResponseFromJson(Map<String, dynamic> json) {
  return _PushPayResponse.fromJson(json);
}

/// @nodoc
mixin _$PushPayResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PushPayData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushPayResponseCopyWith<PushPayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushPayResponseCopyWith<$Res> {
  factory $PushPayResponseCopyWith(
          PushPayResponse value, $Res Function(PushPayResponse) then) =
      _$PushPayResponseCopyWithImpl<$Res, PushPayResponse>;
  @useResult
  $Res call({String status, String? message, PushPayData? data});

  $PushPayDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PushPayResponseCopyWithImpl<$Res, $Val extends PushPayResponse>
    implements $PushPayResponseCopyWith<$Res> {
  _$PushPayResponseCopyWithImpl(this._value, this._then);

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
              as PushPayData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PushPayDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PushPayDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PushPayResponseImplCopyWith<$Res>
    implements $PushPayResponseCopyWith<$Res> {
  factory _$$PushPayResponseImplCopyWith(_$PushPayResponseImpl value,
          $Res Function(_$PushPayResponseImpl) then) =
      __$$PushPayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, PushPayData? data});

  @override
  $PushPayDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PushPayResponseImplCopyWithImpl<$Res>
    extends _$PushPayResponseCopyWithImpl<$Res, _$PushPayResponseImpl>
    implements _$$PushPayResponseImplCopyWith<$Res> {
  __$$PushPayResponseImplCopyWithImpl(
      _$PushPayResponseImpl _value, $Res Function(_$PushPayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PushPayResponseImpl(
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
              as PushPayData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushPayResponseImpl implements _PushPayResponse {
  const _$PushPayResponseImpl({this.status = "fail", this.message, this.data});

  factory _$PushPayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushPayResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final PushPayData? data;

  @override
  String toString() {
    return 'PushPayResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushPayResponseImpl &&
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
  _$$PushPayResponseImplCopyWith<_$PushPayResponseImpl> get copyWith =>
      __$$PushPayResponseImplCopyWithImpl<_$PushPayResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushPayResponseImplToJson(
      this,
    );
  }
}

abstract class _PushPayResponse implements PushPayResponse {
  const factory _PushPayResponse(
      {final String status,
      final String? message,
      final PushPayData? data}) = _$PushPayResponseImpl;

  factory _PushPayResponse.fromJson(Map<String, dynamic> json) =
      _$PushPayResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  PushPayData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PushPayResponseImplCopyWith<_$PushPayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
