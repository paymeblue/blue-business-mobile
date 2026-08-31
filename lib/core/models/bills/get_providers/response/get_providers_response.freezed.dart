// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_providers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProvidersResponse {

 String get status; String? get message; List<BillProvider>? get data;
/// Create a copy of GetProvidersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProvidersResponseCopyWith<GetProvidersResponse> get copyWith => _$GetProvidersResponseCopyWithImpl<GetProvidersResponse>(this as GetProvidersResponse, _$identity);

  /// Serializes this GetProvidersResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProvidersResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetProvidersResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetProvidersResponseCopyWith<$Res>  {
  factory $GetProvidersResponseCopyWith(GetProvidersResponse value, $Res Function(GetProvidersResponse) _then) = _$GetProvidersResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, List<BillProvider>? data
});




}
/// @nodoc
class _$GetProvidersResponseCopyWithImpl<$Res>
    implements $GetProvidersResponseCopyWith<$Res> {
  _$GetProvidersResponseCopyWithImpl(this._self, this._then);

  final GetProvidersResponse _self;
  final $Res Function(GetProvidersResponse) _then;

/// Create a copy of GetProvidersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<BillProvider>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetProvidersResponse].
extension GetProvidersResponsePatterns on GetProvidersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProvidersResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProvidersResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProvidersResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetProvidersResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProvidersResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetProvidersResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  List<BillProvider>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProvidersResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  List<BillProvider>? data)  $default,) {final _that = this;
switch (_that) {
case _GetProvidersResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  List<BillProvider>? data)?  $default,) {final _that = this;
switch (_that) {
case _GetProvidersResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetProvidersResponse implements GetProvidersResponse {
  const _GetProvidersResponse({this.status = "fail", this.message, final  List<BillProvider>? data}): _data = data;
  factory _GetProvidersResponse.fromJson(Map<String, dynamic> json) => _$GetProvidersResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
 final  List<BillProvider>? _data;
@override List<BillProvider>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetProvidersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProvidersResponseCopyWith<_GetProvidersResponse> get copyWith => __$GetProvidersResponseCopyWithImpl<_GetProvidersResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProvidersResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProvidersResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetProvidersResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetProvidersResponseCopyWith<$Res> implements $GetProvidersResponseCopyWith<$Res> {
  factory _$GetProvidersResponseCopyWith(_GetProvidersResponse value, $Res Function(_GetProvidersResponse) _then) = __$GetProvidersResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, List<BillProvider>? data
});




}
/// @nodoc
class __$GetProvidersResponseCopyWithImpl<$Res>
    implements _$GetProvidersResponseCopyWith<$Res> {
  __$GetProvidersResponseCopyWithImpl(this._self, this._then);

  final _GetProvidersResponse _self;
  final $Res Function(_GetProvidersResponse) _then;

/// Create a copy of GetProvidersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_GetProvidersResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<BillProvider>?,
  ));
}


}

// dart format on
