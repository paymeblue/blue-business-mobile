// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_airtime_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendAirtimeRequest {

 String get receiver; String get passcode; String get amount; String get providerId;
/// Create a copy of VendAirtimeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendAirtimeRequestCopyWith<VendAirtimeRequest> get copyWith => _$VendAirtimeRequestCopyWithImpl<VendAirtimeRequest>(this as VendAirtimeRequest, _$identity);

  /// Serializes this VendAirtimeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendAirtimeRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.providerId, providerId) || other.providerId == providerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,passcode,amount,providerId);

@override
String toString() {
  return 'VendAirtimeRequest(receiver: $receiver, passcode: $passcode, amount: $amount, providerId: $providerId)';
}


}

/// @nodoc
abstract mixin class $VendAirtimeRequestCopyWith<$Res>  {
  factory $VendAirtimeRequestCopyWith(VendAirtimeRequest value, $Res Function(VendAirtimeRequest) _then) = _$VendAirtimeRequestCopyWithImpl;
@useResult
$Res call({
 String receiver, String passcode, String amount, String providerId
});




}
/// @nodoc
class _$VendAirtimeRequestCopyWithImpl<$Res>
    implements $VendAirtimeRequestCopyWith<$Res> {
  _$VendAirtimeRequestCopyWithImpl(this._self, this._then);

  final VendAirtimeRequest _self;
  final $Res Function(VendAirtimeRequest) _then;

/// Create a copy of VendAirtimeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiver = null,Object? passcode = null,Object? amount = null,Object? providerId = null,}) {
  return _then(_self.copyWith(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VendAirtimeRequest].
extension VendAirtimeRequestPatterns on VendAirtimeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendAirtimeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendAirtimeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendAirtimeRequest value)  $default,){
final _that = this;
switch (_that) {
case _VendAirtimeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendAirtimeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VendAirtimeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiver,  String passcode,  String amount,  String providerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendAirtimeRequest() when $default != null:
return $default(_that.receiver,_that.passcode,_that.amount,_that.providerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiver,  String passcode,  String amount,  String providerId)  $default,) {final _that = this;
switch (_that) {
case _VendAirtimeRequest():
return $default(_that.receiver,_that.passcode,_that.amount,_that.providerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiver,  String passcode,  String amount,  String providerId)?  $default,) {final _that = this;
switch (_that) {
case _VendAirtimeRequest() when $default != null:
return $default(_that.receiver,_that.passcode,_that.amount,_that.providerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendAirtimeRequest implements VendAirtimeRequest {
  const _VendAirtimeRequest({required this.receiver, required this.passcode, required this.amount, required this.providerId});
  factory _VendAirtimeRequest.fromJson(Map<String, dynamic> json) => _$VendAirtimeRequestFromJson(json);

@override final  String receiver;
@override final  String passcode;
@override final  String amount;
@override final  String providerId;

/// Create a copy of VendAirtimeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendAirtimeRequestCopyWith<_VendAirtimeRequest> get copyWith => __$VendAirtimeRequestCopyWithImpl<_VendAirtimeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendAirtimeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendAirtimeRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.providerId, providerId) || other.providerId == providerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,passcode,amount,providerId);

@override
String toString() {
  return 'VendAirtimeRequest(receiver: $receiver, passcode: $passcode, amount: $amount, providerId: $providerId)';
}


}

/// @nodoc
abstract mixin class _$VendAirtimeRequestCopyWith<$Res> implements $VendAirtimeRequestCopyWith<$Res> {
  factory _$VendAirtimeRequestCopyWith(_VendAirtimeRequest value, $Res Function(_VendAirtimeRequest) _then) = __$VendAirtimeRequestCopyWithImpl;
@override @useResult
$Res call({
 String receiver, String passcode, String amount, String providerId
});




}
/// @nodoc
class __$VendAirtimeRequestCopyWithImpl<$Res>
    implements _$VendAirtimeRequestCopyWith<$Res> {
  __$VendAirtimeRequestCopyWithImpl(this._self, this._then);

  final _VendAirtimeRequest _self;
  final $Res Function(_VendAirtimeRequest) _then;

/// Create a copy of VendAirtimeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiver = null,Object? passcode = null,Object? amount = null,Object? providerId = null,}) {
  return _then(_VendAirtimeRequest(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,providerId: null == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
