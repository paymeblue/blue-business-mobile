// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyticsResponse {

 String get status; String? get message; AnalyticsData? get data;
/// Create a copy of AnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticsResponseCopyWith<AnalyticsResponse> get copyWith => _$AnalyticsResponseCopyWithImpl<AnalyticsResponse>(this as AnalyticsResponse, _$identity);

  /// Serializes this AnalyticsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'AnalyticsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $AnalyticsResponseCopyWith<$Res>  {
  factory $AnalyticsResponseCopyWith(AnalyticsResponse value, $Res Function(AnalyticsResponse) _then) = _$AnalyticsResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, AnalyticsData? data
});


$AnalyticsDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$AnalyticsResponseCopyWithImpl<$Res>
    implements $AnalyticsResponseCopyWith<$Res> {
  _$AnalyticsResponseCopyWithImpl(this._self, this._then);

  final AnalyticsResponse _self;
  final $Res Function(AnalyticsResponse) _then;

/// Create a copy of AnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AnalyticsData?,
  ));
}
/// Create a copy of AnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AnalyticsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyticsResponse].
extension AnalyticsResponsePatterns on AnalyticsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticsResponse value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  AnalyticsData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  AnalyticsData? data)  $default,) {final _that = this;
switch (_that) {
case _AnalyticsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  AnalyticsData? data)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticsResponse implements AnalyticsResponse {
  const _AnalyticsResponse({this.status = "fail", this.message, this.data});
  factory _AnalyticsResponse.fromJson(Map<String, dynamic> json) => _$AnalyticsResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  AnalyticsData? data;

/// Create a copy of AnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticsResponseCopyWith<_AnalyticsResponse> get copyWith => __$AnalyticsResponseCopyWithImpl<_AnalyticsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'AnalyticsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$AnalyticsResponseCopyWith<$Res> implements $AnalyticsResponseCopyWith<$Res> {
  factory _$AnalyticsResponseCopyWith(_AnalyticsResponse value, $Res Function(_AnalyticsResponse) _then) = __$AnalyticsResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, AnalyticsData? data
});


@override $AnalyticsDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$AnalyticsResponseCopyWithImpl<$Res>
    implements _$AnalyticsResponseCopyWith<$Res> {
  __$AnalyticsResponseCopyWithImpl(this._self, this._then);

  final _AnalyticsResponse _self;
  final $Res Function(_AnalyticsResponse) _then;

/// Create a copy of AnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_AnalyticsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AnalyticsData?,
  ));
}

/// Create a copy of AnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $AnalyticsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
