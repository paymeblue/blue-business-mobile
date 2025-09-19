// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_pin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPinRequest {

 String get newPin;
/// Create a copy of ResetPinRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPinRequestCopyWith<ResetPinRequest> get copyWith => _$ResetPinRequestCopyWithImpl<ResetPinRequest>(this as ResetPinRequest, _$identity);

  /// Serializes this ResetPinRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPinRequest&&(identical(other.newPin, newPin) || other.newPin == newPin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPin);

@override
String toString() {
  return 'ResetPinRequest(newPin: $newPin)';
}


}

/// @nodoc
abstract mixin class $ResetPinRequestCopyWith<$Res>  {
  factory $ResetPinRequestCopyWith(ResetPinRequest value, $Res Function(ResetPinRequest) _then) = _$ResetPinRequestCopyWithImpl;
@useResult
$Res call({
 String newPin
});




}
/// @nodoc
class _$ResetPinRequestCopyWithImpl<$Res>
    implements $ResetPinRequestCopyWith<$Res> {
  _$ResetPinRequestCopyWithImpl(this._self, this._then);

  final ResetPinRequest _self;
  final $Res Function(ResetPinRequest) _then;

/// Create a copy of ResetPinRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newPin = null,}) {
  return _then(_self.copyWith(
newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPinRequest].
extension ResetPinRequestPatterns on ResetPinRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPinRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPinRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPinRequest value)  $default,){
final _that = this;
switch (_that) {
case _ResetPinRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPinRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPinRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String newPin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPinRequest() when $default != null:
return $default(_that.newPin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String newPin)  $default,) {final _that = this;
switch (_that) {
case _ResetPinRequest():
return $default(_that.newPin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String newPin)?  $default,) {final _that = this;
switch (_that) {
case _ResetPinRequest() when $default != null:
return $default(_that.newPin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResetPinRequest implements ResetPinRequest {
  const _ResetPinRequest({required this.newPin});
  factory _ResetPinRequest.fromJson(Map<String, dynamic> json) => _$ResetPinRequestFromJson(json);

@override final  String newPin;

/// Create a copy of ResetPinRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPinRequestCopyWith<_ResetPinRequest> get copyWith => __$ResetPinRequestCopyWithImpl<_ResetPinRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResetPinRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPinRequest&&(identical(other.newPin, newPin) || other.newPin == newPin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPin);

@override
String toString() {
  return 'ResetPinRequest(newPin: $newPin)';
}


}

/// @nodoc
abstract mixin class _$ResetPinRequestCopyWith<$Res> implements $ResetPinRequestCopyWith<$Res> {
  factory _$ResetPinRequestCopyWith(_ResetPinRequest value, $Res Function(_ResetPinRequest) _then) = __$ResetPinRequestCopyWithImpl;
@override @useResult
$Res call({
 String newPin
});




}
/// @nodoc
class __$ResetPinRequestCopyWithImpl<$Res>
    implements _$ResetPinRequestCopyWith<$Res> {
  __$ResetPinRequestCopyWithImpl(this._self, this._then);

  final _ResetPinRequest _self;
  final $Res Function(_ResetPinRequest) _then;

/// Create a copy of ResetPinRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newPin = null,}) {
  return _then(_ResetPinRequest(
newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
