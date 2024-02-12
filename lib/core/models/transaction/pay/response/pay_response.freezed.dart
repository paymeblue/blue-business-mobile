// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayResponse _$PayResponseFromJson(Map<String, dynamic> json) {
  return _PayResponse.fromJson(json);
}

/// @nodoc
mixin _$PayResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PayData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayResponseCopyWith<PayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayResponseCopyWith<$Res> {
  factory $PayResponseCopyWith(
          PayResponse value, $Res Function(PayResponse) then) =
      _$PayResponseCopyWithImpl<$Res, PayResponse>;
  @useResult
  $Res call({String status, String? message, PayData? data});

  $PayDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PayResponseCopyWithImpl<$Res, $Val extends PayResponse>
    implements $PayResponseCopyWith<$Res> {
  _$PayResponseCopyWithImpl(this._value, this._then);

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
              as PayData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PayDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayResponseImplCopyWith<$Res>
    implements $PayResponseCopyWith<$Res> {
  factory _$$PayResponseImplCopyWith(
          _$PayResponseImpl value, $Res Function(_$PayResponseImpl) then) =
      __$$PayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, PayData? data});

  @override
  $PayDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PayResponseImplCopyWithImpl<$Res>
    extends _$PayResponseCopyWithImpl<$Res, _$PayResponseImpl>
    implements _$$PayResponseImplCopyWith<$Res> {
  __$$PayResponseImplCopyWithImpl(
      _$PayResponseImpl _value, $Res Function(_$PayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PayResponseImpl(
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
              as PayData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayResponseImpl implements _PayResponse {
  const _$PayResponseImpl({this.status = "fail", this.message, this.data});

  factory _$PayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final PayData? data;

  @override
  String toString() {
    return 'PayResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayResponseImpl &&
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
  _$$PayResponseImplCopyWith<_$PayResponseImpl> get copyWith =>
      __$$PayResponseImplCopyWithImpl<_$PayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayResponseImplToJson(
      this,
    );
  }
}

abstract class _PayResponse implements PayResponse {
  const factory _PayResponse(
      {final String status,
      final String? message,
      final PayData? data}) = _$PayResponseImpl;

  factory _PayResponse.fromJson(Map<String, dynamic> json) =
      _$PayResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  PayData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PayResponseImplCopyWith<_$PayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
