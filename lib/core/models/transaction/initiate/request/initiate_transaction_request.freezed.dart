// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InitiateTransactionRequest {

 String get amount; String? get narration; String get paymentMode;
/// Create a copy of InitiateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitiateTransactionRequestCopyWith<InitiateTransactionRequest> get copyWith => _$InitiateTransactionRequestCopyWithImpl<InitiateTransactionRequest>(this as InitiateTransactionRequest, _$identity);

  /// Serializes this InitiateTransactionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitiateTransactionRequest&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,narration,paymentMode);

@override
String toString() {
  return 'InitiateTransactionRequest(amount: $amount, narration: $narration, paymentMode: $paymentMode)';
}


}

/// @nodoc
abstract mixin class $InitiateTransactionRequestCopyWith<$Res>  {
  factory $InitiateTransactionRequestCopyWith(InitiateTransactionRequest value, $Res Function(InitiateTransactionRequest) _then) = _$InitiateTransactionRequestCopyWithImpl;
@useResult
$Res call({
 String amount, String? narration, String paymentMode
});




}
/// @nodoc
class _$InitiateTransactionRequestCopyWithImpl<$Res>
    implements $InitiateTransactionRequestCopyWith<$Res> {
  _$InitiateTransactionRequestCopyWithImpl(this._self, this._then);

  final InitiateTransactionRequest _self;
  final $Res Function(InitiateTransactionRequest) _then;

/// Create a copy of InitiateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? narration = freezed,Object? paymentMode = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InitiateTransactionRequest].
extension InitiateTransactionRequestPatterns on InitiateTransactionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InitiateTransactionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitiateTransactionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InitiateTransactionRequest value)  $default,){
final _that = this;
switch (_that) {
case _InitiateTransactionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InitiateTransactionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _InitiateTransactionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String amount,  String? narration,  String paymentMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitiateTransactionRequest() when $default != null:
return $default(_that.amount,_that.narration,_that.paymentMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String amount,  String? narration,  String paymentMode)  $default,) {final _that = this;
switch (_that) {
case _InitiateTransactionRequest():
return $default(_that.amount,_that.narration,_that.paymentMode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String amount,  String? narration,  String paymentMode)?  $default,) {final _that = this;
switch (_that) {
case _InitiateTransactionRequest() when $default != null:
return $default(_that.amount,_that.narration,_that.paymentMode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InitiateTransactionRequest implements InitiateTransactionRequest {
  const _InitiateTransactionRequest({required this.amount, this.narration, required this.paymentMode});
  factory _InitiateTransactionRequest.fromJson(Map<String, dynamic> json) => _$InitiateTransactionRequestFromJson(json);

@override final  String amount;
@override final  String? narration;
@override final  String paymentMode;

/// Create a copy of InitiateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitiateTransactionRequestCopyWith<_InitiateTransactionRequest> get copyWith => __$InitiateTransactionRequestCopyWithImpl<_InitiateTransactionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InitiateTransactionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitiateTransactionRequest&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.narration, narration) || other.narration == narration)&&(identical(other.paymentMode, paymentMode) || other.paymentMode == paymentMode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,narration,paymentMode);

@override
String toString() {
  return 'InitiateTransactionRequest(amount: $amount, narration: $narration, paymentMode: $paymentMode)';
}


}

/// @nodoc
abstract mixin class _$InitiateTransactionRequestCopyWith<$Res> implements $InitiateTransactionRequestCopyWith<$Res> {
  factory _$InitiateTransactionRequestCopyWith(_InitiateTransactionRequest value, $Res Function(_InitiateTransactionRequest) _then) = __$InitiateTransactionRequestCopyWithImpl;
@override @useResult
$Res call({
 String amount, String? narration, String paymentMode
});




}
/// @nodoc
class __$InitiateTransactionRequestCopyWithImpl<$Res>
    implements _$InitiateTransactionRequestCopyWith<$Res> {
  __$InitiateTransactionRequestCopyWithImpl(this._self, this._then);

  final _InitiateTransactionRequest _self;
  final $Res Function(_InitiateTransactionRequest) _then;

/// Create a copy of InitiateTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? narration = freezed,Object? paymentMode = null,}) {
  return _then(_InitiateTransactionRequest(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,narration: freezed == narration ? _self.narration : narration // ignore: cast_nullable_to_non_nullable
as String?,paymentMode: null == paymentMode ? _self.paymentMode : paymentMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
