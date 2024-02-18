// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_receiver_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifiedReceiverResponse _$VerifiedReceiverResponseFromJson(
    Map<String, dynamic> json) {
  return _VerifiedReceiverResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifiedReceiverResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VerifiedReceiverData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifiedReceiverResponseCopyWith<VerifiedReceiverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiedReceiverResponseCopyWith<$Res> {
  factory $VerifiedReceiverResponseCopyWith(VerifiedReceiverResponse value,
          $Res Function(VerifiedReceiverResponse) then) =
      _$VerifiedReceiverResponseCopyWithImpl<$Res, VerifiedReceiverResponse>;
  @useResult
  $Res call({String status, String? message, VerifiedReceiverData? data});

  $VerifiedReceiverDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifiedReceiverResponseCopyWithImpl<$Res,
        $Val extends VerifiedReceiverResponse>
    implements $VerifiedReceiverResponseCopyWith<$Res> {
  _$VerifiedReceiverResponseCopyWithImpl(this._value, this._then);

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
              as VerifiedReceiverData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifiedReceiverDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VerifiedReceiverDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifiedReceiverResponseImplCopyWith<$Res>
    implements $VerifiedReceiverResponseCopyWith<$Res> {
  factory _$$VerifiedReceiverResponseImplCopyWith(
          _$VerifiedReceiverResponseImpl value,
          $Res Function(_$VerifiedReceiverResponseImpl) then) =
      __$$VerifiedReceiverResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, VerifiedReceiverData? data});

  @override
  $VerifiedReceiverDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VerifiedReceiverResponseImplCopyWithImpl<$Res>
    extends _$VerifiedReceiverResponseCopyWithImpl<$Res,
        _$VerifiedReceiverResponseImpl>
    implements _$$VerifiedReceiverResponseImplCopyWith<$Res> {
  __$$VerifiedReceiverResponseImplCopyWithImpl(
      _$VerifiedReceiverResponseImpl _value,
      $Res Function(_$VerifiedReceiverResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VerifiedReceiverResponseImpl(
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
              as VerifiedReceiverData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifiedReceiverResponseImpl implements _VerifiedReceiverResponse {
  const _$VerifiedReceiverResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$VerifiedReceiverResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiedReceiverResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final VerifiedReceiverData? data;

  @override
  String toString() {
    return 'VerifiedReceiverResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiedReceiverResponseImpl &&
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
  _$$VerifiedReceiverResponseImplCopyWith<_$VerifiedReceiverResponseImpl>
      get copyWith => __$$VerifiedReceiverResponseImplCopyWithImpl<
          _$VerifiedReceiverResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiedReceiverResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifiedReceiverResponse implements VerifiedReceiverResponse {
  const factory _VerifiedReceiverResponse(
      {final String status,
      final String? message,
      final VerifiedReceiverData? data}) = _$VerifiedReceiverResponseImpl;

  factory _VerifiedReceiverResponse.fromJson(Map<String, dynamic> json) =
      _$VerifiedReceiverResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  VerifiedReceiverData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VerifiedReceiverResponseImplCopyWith<_$VerifiedReceiverResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
