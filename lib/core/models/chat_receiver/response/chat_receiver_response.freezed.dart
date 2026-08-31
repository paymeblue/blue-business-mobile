// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_receiver_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatReceiverResponse {

 String get status; String? get message; ChatResponseData? get data;
/// Create a copy of ChatReceiverResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatReceiverResponseCopyWith<ChatReceiverResponse> get copyWith => _$ChatReceiverResponseCopyWithImpl<ChatReceiverResponse>(this as ChatReceiverResponse, _$identity);

  /// Serializes this ChatReceiverResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatReceiverResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'ChatReceiverResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $ChatReceiverResponseCopyWith<$Res>  {
  factory $ChatReceiverResponseCopyWith(ChatReceiverResponse value, $Res Function(ChatReceiverResponse) _then) = _$ChatReceiverResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, ChatResponseData? data
});


$ChatResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ChatReceiverResponseCopyWithImpl<$Res>
    implements $ChatReceiverResponseCopyWith<$Res> {
  _$ChatReceiverResponseCopyWithImpl(this._self, this._then);

  final ChatReceiverResponse _self;
  final $Res Function(ChatReceiverResponse) _then;

/// Create a copy of ChatReceiverResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatResponseData?,
  ));
}
/// Create a copy of ChatReceiverResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatReceiverResponse].
extension ChatReceiverResponsePatterns on ChatReceiverResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatReceiverResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatReceiverResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatReceiverResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatReceiverResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatReceiverResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatReceiverResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  ChatResponseData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatReceiverResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  ChatResponseData? data)  $default,) {final _that = this;
switch (_that) {
case _ChatReceiverResponse():
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  ChatResponseData? data)?  $default,) {final _that = this;
switch (_that) {
case _ChatReceiverResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatReceiverResponse implements ChatReceiverResponse {
  const _ChatReceiverResponse({this.status = "fail", this.message, this.data});
  factory _ChatReceiverResponse.fromJson(Map<String, dynamic> json) => _$ChatReceiverResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  ChatResponseData? data;

/// Create a copy of ChatReceiverResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatReceiverResponseCopyWith<_ChatReceiverResponse> get copyWith => __$ChatReceiverResponseCopyWithImpl<_ChatReceiverResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatReceiverResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatReceiverResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'ChatReceiverResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChatReceiverResponseCopyWith<$Res> implements $ChatReceiverResponseCopyWith<$Res> {
  factory _$ChatReceiverResponseCopyWith(_ChatReceiverResponse value, $Res Function(_ChatReceiverResponse) _then) = __$ChatReceiverResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, ChatResponseData? data
});


@override $ChatResponseDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ChatReceiverResponseCopyWithImpl<$Res>
    implements _$ChatReceiverResponseCopyWith<$Res> {
  __$ChatReceiverResponseCopyWithImpl(this._self, this._then);

  final _ChatReceiverResponse _self;
  final $Res Function(_ChatReceiverResponse) _then;

/// Create a copy of ChatReceiverResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_ChatReceiverResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ChatResponseData?,
  ));
}

/// Create a copy of ChatReceiverResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatResponseDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ChatResponseDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
