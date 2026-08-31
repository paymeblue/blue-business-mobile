// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePinRequest {

 String get oldPin; String get newPin; String get confirmPin;
/// Create a copy of ChangePinRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePinRequestCopyWith<ChangePinRequest> get copyWith => _$ChangePinRequestCopyWithImpl<ChangePinRequest>(this as ChangePinRequest, _$identity);

  /// Serializes this ChangePinRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePinRequest&&(identical(other.oldPin, oldPin) || other.oldPin == oldPin)&&(identical(other.newPin, newPin) || other.newPin == newPin)&&(identical(other.confirmPin, confirmPin) || other.confirmPin == confirmPin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldPin,newPin,confirmPin);

@override
String toString() {
  return 'ChangePinRequest(oldPin: $oldPin, newPin: $newPin, confirmPin: $confirmPin)';
}


}

/// @nodoc
abstract mixin class $ChangePinRequestCopyWith<$Res>  {
  factory $ChangePinRequestCopyWith(ChangePinRequest value, $Res Function(ChangePinRequest) _then) = _$ChangePinRequestCopyWithImpl;
@useResult
$Res call({
 String oldPin, String newPin, String confirmPin
});




}
/// @nodoc
class _$ChangePinRequestCopyWithImpl<$Res>
    implements $ChangePinRequestCopyWith<$Res> {
  _$ChangePinRequestCopyWithImpl(this._self, this._then);

  final ChangePinRequest _self;
  final $Res Function(ChangePinRequest) _then;

/// Create a copy of ChangePinRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oldPin = null,Object? newPin = null,Object? confirmPin = null,}) {
  return _then(_self.copyWith(
oldPin: null == oldPin ? _self.oldPin : oldPin // ignore: cast_nullable_to_non_nullable
as String,newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,confirmPin: null == confirmPin ? _self.confirmPin : confirmPin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePinRequest].
extension ChangePinRequestPatterns on ChangePinRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePinRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePinRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePinRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChangePinRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePinRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePinRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String oldPin,  String newPin,  String confirmPin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePinRequest() when $default != null:
return $default(_that.oldPin,_that.newPin,_that.confirmPin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String oldPin,  String newPin,  String confirmPin)  $default,) {final _that = this;
switch (_that) {
case _ChangePinRequest():
return $default(_that.oldPin,_that.newPin,_that.confirmPin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String oldPin,  String newPin,  String confirmPin)?  $default,) {final _that = this;
switch (_that) {
case _ChangePinRequest() when $default != null:
return $default(_that.oldPin,_that.newPin,_that.confirmPin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePinRequest implements ChangePinRequest {
  const _ChangePinRequest({required this.oldPin, required this.newPin, required this.confirmPin});
  factory _ChangePinRequest.fromJson(Map<String, dynamic> json) => _$ChangePinRequestFromJson(json);

@override final  String oldPin;
@override final  String newPin;
@override final  String confirmPin;

/// Create a copy of ChangePinRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePinRequestCopyWith<_ChangePinRequest> get copyWith => __$ChangePinRequestCopyWithImpl<_ChangePinRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePinRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePinRequest&&(identical(other.oldPin, oldPin) || other.oldPin == oldPin)&&(identical(other.newPin, newPin) || other.newPin == newPin)&&(identical(other.confirmPin, confirmPin) || other.confirmPin == confirmPin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oldPin,newPin,confirmPin);

@override
String toString() {
  return 'ChangePinRequest(oldPin: $oldPin, newPin: $newPin, confirmPin: $confirmPin)';
}


}

/// @nodoc
abstract mixin class _$ChangePinRequestCopyWith<$Res> implements $ChangePinRequestCopyWith<$Res> {
  factory _$ChangePinRequestCopyWith(_ChangePinRequest value, $Res Function(_ChangePinRequest) _then) = __$ChangePinRequestCopyWithImpl;
@override @useResult
$Res call({
 String oldPin, String newPin, String confirmPin
});




}
/// @nodoc
class __$ChangePinRequestCopyWithImpl<$Res>
    implements _$ChangePinRequestCopyWith<$Res> {
  __$ChangePinRequestCopyWithImpl(this._self, this._then);

  final _ChangePinRequest _self;
  final $Res Function(_ChangePinRequest) _then;

/// Create a copy of ChangePinRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oldPin = null,Object? newPin = null,Object? confirmPin = null,}) {
  return _then(_ChangePinRequest(
oldPin: null == oldPin ? _self.oldPin : oldPin // ignore: cast_nullable_to_non_nullable
as String,newPin: null == newPin ? _self.newPin : newPin // ignore: cast_nullable_to_non_nullable
as String,confirmPin: null == confirmPin ? _self.confirmPin : confirmPin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
