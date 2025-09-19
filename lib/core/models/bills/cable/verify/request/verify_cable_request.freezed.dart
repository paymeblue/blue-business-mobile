// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_cable_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyCableRequest {

 String get receiver; String get packageId;
/// Create a copy of VerifyCableRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyCableRequestCopyWith<VerifyCableRequest> get copyWith => _$VerifyCableRequestCopyWithImpl<VerifyCableRequest>(this as VerifyCableRequest, _$identity);

  /// Serializes this VerifyCableRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyCableRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.packageId, packageId) || other.packageId == packageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,packageId);

@override
String toString() {
  return 'VerifyCableRequest(receiver: $receiver, packageId: $packageId)';
}


}

/// @nodoc
abstract mixin class $VerifyCableRequestCopyWith<$Res>  {
  factory $VerifyCableRequestCopyWith(VerifyCableRequest value, $Res Function(VerifyCableRequest) _then) = _$VerifyCableRequestCopyWithImpl;
@useResult
$Res call({
 String receiver, String packageId
});




}
/// @nodoc
class _$VerifyCableRequestCopyWithImpl<$Res>
    implements $VerifyCableRequestCopyWith<$Res> {
  _$VerifyCableRequestCopyWithImpl(this._self, this._then);

  final VerifyCableRequest _self;
  final $Res Function(VerifyCableRequest) _then;

/// Create a copy of VerifyCableRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receiver = null,Object? packageId = null,}) {
  return _then(_self.copyWith(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyCableRequest].
extension VerifyCableRequestPatterns on VerifyCableRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyCableRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyCableRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyCableRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyCableRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyCableRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyCableRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String receiver,  String packageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyCableRequest() when $default != null:
return $default(_that.receiver,_that.packageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String receiver,  String packageId)  $default,) {final _that = this;
switch (_that) {
case _VerifyCableRequest():
return $default(_that.receiver,_that.packageId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String receiver,  String packageId)?  $default,) {final _that = this;
switch (_that) {
case _VerifyCableRequest() when $default != null:
return $default(_that.receiver,_that.packageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyCableRequest implements VerifyCableRequest {
  const _VerifyCableRequest({required this.receiver, required this.packageId});
  factory _VerifyCableRequest.fromJson(Map<String, dynamic> json) => _$VerifyCableRequestFromJson(json);

@override final  String receiver;
@override final  String packageId;

/// Create a copy of VerifyCableRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyCableRequestCopyWith<_VerifyCableRequest> get copyWith => __$VerifyCableRequestCopyWithImpl<_VerifyCableRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyCableRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyCableRequest&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.packageId, packageId) || other.packageId == packageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receiver,packageId);

@override
String toString() {
  return 'VerifyCableRequest(receiver: $receiver, packageId: $packageId)';
}


}

/// @nodoc
abstract mixin class _$VerifyCableRequestCopyWith<$Res> implements $VerifyCableRequestCopyWith<$Res> {
  factory _$VerifyCableRequestCopyWith(_VerifyCableRequest value, $Res Function(_VerifyCableRequest) _then) = __$VerifyCableRequestCopyWithImpl;
@override @useResult
$Res call({
 String receiver, String packageId
});




}
/// @nodoc
class __$VerifyCableRequestCopyWithImpl<$Res>
    implements _$VerifyCableRequestCopyWith<$Res> {
  __$VerifyCableRequestCopyWithImpl(this._self, this._then);

  final _VerifyCableRequest _self;
  final $Res Function(_VerifyCableRequest) _then;

/// Create a copy of VerifyCableRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receiver = null,Object? packageId = null,}) {
  return _then(_VerifyCableRequest(
receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,packageId: null == packageId ? _self.packageId : packageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
