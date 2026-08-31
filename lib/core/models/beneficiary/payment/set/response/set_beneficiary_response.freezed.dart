// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_beneficiary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetBeneficiaryResponse {

 String get status; String? get message;
/// Create a copy of SetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetBeneficiaryResponseCopyWith<SetBeneficiaryResponse> get copyWith => _$SetBeneficiaryResponseCopyWithImpl<SetBeneficiaryResponse>(this as SetBeneficiaryResponse, _$identity);

  /// Serializes this SetBeneficiaryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetBeneficiaryResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'SetBeneficiaryResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $SetBeneficiaryResponseCopyWith<$Res>  {
  factory $SetBeneficiaryResponseCopyWith(SetBeneficiaryResponse value, $Res Function(SetBeneficiaryResponse) _then) = _$SetBeneficiaryResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class _$SetBeneficiaryResponseCopyWithImpl<$Res>
    implements $SetBeneficiaryResponseCopyWith<$Res> {
  _$SetBeneficiaryResponseCopyWithImpl(this._self, this._then);

  final SetBeneficiaryResponse _self;
  final $Res Function(SetBeneficiaryResponse) _then;

/// Create a copy of SetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetBeneficiaryResponse].
extension SetBeneficiaryResponsePatterns on SetBeneficiaryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetBeneficiaryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetBeneficiaryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetBeneficiaryResponse value)  $default,){
final _that = this;
switch (_that) {
case _SetBeneficiaryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetBeneficiaryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SetBeneficiaryResponse() when $default != null:
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
case _SetBeneficiaryResponse() when $default != null:
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
case _SetBeneficiaryResponse():
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
case _SetBeneficiaryResponse() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetBeneficiaryResponse implements SetBeneficiaryResponse {
  const _SetBeneficiaryResponse({this.status = "fail", this.message});
  factory _SetBeneficiaryResponse.fromJson(Map<String, dynamic> json) => _$SetBeneficiaryResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;

/// Create a copy of SetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetBeneficiaryResponseCopyWith<_SetBeneficiaryResponse> get copyWith => __$SetBeneficiaryResponseCopyWithImpl<_SetBeneficiaryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetBeneficiaryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetBeneficiaryResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'SetBeneficiaryResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SetBeneficiaryResponseCopyWith<$Res> implements $SetBeneficiaryResponseCopyWith<$Res> {
  factory _$SetBeneficiaryResponseCopyWith(_SetBeneficiaryResponse value, $Res Function(_SetBeneficiaryResponse) _then) = __$SetBeneficiaryResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class __$SetBeneficiaryResponseCopyWithImpl<$Res>
    implements _$SetBeneficiaryResponseCopyWith<$Res> {
  __$SetBeneficiaryResponseCopyWithImpl(this._self, this._then);

  final _SetBeneficiaryResponse _self;
  final $Res Function(_SetBeneficiaryResponse) _then;

/// Create a copy of SetBeneficiaryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_SetBeneficiaryResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
