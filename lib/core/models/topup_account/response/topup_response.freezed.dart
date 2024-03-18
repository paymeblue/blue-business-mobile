// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopupResponse _$TopupResponseFromJson(Map<String, dynamic> json) {
  return _TopupResponse.fromJson(json);
}

/// @nodoc
mixin _$TopupResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  TopupAccount? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopupResponseCopyWith<TopupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopupResponseCopyWith<$Res> {
  factory $TopupResponseCopyWith(
          TopupResponse value, $Res Function(TopupResponse) then) =
      _$TopupResponseCopyWithImpl<$Res, TopupResponse>;
  @useResult
  $Res call({String status, String? message, TopupAccount? data});

  $TopupAccountCopyWith<$Res>? get data;
}

/// @nodoc
class _$TopupResponseCopyWithImpl<$Res, $Val extends TopupResponse>
    implements $TopupResponseCopyWith<$Res> {
  _$TopupResponseCopyWithImpl(this._value, this._then);

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
              as TopupAccount?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopupAccountCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TopupAccountCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopupResponseImplCopyWith<$Res>
    implements $TopupResponseCopyWith<$Res> {
  factory _$$TopupResponseImplCopyWith(
          _$TopupResponseImpl value, $Res Function(_$TopupResponseImpl) then) =
      __$$TopupResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, TopupAccount? data});

  @override
  $TopupAccountCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TopupResponseImplCopyWithImpl<$Res>
    extends _$TopupResponseCopyWithImpl<$Res, _$TopupResponseImpl>
    implements _$$TopupResponseImplCopyWith<$Res> {
  __$$TopupResponseImplCopyWithImpl(
      _$TopupResponseImpl _value, $Res Function(_$TopupResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TopupResponseImpl(
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
              as TopupAccount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopupResponseImpl implements _TopupResponse {
  const _$TopupResponseImpl({this.status = "fail", this.message, this.data});

  factory _$TopupResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopupResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final TopupAccount? data;

  @override
  String toString() {
    return 'TopupResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopupResponseImpl &&
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
  _$$TopupResponseImplCopyWith<_$TopupResponseImpl> get copyWith =>
      __$$TopupResponseImplCopyWithImpl<_$TopupResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopupResponseImplToJson(
      this,
    );
  }
}

abstract class _TopupResponse implements TopupResponse {
  const factory _TopupResponse(
      {final String status,
      final String? message,
      final TopupAccount? data}) = _$TopupResponseImpl;

  factory _TopupResponse.fromJson(Map<String, dynamic> json) =
      _$TopupResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  TopupAccount? get data;
  @override
  @JsonKey(ignore: true)
  _$$TopupResponseImplCopyWith<_$TopupResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
