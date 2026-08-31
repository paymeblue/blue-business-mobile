// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_phone_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendNewPhoneResponse {

 String get status; String? get message;
/// Create a copy of SendNewPhoneResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendNewPhoneResponseCopyWith<SendNewPhoneResponse> get copyWith => _$SendNewPhoneResponseCopyWithImpl<SendNewPhoneResponse>(this as SendNewPhoneResponse, _$identity);

  /// Serializes this SendNewPhoneResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendNewPhoneResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'SendNewPhoneResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $SendNewPhoneResponseCopyWith<$Res>  {
  factory $SendNewPhoneResponseCopyWith(SendNewPhoneResponse value, $Res Function(SendNewPhoneResponse) _then) = _$SendNewPhoneResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class _$SendNewPhoneResponseCopyWithImpl<$Res>
    implements $SendNewPhoneResponseCopyWith<$Res> {
  _$SendNewPhoneResponseCopyWithImpl(this._self, this._then);

  final SendNewPhoneResponse _self;
  final $Res Function(SendNewPhoneResponse) _then;

/// Create a copy of SendNewPhoneResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendNewPhoneResponse].
extension SendNewPhoneResponsePatterns on SendNewPhoneResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendNewPhoneResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendNewPhoneResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendNewPhoneResponse value)  $default,){
final _that = this;
switch (_that) {
case _SendNewPhoneResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendNewPhoneResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SendNewPhoneResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendNewPhoneResponse() when $default != null:
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message)  $default,) {final _that = this;
switch (_that) {
case _SendNewPhoneResponse():
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _SendNewPhoneResponse() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendNewPhoneResponse implements SendNewPhoneResponse {
  const _SendNewPhoneResponse({this.status = "fail", this.message});
  factory _SendNewPhoneResponse.fromJson(Map<String, dynamic> json) => _$SendNewPhoneResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;

/// Create a copy of SendNewPhoneResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendNewPhoneResponseCopyWith<_SendNewPhoneResponse> get copyWith => __$SendNewPhoneResponseCopyWithImpl<_SendNewPhoneResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendNewPhoneResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendNewPhoneResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'SendNewPhoneResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SendNewPhoneResponseCopyWith<$Res> implements $SendNewPhoneResponseCopyWith<$Res> {
  factory _$SendNewPhoneResponseCopyWith(_SendNewPhoneResponse value, $Res Function(_SendNewPhoneResponse) _then) = __$SendNewPhoneResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class __$SendNewPhoneResponseCopyWithImpl<$Res>
    implements _$SendNewPhoneResponseCopyWith<$Res> {
  __$SendNewPhoneResponseCopyWithImpl(this._self, this._then);

  final _SendNewPhoneResponse _self;
  final $Res Function(_SendNewPhoneResponse) _then;

/// Create a copy of SendNewPhoneResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_SendNewPhoneResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
