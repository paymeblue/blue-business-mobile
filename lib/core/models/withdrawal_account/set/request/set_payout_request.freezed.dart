// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_payout_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetPayoutRequest {

 String get reference;
/// Create a copy of SetPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetPayoutRequestCopyWith<SetPayoutRequest> get copyWith => _$SetPayoutRequestCopyWithImpl<SetPayoutRequest>(this as SetPayoutRequest, _$identity);

  /// Serializes this SetPayoutRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetPayoutRequest&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference);

@override
String toString() {
  return 'SetPayoutRequest(reference: $reference)';
}


}

/// @nodoc
abstract mixin class $SetPayoutRequestCopyWith<$Res>  {
  factory $SetPayoutRequestCopyWith(SetPayoutRequest value, $Res Function(SetPayoutRequest) _then) = _$SetPayoutRequestCopyWithImpl;
@useResult
$Res call({
 String reference
});




}
/// @nodoc
class _$SetPayoutRequestCopyWithImpl<$Res>
    implements $SetPayoutRequestCopyWith<$Res> {
  _$SetPayoutRequestCopyWithImpl(this._self, this._then);

  final SetPayoutRequest _self;
  final $Res Function(SetPayoutRequest) _then;

/// Create a copy of SetPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reference = null,}) {
  return _then(_self.copyWith(
reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SetPayoutRequest].
extension SetPayoutRequestPatterns on SetPayoutRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetPayoutRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetPayoutRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetPayoutRequest value)  $default,){
final _that = this;
switch (_that) {
case _SetPayoutRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetPayoutRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SetPayoutRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reference)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetPayoutRequest() when $default != null:
return $default(_that.reference);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reference)  $default,) {final _that = this;
switch (_that) {
case _SetPayoutRequest():
return $default(_that.reference);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reference)?  $default,) {final _that = this;
switch (_that) {
case _SetPayoutRequest() when $default != null:
return $default(_that.reference);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetPayoutRequest implements SetPayoutRequest {
  const _SetPayoutRequest({required this.reference});
  factory _SetPayoutRequest.fromJson(Map<String, dynamic> json) => _$SetPayoutRequestFromJson(json);

@override final  String reference;

/// Create a copy of SetPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPayoutRequestCopyWith<_SetPayoutRequest> get copyWith => __$SetPayoutRequestCopyWithImpl<_SetPayoutRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetPayoutRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPayoutRequest&&(identical(other.reference, reference) || other.reference == reference));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference);

@override
String toString() {
  return 'SetPayoutRequest(reference: $reference)';
}


}

/// @nodoc
abstract mixin class _$SetPayoutRequestCopyWith<$Res> implements $SetPayoutRequestCopyWith<$Res> {
  factory _$SetPayoutRequestCopyWith(_SetPayoutRequest value, $Res Function(_SetPayoutRequest) _then) = __$SetPayoutRequestCopyWithImpl;
@override @useResult
$Res call({
 String reference
});




}
/// @nodoc
class __$SetPayoutRequestCopyWithImpl<$Res>
    implements _$SetPayoutRequestCopyWith<$Res> {
  __$SetPayoutRequestCopyWithImpl(this._self, this._then);

  final _SetPayoutRequest _self;
  final $Res Function(_SetPayoutRequest) _then;

/// Create a copy of SetPayoutRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reference = null,}) {
  return _then(_SetPayoutRequest(
reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
