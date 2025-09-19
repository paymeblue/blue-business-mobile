// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_pay_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PushPayResponse {

 String get status; String? get message; PushPayData? get data;
/// Create a copy of PushPayResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PushPayResponseCopyWith<PushPayResponse> get copyWith => _$PushPayResponseCopyWithImpl<PushPayResponse>(this as PushPayResponse, _$identity);

  /// Serializes this PushPayResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PushPayResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'PushPayResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $PushPayResponseCopyWith<$Res>  {
  factory $PushPayResponseCopyWith(PushPayResponse value, $Res Function(PushPayResponse) _then) = _$PushPayResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, PushPayData? data
});


$PushPayDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$PushPayResponseCopyWithImpl<$Res>
    implements $PushPayResponseCopyWith<$Res> {
  _$PushPayResponseCopyWithImpl(this._self, this._then);

  final PushPayResponse _self;
  final $Res Function(PushPayResponse) _then;

/// Create a copy of PushPayResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PushPayData?,
  ));
}
/// Create a copy of PushPayResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushPayDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PushPayDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PushPayResponse].
extension PushPayResponsePatterns on PushPayResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PushPayResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PushPayResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PushPayResponse value)  $default,){
final _that = this;
switch (_that) {
case _PushPayResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PushPayResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PushPayResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  PushPayData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PushPayResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  PushPayData? data)  $default,) {final _that = this;
switch (_that) {
case _PushPayResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  PushPayData? data)?  $default,) {final _that = this;
switch (_that) {
case _PushPayResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PushPayResponse implements PushPayResponse {
  const _PushPayResponse({this.status = "fail", this.message, this.data});
  factory _PushPayResponse.fromJson(Map<String, dynamic> json) => _$PushPayResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  PushPayData? data;

/// Create a copy of PushPayResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PushPayResponseCopyWith<_PushPayResponse> get copyWith => __$PushPayResponseCopyWithImpl<_PushPayResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PushPayResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PushPayResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'PushPayResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PushPayResponseCopyWith<$Res> implements $PushPayResponseCopyWith<$Res> {
  factory _$PushPayResponseCopyWith(_PushPayResponse value, $Res Function(_PushPayResponse) _then) = __$PushPayResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, PushPayData? data
});


@override $PushPayDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$PushPayResponseCopyWithImpl<$Res>
    implements _$PushPayResponseCopyWith<$Res> {
  __$PushPayResponseCopyWithImpl(this._self, this._then);

  final _PushPayResponse _self;
  final $Res Function(_PushPayResponse) _then;

/// Create a copy of PushPayResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_PushPayResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PushPayData?,
  ));
}

/// Create a copy of PushPayResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PushPayDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $PushPayDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
