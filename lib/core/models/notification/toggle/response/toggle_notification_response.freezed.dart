// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toggle_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToggleNotificationResponse {

 String get status; String? get message;
/// Create a copy of ToggleNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleNotificationResponseCopyWith<ToggleNotificationResponse> get copyWith => _$ToggleNotificationResponseCopyWithImpl<ToggleNotificationResponse>(this as ToggleNotificationResponse, _$identity);

  /// Serializes this ToggleNotificationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleNotificationResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'ToggleNotificationResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $ToggleNotificationResponseCopyWith<$Res>  {
  factory $ToggleNotificationResponseCopyWith(ToggleNotificationResponse value, $Res Function(ToggleNotificationResponse) _then) = _$ToggleNotificationResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class _$ToggleNotificationResponseCopyWithImpl<$Res>
    implements $ToggleNotificationResponseCopyWith<$Res> {
  _$ToggleNotificationResponseCopyWithImpl(this._self, this._then);

  final ToggleNotificationResponse _self;
  final $Res Function(ToggleNotificationResponse) _then;

/// Create a copy of ToggleNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ToggleNotificationResponse].
extension ToggleNotificationResponsePatterns on ToggleNotificationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ToggleNotificationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ToggleNotificationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ToggleNotificationResponse value)  $default,){
final _that = this;
switch (_that) {
case _ToggleNotificationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ToggleNotificationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ToggleNotificationResponse() when $default != null:
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
case _ToggleNotificationResponse() when $default != null:
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
case _ToggleNotificationResponse():
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
case _ToggleNotificationResponse() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ToggleNotificationResponse implements ToggleNotificationResponse {
  const _ToggleNotificationResponse({this.status = "fail", this.message});
  factory _ToggleNotificationResponse.fromJson(Map<String, dynamic> json) => _$ToggleNotificationResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;

/// Create a copy of ToggleNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleNotificationResponseCopyWith<_ToggleNotificationResponse> get copyWith => __$ToggleNotificationResponseCopyWithImpl<_ToggleNotificationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ToggleNotificationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleNotificationResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'ToggleNotificationResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ToggleNotificationResponseCopyWith<$Res> implements $ToggleNotificationResponseCopyWith<$Res> {
  factory _$ToggleNotificationResponseCopyWith(_ToggleNotificationResponse value, $Res Function(_ToggleNotificationResponse) _then) = __$ToggleNotificationResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class __$ToggleNotificationResponseCopyWithImpl<$Res>
    implements _$ToggleNotificationResponseCopyWith<$Res> {
  __$ToggleNotificationResponseCopyWithImpl(this._self, this._then);

  final _ToggleNotificationResponse _self;
  final $Res Function(_ToggleNotificationResponse) _then;

/// Create a copy of ToggleNotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_ToggleNotificationResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
