// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_staff_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateStaffResponse {

 String get status; String get message;
/// Create a copy of CreateStaffResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateStaffResponseCopyWith<CreateStaffResponse> get copyWith => _$CreateStaffResponseCopyWithImpl<CreateStaffResponse>(this as CreateStaffResponse, _$identity);

  /// Serializes this CreateStaffResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStaffResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CreateStaffResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateStaffResponseCopyWith<$Res>  {
  factory $CreateStaffResponseCopyWith(CreateStaffResponse value, $Res Function(CreateStaffResponse) _then) = _$CreateStaffResponseCopyWithImpl;
@useResult
$Res call({
 String status, String message
});




}
/// @nodoc
class _$CreateStaffResponseCopyWithImpl<$Res>
    implements $CreateStaffResponseCopyWith<$Res> {
  _$CreateStaffResponseCopyWithImpl(this._self, this._then);

  final CreateStaffResponse _self;
  final $Res Function(CreateStaffResponse) _then;

/// Create a copy of CreateStaffResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateStaffResponse].
extension CreateStaffResponsePatterns on CreateStaffResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateStaffResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateStaffResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateStaffResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateStaffResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateStaffResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateStaffResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateStaffResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message)  $default,) {final _that = this;
switch (_that) {
case _CreateStaffResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _CreateStaffResponse() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateStaffResponse implements CreateStaffResponse {
  const _CreateStaffResponse({this.status = "fail", this.message = ""});
  factory _CreateStaffResponse.fromJson(Map<String, dynamic> json) => _$CreateStaffResponseFromJson(json);

@override@JsonKey() final  String status;
@override@JsonKey() final  String message;

/// Create a copy of CreateStaffResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateStaffResponseCopyWith<_CreateStaffResponse> get copyWith => __$CreateStaffResponseCopyWithImpl<_CreateStaffResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateStaffResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateStaffResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CreateStaffResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateStaffResponseCopyWith<$Res> implements $CreateStaffResponseCopyWith<$Res> {
  factory _$CreateStaffResponseCopyWith(_CreateStaffResponse value, $Res Function(_CreateStaffResponse) _then) = __$CreateStaffResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String message
});




}
/// @nodoc
class __$CreateStaffResponseCopyWithImpl<$Res>
    implements _$CreateStaffResponseCopyWith<$Res> {
  __$CreateStaffResponseCopyWithImpl(this._self, this._then);

  final _CreateStaffResponse _self;
  final $Res Function(_CreateStaffResponse) _then;

/// Create a copy of CreateStaffResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,}) {
  return _then(_CreateStaffResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
