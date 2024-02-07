// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_receiver_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatReceiverResponse _$ChatReceiverResponseFromJson(Map<String, dynamic> json) {
  return _ChatReceiverResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatReceiverResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ChatResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatReceiverResponseCopyWith<ChatReceiverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatReceiverResponseCopyWith<$Res> {
  factory $ChatReceiverResponseCopyWith(ChatReceiverResponse value,
          $Res Function(ChatReceiverResponse) then) =
      _$ChatReceiverResponseCopyWithImpl<$Res, ChatReceiverResponse>;
  @useResult
  $Res call({String status, String? message, ChatResponseData? data});

  $ChatResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChatReceiverResponseCopyWithImpl<$Res,
        $Val extends ChatReceiverResponse>
    implements $ChatReceiverResponseCopyWith<$Res> {
  _$ChatReceiverResponseCopyWithImpl(this._value, this._then);

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
              as ChatResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ChatResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatReceiverResponseImplCopyWith<$Res>
    implements $ChatReceiverResponseCopyWith<$Res> {
  factory _$$ChatReceiverResponseImplCopyWith(_$ChatReceiverResponseImpl value,
          $Res Function(_$ChatReceiverResponseImpl) then) =
      __$$ChatReceiverResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, ChatResponseData? data});

  @override
  $ChatResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChatReceiverResponseImplCopyWithImpl<$Res>
    extends _$ChatReceiverResponseCopyWithImpl<$Res, _$ChatReceiverResponseImpl>
    implements _$$ChatReceiverResponseImplCopyWith<$Res> {
  __$$ChatReceiverResponseImplCopyWithImpl(_$ChatReceiverResponseImpl _value,
      $Res Function(_$ChatReceiverResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChatReceiverResponseImpl(
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
              as ChatResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatReceiverResponseImpl implements _ChatReceiverResponse {
  const _$ChatReceiverResponseImpl(
      {this.status = "fail", this.message, this.data});

  factory _$ChatReceiverResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatReceiverResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  @override
  final ChatResponseData? data;

  @override
  String toString() {
    return 'ChatReceiverResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatReceiverResponseImpl &&
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
  _$$ChatReceiverResponseImplCopyWith<_$ChatReceiverResponseImpl>
      get copyWith =>
          __$$ChatReceiverResponseImplCopyWithImpl<_$ChatReceiverResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatReceiverResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatReceiverResponse implements ChatReceiverResponse {
  const factory _ChatReceiverResponse(
      {final String status,
      final String? message,
      final ChatResponseData? data}) = _$ChatReceiverResponseImpl;

  factory _ChatReceiverResponse.fromJson(Map<String, dynamic> json) =
      _$ChatReceiverResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  ChatResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChatReceiverResponseImplCopyWith<_$ChatReceiverResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
