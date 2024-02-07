// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blue_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlueMessage _$BlueMessageFromJson(Map<String, dynamic> json) {
  return _BlueMessage.fromJson(json);
}

/// @nodoc
mixin _$BlueMessage {
  String get message => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get timeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlueMessageCopyWith<BlueMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlueMessageCopyWith<$Res> {
  factory $BlueMessageCopyWith(
          BlueMessage value, $Res Function(BlueMessage) then) =
      _$BlueMessageCopyWithImpl<$Res, BlueMessage>;
  @useResult
  $Res call({String message, String senderId, String timeStamp});
}

/// @nodoc
class _$BlueMessageCopyWithImpl<$Res, $Val extends BlueMessage>
    implements $BlueMessageCopyWith<$Res> {
  _$BlueMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? senderId = null,
    Object? timeStamp = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlueMessageImplCopyWith<$Res>
    implements $BlueMessageCopyWith<$Res> {
  factory _$$BlueMessageImplCopyWith(
          _$BlueMessageImpl value, $Res Function(_$BlueMessageImpl) then) =
      __$$BlueMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String senderId, String timeStamp});
}

/// @nodoc
class __$$BlueMessageImplCopyWithImpl<$Res>
    extends _$BlueMessageCopyWithImpl<$Res, _$BlueMessageImpl>
    implements _$$BlueMessageImplCopyWith<$Res> {
  __$$BlueMessageImplCopyWithImpl(
      _$BlueMessageImpl _value, $Res Function(_$BlueMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? senderId = null,
    Object? timeStamp = null,
  }) {
    return _then(_$BlueMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlueMessageImpl implements _BlueMessage {
  const _$BlueMessageImpl(
      {required this.message, required this.senderId, required this.timeStamp});

  factory _$BlueMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlueMessageImplFromJson(json);

  @override
  final String message;
  @override
  final String senderId;
  @override
  final String timeStamp;

  @override
  String toString() {
    return 'BlueMessage(message: $message, senderId: $senderId, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlueMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, senderId, timeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlueMessageImplCopyWith<_$BlueMessageImpl> get copyWith =>
      __$$BlueMessageImplCopyWithImpl<_$BlueMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlueMessageImplToJson(
      this,
    );
  }
}

abstract class _BlueMessage implements BlueMessage {
  const factory _BlueMessage(
      {required final String message,
      required final String senderId,
      required final String timeStamp}) = _$BlueMessageImpl;

  factory _BlueMessage.fromJson(Map<String, dynamic> json) =
      _$BlueMessageImpl.fromJson;

  @override
  String get message;
  @override
  String get senderId;
  @override
  String get timeStamp;
  @override
  @JsonKey(ignore: true)
  _$$BlueMessageImplCopyWith<_$BlueMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
