// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_electricity_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendElectricityRequest {

 String get transactionId; String get passcode; String get amount;
/// Create a copy of VendElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendElectricityRequestCopyWith<VendElectricityRequest> get copyWith => _$VendElectricityRequestCopyWithImpl<VendElectricityRequest>(this as VendElectricityRequest, _$identity);

  /// Serializes this VendElectricityRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendElectricityRequest&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,passcode,amount);

@override
String toString() {
  return 'VendElectricityRequest(transactionId: $transactionId, passcode: $passcode, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $VendElectricityRequestCopyWith<$Res>  {
  factory $VendElectricityRequestCopyWith(VendElectricityRequest value, $Res Function(VendElectricityRequest) _then) = _$VendElectricityRequestCopyWithImpl;
@useResult
$Res call({
 String transactionId, String passcode, String amount
});




}
/// @nodoc
class _$VendElectricityRequestCopyWithImpl<$Res>
    implements $VendElectricityRequestCopyWith<$Res> {
  _$VendElectricityRequestCopyWithImpl(this._self, this._then);

  final VendElectricityRequest _self;
  final $Res Function(VendElectricityRequest) _then;

/// Create a copy of VendElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? passcode = null,Object? amount = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VendElectricityRequest].
extension VendElectricityRequestPatterns on VendElectricityRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendElectricityRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendElectricityRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendElectricityRequest value)  $default,){
final _that = this;
switch (_that) {
case _VendElectricityRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendElectricityRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VendElectricityRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String passcode,  String amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendElectricityRequest() when $default != null:
return $default(_that.transactionId,_that.passcode,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String passcode,  String amount)  $default,) {final _that = this;
switch (_that) {
case _VendElectricityRequest():
return $default(_that.transactionId,_that.passcode,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String passcode,  String amount)?  $default,) {final _that = this;
switch (_that) {
case _VendElectricityRequest() when $default != null:
return $default(_that.transactionId,_that.passcode,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendElectricityRequest implements VendElectricityRequest {
  const _VendElectricityRequest({required this.transactionId, required this.passcode, required this.amount});
  factory _VendElectricityRequest.fromJson(Map<String, dynamic> json) => _$VendElectricityRequestFromJson(json);

@override final  String transactionId;
@override final  String passcode;
@override final  String amount;

/// Create a copy of VendElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendElectricityRequestCopyWith<_VendElectricityRequest> get copyWith => __$VendElectricityRequestCopyWithImpl<_VendElectricityRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendElectricityRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendElectricityRequest&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.passcode, passcode) || other.passcode == passcode)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,passcode,amount);

@override
String toString() {
  return 'VendElectricityRequest(transactionId: $transactionId, passcode: $passcode, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$VendElectricityRequestCopyWith<$Res> implements $VendElectricityRequestCopyWith<$Res> {
  factory _$VendElectricityRequestCopyWith(_VendElectricityRequest value, $Res Function(_VendElectricityRequest) _then) = __$VendElectricityRequestCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String passcode, String amount
});




}
/// @nodoc
class __$VendElectricityRequestCopyWithImpl<$Res>
    implements _$VendElectricityRequestCopyWith<$Res> {
  __$VendElectricityRequestCopyWithImpl(this._self, this._then);

  final _VendElectricityRequest _self;
  final $Res Function(_VendElectricityRequest) _then;

/// Create a copy of VendElectricityRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? passcode = null,Object? amount = null,}) {
  return _then(_VendElectricityRequest(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
