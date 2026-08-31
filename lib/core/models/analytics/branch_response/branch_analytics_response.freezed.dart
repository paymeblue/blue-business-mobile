// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchAnalyticsResponse {

 String get status; String? get message; BranchAnalyticsData? get data;
/// Create a copy of BranchAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchAnalyticsResponseCopyWith<BranchAnalyticsResponse> get copyWith => _$BranchAnalyticsResponseCopyWithImpl<BranchAnalyticsResponse>(this as BranchAnalyticsResponse, _$identity);

  /// Serializes this BranchAnalyticsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchAnalyticsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'BranchAnalyticsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $BranchAnalyticsResponseCopyWith<$Res>  {
  factory $BranchAnalyticsResponseCopyWith(BranchAnalyticsResponse value, $Res Function(BranchAnalyticsResponse) _then) = _$BranchAnalyticsResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, BranchAnalyticsData? data
});


$BranchAnalyticsDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$BranchAnalyticsResponseCopyWithImpl<$Res>
    implements $BranchAnalyticsResponseCopyWith<$Res> {
  _$BranchAnalyticsResponseCopyWithImpl(this._self, this._then);

  final BranchAnalyticsResponse _self;
  final $Res Function(BranchAnalyticsResponse) _then;

/// Create a copy of BranchAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BranchAnalyticsData?,
  ));
}
/// Create a copy of BranchAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchAnalyticsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BranchAnalyticsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [BranchAnalyticsResponse].
extension BranchAnalyticsResponsePatterns on BranchAnalyticsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchAnalyticsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchAnalyticsResponse value)  $default,){
final _that = this;
switch (_that) {
case _BranchAnalyticsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchAnalyticsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BranchAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  BranchAnalyticsData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  BranchAnalyticsData? data)  $default,) {final _that = this;
switch (_that) {
case _BranchAnalyticsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  BranchAnalyticsData? data)?  $default,) {final _that = this;
switch (_that) {
case _BranchAnalyticsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchAnalyticsResponse implements BranchAnalyticsResponse {
  const _BranchAnalyticsResponse({this.status = "fail", this.message, this.data});
  factory _BranchAnalyticsResponse.fromJson(Map<String, dynamic> json) => _$BranchAnalyticsResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  BranchAnalyticsData? data;

/// Create a copy of BranchAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchAnalyticsResponseCopyWith<_BranchAnalyticsResponse> get copyWith => __$BranchAnalyticsResponseCopyWithImpl<_BranchAnalyticsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchAnalyticsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchAnalyticsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'BranchAnalyticsResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BranchAnalyticsResponseCopyWith<$Res> implements $BranchAnalyticsResponseCopyWith<$Res> {
  factory _$BranchAnalyticsResponseCopyWith(_BranchAnalyticsResponse value, $Res Function(_BranchAnalyticsResponse) _then) = __$BranchAnalyticsResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, BranchAnalyticsData? data
});


@override $BranchAnalyticsDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$BranchAnalyticsResponseCopyWithImpl<$Res>
    implements _$BranchAnalyticsResponseCopyWith<$Res> {
  __$BranchAnalyticsResponseCopyWithImpl(this._self, this._then);

  final _BranchAnalyticsResponse _self;
  final $Res Function(_BranchAnalyticsResponse) _then;

/// Create a copy of BranchAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_BranchAnalyticsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as BranchAnalyticsData?,
  ));
}

/// Create a copy of BranchAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchAnalyticsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $BranchAnalyticsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
