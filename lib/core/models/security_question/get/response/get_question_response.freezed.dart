// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetQuestionResponse _$GetQuestionResponseFromJson(Map<String, dynamic> json) {
  return _GetQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$GetQuestionResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  GetQuestionData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetQuestionResponseCopyWith<GetQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestionResponseCopyWith<$Res> {
  factory $GetQuestionResponseCopyWith(
          GetQuestionResponse value, $Res Function(GetQuestionResponse) then) =
      _$GetQuestionResponseCopyWithImpl<$Res, GetQuestionResponse>;
  @useResult
  $Res call({String status, String? message, GetQuestionData? data});

  $GetQuestionDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetQuestionResponseCopyWithImpl<$Res, $Val extends GetQuestionResponse>
    implements $GetQuestionResponseCopyWith<$Res> {
  _$GetQuestionResponseCopyWithImpl(this._value, this._then);

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
              as GetQuestionData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetQuestionDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetQuestionDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetQuestionResponseImplCopyWith<$Res>
    implements $GetQuestionResponseCopyWith<$Res> {
  factory _$$GetQuestionResponseImplCopyWith(_$GetQuestionResponseImpl value,
          $Res Function(_$GetQuestionResponseImpl) then) =
      __$$GetQuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, GetQuestionData? data});

  @override
  $GetQuestionDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetQuestionResponseImplCopyWithImpl<$Res>
    extends _$GetQuestionResponseCopyWithImpl<$Res, _$GetQuestionResponseImpl>
    implements _$$GetQuestionResponseImplCopyWith<$Res> {
  __$$GetQuestionResponseImplCopyWithImpl(_$GetQuestionResponseImpl _value,
      $Res Function(_$GetQuestionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetQuestionResponseImpl(
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
              as GetQuestionData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetQuestionResponseImpl implements _GetQuestionResponse {
  const _$GetQuestionResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$GetQuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQuestionResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final GetQuestionData? data;

  @override
  String toString() {
    return 'GetQuestionResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionResponseImpl &&
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
  _$$GetQuestionResponseImplCopyWith<_$GetQuestionResponseImpl> get copyWith =>
      __$$GetQuestionResponseImplCopyWithImpl<_$GetQuestionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetQuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _GetQuestionResponse implements GetQuestionResponse {
  const factory _GetQuestionResponse(
      {final String status,
      final String? message,
      final GetQuestionData? data}) = _$GetQuestionResponseImpl;

  factory _GetQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$GetQuestionResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  GetQuestionData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetQuestionResponseImplCopyWith<_$GetQuestionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
