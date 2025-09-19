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
mixin _$SendRecoverPinRequest {

 String? get recoveryPhone; String get validationMode; String? get securityAnswer;
/// Create a copy of SendRecoverPinRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendRecoverPinRequestCopyWith<SendRecoverPinRequest> get copyWith => _$SendRecoverPinRequestCopyWithImpl<SendRecoverPinRequest>(this as SendRecoverPinRequest, _$identity);

  /// Serializes this SendRecoverPinRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendRecoverPinRequest&&(identical(other.recoveryPhone, recoveryPhone) || other.recoveryPhone == recoveryPhone)&&(identical(other.validationMode, validationMode) || other.validationMode == validationMode)&&(identical(other.securityAnswer, securityAnswer) || other.securityAnswer == securityAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recoveryPhone,validationMode,securityAnswer);

@override
String toString() {
  return 'SendRecoverPinRequest(recoveryPhone: $recoveryPhone, validationMode: $validationMode, securityAnswer: $securityAnswer)';
}


}

/// @nodoc
abstract mixin class $SendRecoverPinRequestCopyWith<$Res>  {
  factory $SendRecoverPinRequestCopyWith(SendRecoverPinRequest value, $Res Function(SendRecoverPinRequest) _then) = _$SendRecoverPinRequestCopyWithImpl;
@useResult
$Res call({
 String? recoveryPhone, String validationMode, String? securityAnswer
});




}
/// @nodoc
class _$SendRecoverPinRequestCopyWithImpl<$Res>
    implements $SendRecoverPinRequestCopyWith<$Res> {
  _$SendRecoverPinRequestCopyWithImpl(this._self, this._then);

  final SendRecoverPinRequest _self;
  final $Res Function(SendRecoverPinRequest) _then;

/// Create a copy of SendRecoverPinRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? recoveryPhone = freezed,Object? validationMode = null,Object? securityAnswer = freezed,}) {
  return _then(_self.copyWith(
recoveryPhone: freezed == recoveryPhone ? _self.recoveryPhone : recoveryPhone // ignore: cast_nullable_to_non_nullable
as String?,validationMode: null == validationMode ? _self.validationMode : validationMode // ignore: cast_nullable_to_non_nullable
as String,securityAnswer: freezed == securityAnswer ? _self.securityAnswer : securityAnswer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendRecoverPinRequest].
extension SendRecoverPinRequestPatterns on SendRecoverPinRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendRecoverPinRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendRecoverPinRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendRecoverPinRequest value)  $default,){
final _that = this;
switch (_that) {
case _SendRecoverPinRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendRecoverPinRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SendRecoverPinRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? recoveryPhone,  String validationMode,  String? securityAnswer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendRecoverPinRequest() when $default != null:
return $default(_that.recoveryPhone,_that.validationMode,_that.securityAnswer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? recoveryPhone,  String validationMode,  String? securityAnswer)  $default,) {final _that = this;
switch (_that) {
case _SendRecoverPinRequest():
return $default(_that.recoveryPhone,_that.validationMode,_that.securityAnswer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? recoveryPhone,  String validationMode,  String? securityAnswer)?  $default,) {final _that = this;
switch (_that) {
case _SendRecoverPinRequest() when $default != null:
return $default(_that.recoveryPhone,_that.validationMode,_that.securityAnswer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendRecoverPinRequest implements SendRecoverPinRequest {
  const _SendRecoverPinRequest({this.recoveryPhone, this.validationMode = "recovery-phone", this.securityAnswer});
  factory _SendRecoverPinRequest.fromJson(Map<String, dynamic> json) => _$SendRecoverPinRequestFromJson(json);

@override final  String? recoveryPhone;
@override@JsonKey() final  String validationMode;
@override final  String? securityAnswer;

/// Create a copy of SendRecoverPinRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendRecoverPinRequestCopyWith<_SendRecoverPinRequest> get copyWith => __$SendRecoverPinRequestCopyWithImpl<_SendRecoverPinRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendRecoverPinRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendRecoverPinRequest&&(identical(other.recoveryPhone, recoveryPhone) || other.recoveryPhone == recoveryPhone)&&(identical(other.validationMode, validationMode) || other.validationMode == validationMode)&&(identical(other.securityAnswer, securityAnswer) || other.securityAnswer == securityAnswer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,recoveryPhone,validationMode,securityAnswer);

@override
String toString() {
  return 'SendRecoverPinRequest(recoveryPhone: $recoveryPhone, validationMode: $validationMode, securityAnswer: $securityAnswer)';
}


}

/// @nodoc
abstract mixin class _$SendRecoverPinRequestCopyWith<$Res> implements $SendRecoverPinRequestCopyWith<$Res> {
  factory _$SendRecoverPinRequestCopyWith(_SendRecoverPinRequest value, $Res Function(_SendRecoverPinRequest) _then) = __$SendRecoverPinRequestCopyWithImpl;
@override @useResult
$Res call({
 String? recoveryPhone, String validationMode, String? securityAnswer
});




}
/// @nodoc
class __$SendRecoverPinRequestCopyWithImpl<$Res>
    implements _$SendRecoverPinRequestCopyWith<$Res> {
  __$SendRecoverPinRequestCopyWithImpl(this._self, this._then);

  final _SendRecoverPinRequest _self;
  final $Res Function(_SendRecoverPinRequest) _then;

/// Create a copy of SendRecoverPinRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? recoveryPhone = freezed,Object? validationMode = null,Object? securityAnswer = freezed,}) {
  return _then(_SendRecoverPinRequest(
recoveryPhone: freezed == recoveryPhone ? _self.recoveryPhone : recoveryPhone // ignore: cast_nullable_to_non_nullable
as String?,validationMode: null == validationMode ? _self.validationMode : validationMode // ignore: cast_nullable_to_non_nullable
as String,securityAnswer: freezed == securityAnswer ? _self.securityAnswer : securityAnswer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
