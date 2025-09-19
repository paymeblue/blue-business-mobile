// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_reason_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetReasonResponse {

 String get status; String? get message; List<Reason>? get data;
/// Create a copy of GetReasonResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetReasonResponseCopyWith<GetReasonResponse> get copyWith => _$GetReasonResponseCopyWithImpl<GetReasonResponse>(this as GetReasonResponse, _$identity);

  /// Serializes this GetReasonResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetReasonResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetReasonResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetReasonResponseCopyWith<$Res>  {
  factory $GetReasonResponseCopyWith(GetReasonResponse value, $Res Function(GetReasonResponse) _then) = _$GetReasonResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, List<Reason>? data
});




}
/// @nodoc
class _$GetReasonResponseCopyWithImpl<$Res>
    implements $GetReasonResponseCopyWith<$Res> {
  _$GetReasonResponseCopyWithImpl(this._self, this._then);

  final GetReasonResponse _self;
  final $Res Function(GetReasonResponse) _then;

/// Create a copy of GetReasonResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Reason>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetReasonResponse].
extension GetReasonResponsePatterns on GetReasonResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetReasonResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetReasonResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetReasonResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetReasonResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetReasonResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetReasonResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  List<Reason>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetReasonResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  List<Reason>? data)  $default,) {final _that = this;
switch (_that) {
case _GetReasonResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  List<Reason>? data)?  $default,) {final _that = this;
switch (_that) {
case _GetReasonResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetReasonResponse implements GetReasonResponse {
  const _GetReasonResponse({this.status = "fail", this.message, final  List<Reason>? data}): _data = data;
  factory _GetReasonResponse.fromJson(Map<String, dynamic> json) => _$GetReasonResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
 final  List<Reason>? _data;
@override List<Reason>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetReasonResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetReasonResponseCopyWith<_GetReasonResponse> get copyWith => __$GetReasonResponseCopyWithImpl<_GetReasonResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetReasonResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetReasonResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetReasonResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetReasonResponseCopyWith<$Res> implements $GetReasonResponseCopyWith<$Res> {
  factory _$GetReasonResponseCopyWith(_GetReasonResponse value, $Res Function(_GetReasonResponse) _then) = __$GetReasonResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, List<Reason>? data
});




}
/// @nodoc
class __$GetReasonResponseCopyWithImpl<$Res>
    implements _$GetReasonResponseCopyWith<$Res> {
  __$GetReasonResponseCopyWithImpl(this._self, this._then);

  final _GetReasonResponse _self;
  final $Res Function(_GetReasonResponse) _then;

/// Create a copy of GetReasonResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_GetReasonResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Reason>?,
  ));
}


}

// dart format on
