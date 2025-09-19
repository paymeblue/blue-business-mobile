// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyPayoutResponse {

 String get status; String? get message; VerifyPayoutData? get data;
/// Create a copy of VerifyPayoutResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPayoutResponseCopyWith<VerifyPayoutResponse> get copyWith => _$VerifyPayoutResponseCopyWithImpl<VerifyPayoutResponse>(this as VerifyPayoutResponse, _$identity);

  /// Serializes this VerifyPayoutResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPayoutResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'VerifyPayoutResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $VerifyPayoutResponseCopyWith<$Res>  {
  factory $VerifyPayoutResponseCopyWith(VerifyPayoutResponse value, $Res Function(VerifyPayoutResponse) _then) = _$VerifyPayoutResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, VerifyPayoutData? data
});


$VerifyPayoutDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$VerifyPayoutResponseCopyWithImpl<$Res>
    implements $VerifyPayoutResponseCopyWith<$Res> {
  _$VerifyPayoutResponseCopyWithImpl(this._self, this._then);

  final VerifyPayoutResponse _self;
  final $Res Function(VerifyPayoutResponse) _then;

/// Create a copy of VerifyPayoutResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyPayoutData?,
  ));
}
/// Create a copy of VerifyPayoutResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyPayoutDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $VerifyPayoutDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyPayoutResponse].
extension VerifyPayoutResponsePatterns on VerifyPayoutResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPayoutResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPayoutResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPayoutResponse value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPayoutResponse value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPayoutResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  VerifyPayoutData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPayoutResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  VerifyPayoutData? data)  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutResponse():
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  VerifyPayoutData? data)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPayoutResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyPayoutResponse implements VerifyPayoutResponse {
  const _VerifyPayoutResponse({this.status = "fail", this.message, this.data});
  factory _VerifyPayoutResponse.fromJson(Map<String, dynamic> json) => _$VerifyPayoutResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  VerifyPayoutData? data;

/// Create a copy of VerifyPayoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPayoutResponseCopyWith<_VerifyPayoutResponse> get copyWith => __$VerifyPayoutResponseCopyWithImpl<_VerifyPayoutResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyPayoutResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPayoutResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'VerifyPayoutResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$VerifyPayoutResponseCopyWith<$Res> implements $VerifyPayoutResponseCopyWith<$Res> {
  factory _$VerifyPayoutResponseCopyWith(_VerifyPayoutResponse value, $Res Function(_VerifyPayoutResponse) _then) = __$VerifyPayoutResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, VerifyPayoutData? data
});


@override $VerifyPayoutDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$VerifyPayoutResponseCopyWithImpl<$Res>
    implements _$VerifyPayoutResponseCopyWith<$Res> {
  __$VerifyPayoutResponseCopyWithImpl(this._self, this._then);

  final _VerifyPayoutResponse _self;
  final $Res Function(_VerifyPayoutResponse) _then;

/// Create a copy of VerifyPayoutResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_VerifyPayoutResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyPayoutData?,
  ));
}

/// Create a copy of VerifyPayoutResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyPayoutDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $VerifyPayoutDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
