// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_new_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyNewPhoneRequest {

 String get otp; String get reference;
/// Create a copy of VerifyNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyNewPhoneRequestCopyWith<VerifyNewPhoneRequest> get copyWith => _$VerifyNewPhoneRequestCopyWithImpl<VerifyNewPhoneRequest>(this as VerifyNewPhoneRequest, _$identity);

  /// Serializes this VerifyNewPhoneRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyNewPhoneRequest&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp,reference);

@override
String toString() {
  return 'VerifyNewPhoneRequest(otp: $otp, reference: $reference)';
}


}

/// @nodoc
abstract mixin class $VerifyNewPhoneRequestCopyWith<$Res>  {
  factory $VerifyNewPhoneRequestCopyWith(VerifyNewPhoneRequest value, $Res Function(VerifyNewPhoneRequest) _then) = _$VerifyNewPhoneRequestCopyWithImpl;
@useResult
$Res call({
 String otp, String reference
});




}
/// @nodoc
class _$VerifyNewPhoneRequestCopyWithImpl<$Res>
    implements $VerifyNewPhoneRequestCopyWith<$Res> {
  _$VerifyNewPhoneRequestCopyWithImpl(this._self, this._then);

  final VerifyNewPhoneRequest _self;
  final $Res Function(VerifyNewPhoneRequest) _then;

/// Create a copy of VerifyNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? otp = null,Object? reference = null,}) {
  return _then(_self.copyWith(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyNewPhoneRequest].
extension VerifyNewPhoneRequestPatterns on VerifyNewPhoneRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyNewPhoneRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyNewPhoneRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyNewPhoneRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyNewPhoneRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyNewPhoneRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyNewPhoneRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String otp,  String reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyNewPhoneRequest() when $default != null:
return $default(_that.otp,_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String otp,  String reference)  $default,) {final _that = this;
switch (_that) {
case _VerifyNewPhoneRequest():
return $default(_that.otp,_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String otp,  String reference)?  $default,) {final _that = this;
switch (_that) {
case _VerifyNewPhoneRequest() when $default != null:
return $default(_that.otp,_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyNewPhoneRequest implements VerifyNewPhoneRequest {
  const _VerifyNewPhoneRequest({required this.otp, required this.reference});
  factory _VerifyNewPhoneRequest.fromJson(Map<String, dynamic> json) => _$VerifyNewPhoneRequestFromJson(json);

@override final  String otp;
@override final  String reference;

/// Create a copy of VerifyNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyNewPhoneRequestCopyWith<_VerifyNewPhoneRequest> get copyWith => __$VerifyNewPhoneRequestCopyWithImpl<_VerifyNewPhoneRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyNewPhoneRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyNewPhoneRequest&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp,reference);

@override
String toString() {
  return 'VerifyNewPhoneRequest(otp: $otp, reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$VerifyNewPhoneRequestCopyWith<$Res> implements $VerifyNewPhoneRequestCopyWith<$Res> {
  factory _$VerifyNewPhoneRequestCopyWith(_VerifyNewPhoneRequest value, $Res Function(_VerifyNewPhoneRequest) _then) = __$VerifyNewPhoneRequestCopyWithImpl;
@override @useResult
$Res call({
 String otp, String reference
});




}
/// @nodoc
class __$VerifyNewPhoneRequestCopyWithImpl<$Res>
    implements _$VerifyNewPhoneRequestCopyWith<$Res> {
  __$VerifyNewPhoneRequestCopyWithImpl(this._self, this._then);

  final _VerifyNewPhoneRequest _self;
  final $Res Function(_VerifyNewPhoneRequest) _then;

/// Create a copy of VerifyNewPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,Object? reference = null,}) {
  return _then(_VerifyNewPhoneRequest(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
