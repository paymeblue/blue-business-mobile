// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Chat {

 String get channelId; String get sender; String get receiver; String get timeStamp; String get fcmToken; String get senderName; String get peerToken; String get updateType; String? get message; int get unreadCount;
/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCopyWith<Chat> get copyWith => _$ChatCopyWithImpl<Chat>(this as Chat, _$identity);

  /// Serializes this Chat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chat&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.peerToken, peerToken) || other.peerToken == peerToken)&&(identical(other.updateType, updateType) || other.updateType == updateType)&&(identical(other.message, message) || other.message == message)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channelId,sender,receiver,timeStamp,fcmToken,senderName,peerToken,updateType,message,unreadCount);

@override
String toString() {
  return 'Chat(channelId: $channelId, sender: $sender, receiver: $receiver, timeStamp: $timeStamp, fcmToken: $fcmToken, senderName: $senderName, peerToken: $peerToken, updateType: $updateType, message: $message, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class $ChatCopyWith<$Res>  {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) _then) = _$ChatCopyWithImpl;
@useResult
$Res call({
 String channelId, String sender, String receiver, String timeStamp, String fcmToken, String senderName, String peerToken, String updateType, String? message, int unreadCount
});




}
/// @nodoc
class _$ChatCopyWithImpl<$Res>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._self, this._then);

  final Chat _self;
  final $Res Function(Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channelId = null,Object? sender = null,Object? receiver = null,Object? timeStamp = null,Object? fcmToken = null,Object? senderName = null,Object? peerToken = null,Object? updateType = null,Object? message = freezed,Object? unreadCount = null,}) {
  return _then(_self.copyWith(
channelId: null == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,peerToken: null == peerToken ? _self.peerToken : peerToken // ignore: cast_nullable_to_non_nullable
as String,updateType: null == updateType ? _self.updateType : updateType // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Chat].
extension ChatPatterns on Chat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Chat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Chat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Chat value)  $default,){
final _that = this;
switch (_that) {
case _Chat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Chat value)?  $default,){
final _that = this;
switch (_that) {
case _Chat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String channelId,  String sender,  String receiver,  String timeStamp,  String fcmToken,  String senderName,  String peerToken,  String updateType,  String? message,  int unreadCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.channelId,_that.sender,_that.receiver,_that.timeStamp,_that.fcmToken,_that.senderName,_that.peerToken,_that.updateType,_that.message,_that.unreadCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String channelId,  String sender,  String receiver,  String timeStamp,  String fcmToken,  String senderName,  String peerToken,  String updateType,  String? message,  int unreadCount)  $default,) {final _that = this;
switch (_that) {
case _Chat():
return $default(_that.channelId,_that.sender,_that.receiver,_that.timeStamp,_that.fcmToken,_that.senderName,_that.peerToken,_that.updateType,_that.message,_that.unreadCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String channelId,  String sender,  String receiver,  String timeStamp,  String fcmToken,  String senderName,  String peerToken,  String updateType,  String? message,  int unreadCount)?  $default,) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.channelId,_that.sender,_that.receiver,_that.timeStamp,_that.fcmToken,_that.senderName,_that.peerToken,_that.updateType,_that.message,_that.unreadCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Chat implements Chat {
  const _Chat({required this.channelId, required this.sender, required this.receiver, required this.timeStamp, required this.fcmToken, required this.senderName, required this.peerToken, this.updateType = "message", this.message, this.unreadCount = 0});
  factory _Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

@override final  String channelId;
@override final  String sender;
@override final  String receiver;
@override final  String timeStamp;
@override final  String fcmToken;
@override final  String senderName;
@override final  String peerToken;
@override@JsonKey() final  String updateType;
@override final  String? message;
@override@JsonKey() final  int unreadCount;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCopyWith<_Chat> get copyWith => __$ChatCopyWithImpl<_Chat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chat&&(identical(other.channelId, channelId) || other.channelId == channelId)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.peerToken, peerToken) || other.peerToken == peerToken)&&(identical(other.updateType, updateType) || other.updateType == updateType)&&(identical(other.message, message) || other.message == message)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channelId,sender,receiver,timeStamp,fcmToken,senderName,peerToken,updateType,message,unreadCount);

@override
String toString() {
  return 'Chat(channelId: $channelId, sender: $sender, receiver: $receiver, timeStamp: $timeStamp, fcmToken: $fcmToken, senderName: $senderName, peerToken: $peerToken, updateType: $updateType, message: $message, unreadCount: $unreadCount)';
}


}

/// @nodoc
abstract mixin class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) _then) = __$ChatCopyWithImpl;
@override @useResult
$Res call({
 String channelId, String sender, String receiver, String timeStamp, String fcmToken, String senderName, String peerToken, String updateType, String? message, int unreadCount
});




}
/// @nodoc
class __$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(this._self, this._then);

  final _Chat _self;
  final $Res Function(_Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channelId = null,Object? sender = null,Object? receiver = null,Object? timeStamp = null,Object? fcmToken = null,Object? senderName = null,Object? peerToken = null,Object? updateType = null,Object? message = freezed,Object? unreadCount = null,}) {
  return _then(_Chat(
channelId: null == channelId ? _self.channelId : channelId // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,peerToken: null == peerToken ? _self.peerToken : peerToken // ignore: cast_nullable_to_non_nullable
as String,updateType: null == updateType ? _self.updateType : updateType // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
