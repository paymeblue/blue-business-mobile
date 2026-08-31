// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesAnalyticsResponse {

 String get status; String? get message; List<Map<String, dynamic>>? get data;
/// Create a copy of SalesAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesAnalyticsResponseCopyWith<SalesAnalyticsResponse> get copyWith => _$SalesAnalyticsResponseCopyWithImpl<SalesAnalyticsResponse>(this as SalesAnalyticsResponse, _$identity);

  /// Serializes this SalesAnalyticsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesAnalyticsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SalesAnalyticsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $SalesAnalyticsResponseCopyWith<$Res>  {
  factory $SalesAnalyticsResponseCopyWith(SalesAnalyticsResponse value, $Res Function(SalesAnalyticsResponse) _then) = _$SalesAnalyticsResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, List<Map<String, dynamic>>? data
});




}
/// @nodoc
class _$SalesAnalyticsResponseCopyWithImpl<$Res>
    implements $SalesAnalyticsResponseCopyWith<$Res> {
  _$SalesAnalyticsResponseCopyWithImpl(this._self, this._then);

  final SalesAnalyticsResponse _self;
  final $Res Function(SalesAnalyticsResponse) _then;

/// Create a copy of SalesAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesAnalyticsResponse].
extension SalesAnalyticsResponsePatterns on SalesAnalyticsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesAnalyticsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesAnalyticsResponse value)  $default,){
final _that = this;
switch (_that) {
case _SalesAnalyticsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesAnalyticsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SalesAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  List<Map<String, dynamic>>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  List<Map<String, dynamic>>? data)  $default,) {final _that = this;
switch (_that) {
case _SalesAnalyticsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  List<Map<String, dynamic>>? data)?  $default,) {final _that = this;
switch (_that) {
case _SalesAnalyticsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesAnalyticsResponse implements SalesAnalyticsResponse {
  const _SalesAnalyticsResponse({this.status = "fail", this.message, final  List<Map<String, dynamic>>? data}): _data = data;
  factory _SalesAnalyticsResponse.fromJson(Map<String, dynamic> json) => _$SalesAnalyticsResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
 final  List<Map<String, dynamic>>? _data;
@override List<Map<String, dynamic>>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SalesAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesAnalyticsResponseCopyWith<_SalesAnalyticsResponse> get copyWith => __$SalesAnalyticsResponseCopyWithImpl<_SalesAnalyticsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesAnalyticsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesAnalyticsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'SalesAnalyticsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SalesAnalyticsResponseCopyWith<$Res> implements $SalesAnalyticsResponseCopyWith<$Res> {
  factory _$SalesAnalyticsResponseCopyWith(_SalesAnalyticsResponse value, $Res Function(_SalesAnalyticsResponse) _then) = __$SalesAnalyticsResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, List<Map<String, dynamic>>? data
});




}
/// @nodoc
class __$SalesAnalyticsResponseCopyWithImpl<$Res>
    implements _$SalesAnalyticsResponseCopyWith<$Res> {
  __$SalesAnalyticsResponseCopyWithImpl(this._self, this._then);

  final _SalesAnalyticsResponse _self;
  final $Res Function(_SalesAnalyticsResponse) _then;

/// Create a copy of SalesAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_SalesAnalyticsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>?,
  ));
}


}

// dart format on
