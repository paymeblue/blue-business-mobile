// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteRegistrationRequest {

 int get userId; String get pin;
/// Create a copy of CompleteRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteRegistrationRequestCopyWith<CompleteRegistrationRequest> get copyWith => _$CompleteRegistrationRequestCopyWithImpl<CompleteRegistrationRequest>(this as CompleteRegistrationRequest, _$identity);

  /// Serializes this CompleteRegistrationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteRegistrationRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,pin);

@override
String toString() {
  return 'CompleteRegistrationRequest(userId: $userId, pin: $pin)';
}


}

/// @nodoc
abstract mixin class $CompleteRegistrationRequestCopyWith<$Res>  {
  factory $CompleteRegistrationRequestCopyWith(CompleteRegistrationRequest value, $Res Function(CompleteRegistrationRequest) _then) = _$CompleteRegistrationRequestCopyWithImpl;
@useResult
$Res call({
 int userId, String pin
});




}
/// @nodoc
class _$CompleteRegistrationRequestCopyWithImpl<$Res>
    implements $CompleteRegistrationRequestCopyWith<$Res> {
  _$CompleteRegistrationRequestCopyWithImpl(this._self, this._then);

  final CompleteRegistrationRequest _self;
  final $Res Function(CompleteRegistrationRequest) _then;

/// Create a copy of CompleteRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? pin = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CompleteRegistrationRequest].
extension CompleteRegistrationRequestPatterns on CompleteRegistrationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteRegistrationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteRegistrationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteRegistrationRequest value)  $default,){
final _that = this;
switch (_that) {
case _CompleteRegistrationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteRegistrationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteRegistrationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String pin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteRegistrationRequest() when $default != null:
return $default(_that.userId,_that.pin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String pin)  $default,) {final _that = this;
switch (_that) {
case _CompleteRegistrationRequest():
return $default(_that.userId,_that.pin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String pin)?  $default,) {final _that = this;
switch (_that) {
case _CompleteRegistrationRequest() when $default != null:
return $default(_that.userId,_that.pin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteRegistrationRequest implements CompleteRegistrationRequest {
  const _CompleteRegistrationRequest({required this.userId, required this.pin});
  factory _CompleteRegistrationRequest.fromJson(Map<String, dynamic> json) => _$CompleteRegistrationRequestFromJson(json);

@override final  int userId;
@override final  String pin;

/// Create a copy of CompleteRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteRegistrationRequestCopyWith<_CompleteRegistrationRequest> get copyWith => __$CompleteRegistrationRequestCopyWithImpl<_CompleteRegistrationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteRegistrationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteRegistrationRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,pin);

@override
String toString() {
  return 'CompleteRegistrationRequest(userId: $userId, pin: $pin)';
}


}

/// @nodoc
abstract mixin class _$CompleteRegistrationRequestCopyWith<$Res> implements $CompleteRegistrationRequestCopyWith<$Res> {
  factory _$CompleteRegistrationRequestCopyWith(_CompleteRegistrationRequest value, $Res Function(_CompleteRegistrationRequest) _then) = __$CompleteRegistrationRequestCopyWithImpl;
@override @useResult
$Res call({
 int userId, String pin
});




}
/// @nodoc
class __$CompleteRegistrationRequestCopyWithImpl<$Res>
    implements _$CompleteRegistrationRequestCopyWith<$Res> {
  __$CompleteRegistrationRequestCopyWithImpl(this._self, this._then);

  final _CompleteRegistrationRequest _self;
  final $Res Function(_CompleteRegistrationRequest) _then;

/// Create a copy of CompleteRegistrationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? pin = null,}) {
  return _then(_CompleteRegistrationRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
