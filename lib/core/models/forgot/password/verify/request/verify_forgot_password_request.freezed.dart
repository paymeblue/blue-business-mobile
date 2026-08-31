// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_forgot_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyForgotPasswordRequest {

 String get otp; String get phone;
/// Create a copy of VerifyForgotPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyForgotPasswordRequestCopyWith<VerifyForgotPasswordRequest> get copyWith => _$VerifyForgotPasswordRequestCopyWithImpl<VerifyForgotPasswordRequest>(this as VerifyForgotPasswordRequest, _$identity);

  /// Serializes this VerifyForgotPasswordRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyForgotPasswordRequest&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp,phone);

@override
String toString() {
  return 'VerifyForgotPasswordRequest(otp: $otp, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $VerifyForgotPasswordRequestCopyWith<$Res>  {
  factory $VerifyForgotPasswordRequestCopyWith(VerifyForgotPasswordRequest value, $Res Function(VerifyForgotPasswordRequest) _then) = _$VerifyForgotPasswordRequestCopyWithImpl;
@useResult
$Res call({
 String otp, String phone
});




}
/// @nodoc
class _$VerifyForgotPasswordRequestCopyWithImpl<$Res>
    implements $VerifyForgotPasswordRequestCopyWith<$Res> {
  _$VerifyForgotPasswordRequestCopyWithImpl(this._self, this._then);

  final VerifyForgotPasswordRequest _self;
  final $Res Function(VerifyForgotPasswordRequest) _then;

/// Create a copy of VerifyForgotPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? otp = null,Object? phone = null,}) {
  return _then(_self.copyWith(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyForgotPasswordRequest].
extension VerifyForgotPasswordRequestPatterns on VerifyForgotPasswordRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyForgotPasswordRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyForgotPasswordRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyForgotPasswordRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String otp,  String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequest() when $default != null:
return $default(_that.otp,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String otp,  String phone)  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequest():
return $default(_that.otp,_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String otp,  String phone)?  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequest() when $default != null:
return $default(_that.otp,_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyForgotPasswordRequest implements VerifyForgotPasswordRequest {
  const _VerifyForgotPasswordRequest({required this.otp, required this.phone});
  factory _VerifyForgotPasswordRequest.fromJson(Map<String, dynamic> json) => _$VerifyForgotPasswordRequestFromJson(json);

@override final  String otp;
@override final  String phone;

/// Create a copy of VerifyForgotPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyForgotPasswordRequestCopyWith<_VerifyForgotPasswordRequest> get copyWith => __$VerifyForgotPasswordRequestCopyWithImpl<_VerifyForgotPasswordRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyForgotPasswordRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyForgotPasswordRequest&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,otp,phone);

@override
String toString() {
  return 'VerifyForgotPasswordRequest(otp: $otp, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$VerifyForgotPasswordRequestCopyWith<$Res> implements $VerifyForgotPasswordRequestCopyWith<$Res> {
  factory _$VerifyForgotPasswordRequestCopyWith(_VerifyForgotPasswordRequest value, $Res Function(_VerifyForgotPasswordRequest) _then) = __$VerifyForgotPasswordRequestCopyWithImpl;
@override @useResult
$Res call({
 String otp, String phone
});




}
/// @nodoc
class __$VerifyForgotPasswordRequestCopyWithImpl<$Res>
    implements _$VerifyForgotPasswordRequestCopyWith<$Res> {
  __$VerifyForgotPasswordRequestCopyWithImpl(this._self, this._then);

  final _VerifyForgotPasswordRequest _self;
  final $Res Function(_VerifyForgotPasswordRequest) _then;

/// Create a copy of VerifyForgotPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? otp = null,Object? phone = null,}) {
  return _then(_VerifyForgotPasswordRequest(
otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
