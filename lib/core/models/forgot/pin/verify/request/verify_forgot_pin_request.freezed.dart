// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_forgot_pin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyForgotPinRequest {

 String get otp; String get recoveryPhone;
/// Create a copy of VerifyForgotPinRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyForgotPinRequestCopyWith<VerifyForgotPinRequest> get copyWith => _$VerifyForgotPinRequestCopyWithImpl<VerifyForgotPinRequest>(this as VerifyForgotPinRequest, _$identity);

  /// Serializes this VerifyForgotPinRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyForgotPinRequest&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.recoveryPhone, recoveryPhone) || other.recoveryPhone == recoveryPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp,recoveryPhone);

@override
String toString() {
  return 'VerifyForgotPinRequest(otp: $otp, recoveryPhone: $recoveryPhone)';
}


}

/// @nodoc
abstract mixin class $VerifyForgotPinRequestCopyWith<$Res>  {
  factory $VerifyForgotPinRequestCopyWith(VerifyForgotPinRequest value, $Res Function(VerifyForgotPinRequest) _then) = _$VerifyForgotPinRequestCopyWithImpl;
@useResult
$Res call({
 String otp, String recoveryPhone
});




}
/// @nodoc
class _$VerifyForgotPinRequestCopyWithImpl<$Res>
    implements $VerifyForgotPinRequestCopyWith<$Res> {
  _$VerifyForgotPinRequestCopyWithImpl(this._self, this._then);

  final VerifyForgotPinRequest _self;
  final $Res Function(VerifyForgotPinRequest) _then;

/// Create a copy of VerifyForgotPinRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? otp = null,Object? recoveryPhone = null,}) {
  return _then(_self.copyWith(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,recoveryPhone: null == recoveryPhone ? _self.recoveryPhone : recoveryPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyForgotPinRequest].
extension VerifyForgotPinRequestPatterns on VerifyForgotPinRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyForgotPinRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyForgotPinRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyForgotPinRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPinRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyForgotPinRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPinRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String otp,  String recoveryPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyForgotPinRequest() when $default != null:
return $default(_that.otp,_that.recoveryPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String otp,  String recoveryPhone)  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPinRequest():
return $default(_that.otp,_that.recoveryPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String otp,  String recoveryPhone)?  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPinRequest() when $default != null:
return $default(_that.otp,_that.recoveryPhone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyForgotPinRequest implements VerifyForgotPinRequest {
  const _VerifyForgotPinRequest({required this.otp, required this.recoveryPhone});
  factory _VerifyForgotPinRequest.fromJson(Map<String, dynamic> json) => _$VerifyForgotPinRequestFromJson(json);

@override final  String otp;
@override final  String recoveryPhone;

/// Create a copy of VerifyForgotPinRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyForgotPinRequestCopyWith<_VerifyForgotPinRequest> get copyWith => __$VerifyForgotPinRequestCopyWithImpl<_VerifyForgotPinRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyForgotPinRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyForgotPinRequest&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.recoveryPhone, recoveryPhone) || other.recoveryPhone == recoveryPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp,recoveryPhone);

@override
String toString() {
  return 'VerifyForgotPinRequest(otp: $otp, recoveryPhone: $recoveryPhone)';
}


}

/// @nodoc
abstract mixin class _$VerifyForgotPinRequestCopyWith<$Res> implements $VerifyForgotPinRequestCopyWith<$Res> {
  factory _$VerifyForgotPinRequestCopyWith(_VerifyForgotPinRequest value, $Res Function(_VerifyForgotPinRequest) _then) = __$VerifyForgotPinRequestCopyWithImpl;
@override @useResult
$Res call({
 String otp, String recoveryPhone
});




}
/// @nodoc
class __$VerifyForgotPinRequestCopyWithImpl<$Res>
    implements _$VerifyForgotPinRequestCopyWith<$Res> {
  __$VerifyForgotPinRequestCopyWithImpl(this._self, this._then);

  final _VerifyForgotPinRequest _self;
  final $Res Function(_VerifyForgotPinRequest) _then;

/// Create a copy of VerifyForgotPinRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,Object? recoveryPhone = null,}) {
  return _then(_VerifyForgotPinRequest(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,recoveryPhone: null == recoveryPhone ? _self.recoveryPhone : recoveryPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
