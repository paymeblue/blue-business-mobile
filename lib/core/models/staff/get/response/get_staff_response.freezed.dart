// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_staff_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetStaffResponse {

 String get status; GetStaffData? get data; String? get message;
/// Create a copy of GetStaffResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStaffResponseCopyWith<GetStaffResponse> get copyWith => _$GetStaffResponseCopyWithImpl<GetStaffResponse>(this as GetStaffResponse, _$identity);

  /// Serializes this GetStaffResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStaffResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,message);

@override
String toString() {
  return 'GetStaffResponse(status: $status, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class $GetStaffResponseCopyWith<$Res>  {
  factory $GetStaffResponseCopyWith(GetStaffResponse value, $Res Function(GetStaffResponse) _then) = _$GetStaffResponseCopyWithImpl;
@useResult
$Res call({
 String status, GetStaffData? data, String? message
});


$GetStaffDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$GetStaffResponseCopyWithImpl<$Res>
    implements $GetStaffResponseCopyWith<$Res> {
  _$GetStaffResponseCopyWithImpl(this._self, this._then);

  final GetStaffResponse _self;
  final $Res Function(GetStaffResponse) _then;

/// Create a copy of GetStaffResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetStaffData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GetStaffResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetStaffDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetStaffDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetStaffResponse].
extension GetStaffResponsePatterns on GetStaffResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetStaffResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetStaffResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetStaffResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetStaffResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetStaffResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetStaffResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  GetStaffData? data,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetStaffResponse() when $default != null:
return $default(_that.status,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  GetStaffData? data,  String? message)  $default,) {final _that = this;
switch (_that) {
case _GetStaffResponse():
return $default(_that.status,_that.data,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  GetStaffData? data,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _GetStaffResponse() when $default != null:
return $default(_that.status,_that.data,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetStaffResponse implements GetStaffResponse {
  const _GetStaffResponse({this.status = "fail", this.data, this.message});
  factory _GetStaffResponse.fromJson(Map<String, dynamic> json) => _$GetStaffResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  GetStaffData? data;
@override final  String? message;

/// Create a copy of GetStaffResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStaffResponseCopyWith<_GetStaffResponse> get copyWith => __$GetStaffResponseCopyWithImpl<_GetStaffResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetStaffResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStaffResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,data,message);

@override
String toString() {
  return 'GetStaffResponse(status: $status, data: $data, message: $message)';
}


}

/// @nodoc
abstract mixin class _$GetStaffResponseCopyWith<$Res> implements $GetStaffResponseCopyWith<$Res> {
  factory _$GetStaffResponseCopyWith(_GetStaffResponse value, $Res Function(_GetStaffResponse) _then) = __$GetStaffResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, GetStaffData? data, String? message
});


@override $GetStaffDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$GetStaffResponseCopyWithImpl<$Res>
    implements _$GetStaffResponseCopyWith<$Res> {
  __$GetStaffResponseCopyWithImpl(this._self, this._then);

  final _GetStaffResponse _self;
  final $Res Function(_GetStaffResponse) _then;

/// Create a copy of GetStaffResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? message = freezed,}) {
  return _then(_GetStaffResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GetStaffData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GetStaffResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetStaffDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GetStaffDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
