// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blue_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlueMessage {

 String get message; String get senderId; String get timeStamp;
/// Create a copy of BlueMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlueMessageCopyWith<BlueMessage> get copyWith => _$BlueMessageCopyWithImpl<BlueMessage>(this as BlueMessage, _$identity);

  /// Serializes this BlueMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlueMessage&&(identical(other.message, message) || other.message == message)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,senderId,timeStamp);

@override
String toString() {
  return 'BlueMessage(message: $message, senderId: $senderId, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class $BlueMessageCopyWith<$Res>  {
  factory $BlueMessageCopyWith(BlueMessage value, $Res Function(BlueMessage) _then) = _$BlueMessageCopyWithImpl;
@useResult
$Res call({
 String message, String senderId, String timeStamp
});




}
/// @nodoc
class _$BlueMessageCopyWithImpl<$Res>
    implements $BlueMessageCopyWith<$Res> {
  _$BlueMessageCopyWithImpl(this._self, this._then);

  final BlueMessage _self;
  final $Res Function(BlueMessage) _then;

/// Create a copy of BlueMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? senderId = null,Object? timeStamp = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BlueMessage].
extension BlueMessagePatterns on BlueMessage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlueMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlueMessage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlueMessage value)  $default,){
final _that = this;
switch (_that) {
case _BlueMessage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlueMessage value)?  $default,){
final _that = this;
switch (_that) {
case _BlueMessage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String senderId,  String timeStamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlueMessage() when $default != null:
return $default(_that.message,_that.senderId,_that.timeStamp);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String senderId,  String timeStamp)  $default,) {final _that = this;
switch (_that) {
case _BlueMessage():
return $default(_that.message,_that.senderId,_that.timeStamp);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String senderId,  String timeStamp)?  $default,) {final _that = this;
switch (_that) {
case _BlueMessage() when $default != null:
return $default(_that.message,_that.senderId,_that.timeStamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlueMessage implements BlueMessage {
  const _BlueMessage({required this.message, required this.senderId, required this.timeStamp});
  factory _BlueMessage.fromJson(Map<String, dynamic> json) => _$BlueMessageFromJson(json);

@override final  String message;
@override final  String senderId;
@override final  String timeStamp;

/// Create a copy of BlueMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlueMessageCopyWith<_BlueMessage> get copyWith => __$BlueMessageCopyWithImpl<_BlueMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlueMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlueMessage&&(identical(other.message, message) || other.message == message)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,senderId,timeStamp);

@override
String toString() {
  return 'BlueMessage(message: $message, senderId: $senderId, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class _$BlueMessageCopyWith<$Res> implements $BlueMessageCopyWith<$Res> {
  factory _$BlueMessageCopyWith(_BlueMessage value, $Res Function(_BlueMessage) _then) = __$BlueMessageCopyWithImpl;
@override @useResult
$Res call({
 String message, String senderId, String timeStamp
});




}
/// @nodoc
class __$BlueMessageCopyWithImpl<$Res>
    implements _$BlueMessageCopyWith<$Res> {
  __$BlueMessageCopyWithImpl(this._self, this._then);

  final _BlueMessage _self;
  final $Res Function(_BlueMessage) _then;

/// Create a copy of BlueMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? senderId = null,Object? timeStamp = null,}) {
  return _then(_BlueMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
