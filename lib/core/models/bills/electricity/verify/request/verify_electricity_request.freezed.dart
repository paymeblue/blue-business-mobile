// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_electricity_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyElectricityRequest {

 String get receiver; String get meterType; String get providerId;
/// Create a copy of VerifyElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyElectricityRequestCopyWith<VerifyElectricityRequest> get copyWith => _$VerifyElectricityRequestCopyWithImpl<VerifyElectricityRequest>(this as VerifyElectricityRequest, _$identity);

  /// Serializes this VerifyElectricityRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyElectricityRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.providerId, providerId) || other.providerId == providerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,meterType,providerId);

@override
String toString() {
  return 'VerifyElectricityRequest(receiver: $receiver, meterType: $meterType, providerId: $providerId)';
}


}

/// @nodoc
abstract mixin class $VerifyElectricityRequestCopyWith<$Res>  {
  factory $VerifyElectricityRequestCopyWith(VerifyElectricityRequest value, $Res Function(VerifyElectricityRequest) _then) = _$VerifyElectricityRequestCopyWithImpl;
@useResult
$Res call({
 String receiver, String meterType, String providerId
});




}
/// @nodoc
class _$VerifyElectricityRequestCopyWithImpl<$Res>
    implements $VerifyElectricityRequestCopyWith<$Res> {
  _$VerifyElectricityRequestCopyWithImpl(this._self, this._then);

  final VerifyElectricityRequest _self;
  final $Res Function(VerifyElectricityRequest) _then;

/// Create a copy of VerifyElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiver = null,Object? meterType = null,Object? providerId = null,}) {
  return _then(_self.copyWith(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyElectricityRequest].
extension VerifyElectricityRequestPatterns on VerifyElectricityRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyElectricityRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyElectricityRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyElectricityRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyElectricityRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyElectricityRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyElectricityRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiver,  String meterType,  String providerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyElectricityRequest() when $default != null:
return $default(_that.receiver,_that.meterType,_that.providerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiver,  String meterType,  String providerId)  $default,) {final _that = this;
switch (_that) {
case _VerifyElectricityRequest():
return $default(_that.receiver,_that.meterType,_that.providerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiver,  String meterType,  String providerId)?  $default,) {final _that = this;
switch (_that) {
case _VerifyElectricityRequest() when $default != null:
return $default(_that.receiver,_that.meterType,_that.providerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyElectricityRequest implements VerifyElectricityRequest {
  const _VerifyElectricityRequest({required this.receiver, required this.meterType, required this.providerId});
  factory _VerifyElectricityRequest.fromJson(Map<String, dynamic> json) => _$VerifyElectricityRequestFromJson(json);

@override final  String receiver;
@override final  String meterType;
@override final  String providerId;

/// Create a copy of VerifyElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyElectricityRequestCopyWith<_VerifyElectricityRequest> get copyWith => __$VerifyElectricityRequestCopyWithImpl<_VerifyElectricityRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyElectricityRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyElectricityRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.meterType, meterType) || other.meterType == meterType)&&(identical(other.providerId, providerId) || other.providerId == providerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,meterType,providerId);

@override
String toString() {
  return 'VerifyElectricityRequest(receiver: $receiver, meterType: $meterType, providerId: $providerId)';
}


}

/// @nodoc
abstract mixin class _$VerifyElectricityRequestCopyWith<$Res> implements $VerifyElectricityRequestCopyWith<$Res> {
  factory _$VerifyElectricityRequestCopyWith(_VerifyElectricityRequest value, $Res Function(_VerifyElectricityRequest) _then) = __$VerifyElectricityRequestCopyWithImpl;
@override @useResult
$Res call({
 String receiver, String meterType, String providerId
});




}
/// @nodoc
class __$VerifyElectricityRequestCopyWithImpl<$Res>
    implements _$VerifyElectricityRequestCopyWith<$Res> {
  __$VerifyElectricityRequestCopyWithImpl(this._self, this._then);

  final _VerifyElectricityRequest _self;
  final $Res Function(_VerifyElectricityRequest) _then;

/// Create a copy of VerifyElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiver = null,Object? meterType = null,Object? providerId = null,}) {
  return _then(_VerifyElectricityRequest(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,meterType: null == meterType ? _self.meterType : meterType // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
