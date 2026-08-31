// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendNewPhoneRequest {

 String get phone; String get userId;
/// Create a copy of SendNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendNewPhoneRequestCopyWith<SendNewPhoneRequest> get copyWith => _$SendNewPhoneRequestCopyWithImpl<SendNewPhoneRequest>(this as SendNewPhoneRequest, _$identity);

  /// Serializes this SendNewPhoneRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendNewPhoneRequest&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,userId);

@override
String toString() {
  return 'SendNewPhoneRequest(phone: $phone, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SendNewPhoneRequestCopyWith<$Res>  {
  factory $SendNewPhoneRequestCopyWith(SendNewPhoneRequest value, $Res Function(SendNewPhoneRequest) _then) = _$SendNewPhoneRequestCopyWithImpl;
@useResult
$Res call({
 String phone, String userId
});




}
/// @nodoc
class _$SendNewPhoneRequestCopyWithImpl<$Res>
    implements $SendNewPhoneRequestCopyWith<$Res> {
  _$SendNewPhoneRequestCopyWithImpl(this._self, this._then);

  final SendNewPhoneRequest _self;
  final $Res Function(SendNewPhoneRequest) _then;

/// Create a copy of SendNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? userId = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SendNewPhoneRequest].
extension SendNewPhoneRequestPatterns on SendNewPhoneRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendNewPhoneRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendNewPhoneRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendNewPhoneRequest value)  $default,){
final _that = this;
switch (_that) {
case _SendNewPhoneRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendNewPhoneRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SendNewPhoneRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendNewPhoneRequest() when $default != null:
return $default(_that.phone,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  String userId)  $default,) {final _that = this;
switch (_that) {
case _SendNewPhoneRequest():
return $default(_that.phone,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _SendNewPhoneRequest() when $default != null:
return $default(_that.phone,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendNewPhoneRequest implements SendNewPhoneRequest {
  const _SendNewPhoneRequest({required this.phone, required this.userId});
  factory _SendNewPhoneRequest.fromJson(Map<String, dynamic> json) => _$SendNewPhoneRequestFromJson(json);

@override final  String phone;
@override final  String userId;

/// Create a copy of SendNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendNewPhoneRequestCopyWith<_SendNewPhoneRequest> get copyWith => __$SendNewPhoneRequestCopyWithImpl<_SendNewPhoneRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendNewPhoneRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendNewPhoneRequest&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,userId);

@override
String toString() {
  return 'SendNewPhoneRequest(phone: $phone, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SendNewPhoneRequestCopyWith<$Res> implements $SendNewPhoneRequestCopyWith<$Res> {
  factory _$SendNewPhoneRequestCopyWith(_SendNewPhoneRequest value, $Res Function(_SendNewPhoneRequest) _then) = __$SendNewPhoneRequestCopyWithImpl;
@override @useResult
$Res call({
 String phone, String userId
});




}
/// @nodoc
class __$SendNewPhoneRequestCopyWithImpl<$Res>
    implements _$SendNewPhoneRequestCopyWith<$Res> {
  __$SendNewPhoneRequestCopyWithImpl(this._self, this._then);

  final _SendNewPhoneRequest _self;
  final $Res Function(_SendNewPhoneRequest) _then;

/// Create a copy of SendNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? userId = null,}) {
  return _then(_SendNewPhoneRequest(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
