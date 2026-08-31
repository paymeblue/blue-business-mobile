// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VendDataRequest {

 String get transactionId; String get passcode;
/// Create a copy of VendDataRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VendDataRequestCopyWith<VendDataRequest> get copyWith => _$VendDataRequestCopyWithImpl<VendDataRequest>(this as VendDataRequest, _$identity);

  /// Serializes this VendDataRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VendDataRequest&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.passcode, passcode) || other.passcode == passcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,passcode);

@override
String toString() {
  return 'VendDataRequest(transactionId: $transactionId, passcode: $passcode)';
}


}

/// @nodoc
abstract mixin class $VendDataRequestCopyWith<$Res>  {
  factory $VendDataRequestCopyWith(VendDataRequest value, $Res Function(VendDataRequest) _then) = _$VendDataRequestCopyWithImpl;
@useResult
$Res call({
 String transactionId, String passcode
});




}
/// @nodoc
class _$VendDataRequestCopyWithImpl<$Res>
    implements $VendDataRequestCopyWith<$Res> {
  _$VendDataRequestCopyWithImpl(this._self, this._then);

  final VendDataRequest _self;
  final $Res Function(VendDataRequest) _then;

/// Create a copy of VendDataRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionId = null,Object? passcode = null,}) {
  return _then(_self.copyWith(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VendDataRequest].
extension VendDataRequestPatterns on VendDataRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VendDataRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VendDataRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VendDataRequest value)  $default,){
final _that = this;
switch (_that) {
case _VendDataRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VendDataRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VendDataRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String transactionId,  String passcode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VendDataRequest() when $default != null:
return $default(_that.transactionId,_that.passcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String transactionId,  String passcode)  $default,) {final _that = this;
switch (_that) {
case _VendDataRequest():
return $default(_that.transactionId,_that.passcode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String transactionId,  String passcode)?  $default,) {final _that = this;
switch (_that) {
case _VendDataRequest() when $default != null:
return $default(_that.transactionId,_that.passcode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VendDataRequest implements VendDataRequest {
  const _VendDataRequest({required this.transactionId, required this.passcode});
  factory _VendDataRequest.fromJson(Map<String, dynamic> json) => _$VendDataRequestFromJson(json);

@override final  String transactionId;
@override final  String passcode;

/// Create a copy of VendDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VendDataRequestCopyWith<_VendDataRequest> get copyWith => __$VendDataRequestCopyWithImpl<_VendDataRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VendDataRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VendDataRequest&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.passcode, passcode) || other.passcode == passcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionId,passcode);

@override
String toString() {
  return 'VendDataRequest(transactionId: $transactionId, passcode: $passcode)';
}


}

/// @nodoc
abstract mixin class _$VendDataRequestCopyWith<$Res> implements $VendDataRequestCopyWith<$Res> {
  factory _$VendDataRequestCopyWith(_VendDataRequest value, $Res Function(_VendDataRequest) _then) = __$VendDataRequestCopyWithImpl;
@override @useResult
$Res call({
 String transactionId, String passcode
});




}
/// @nodoc
class __$VendDataRequestCopyWithImpl<$Res>
    implements _$VendDataRequestCopyWith<$Res> {
  __$VendDataRequestCopyWithImpl(this._self, this._then);

  final _VendDataRequest _self;
  final $Res Function(_VendDataRequest) _then;

/// Create a copy of VendDataRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? passcode = null,}) {
  return _then(_VendDataRequest(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,passcode: null == passcode ? _self.passcode : passcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
