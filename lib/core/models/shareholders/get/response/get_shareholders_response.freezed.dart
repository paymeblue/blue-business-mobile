// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_shareholders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetShareholdersResponse {

 String get status; String? get message; List<Shareholders>? get data;
/// Create a copy of GetShareholdersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetShareholdersResponseCopyWith<GetShareholdersResponse> get copyWith => _$GetShareholdersResponseCopyWithImpl<GetShareholdersResponse>(this as GetShareholdersResponse, _$identity);

  /// Serializes this GetShareholdersResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetShareholdersResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetShareholdersResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetShareholdersResponseCopyWith<$Res>  {
  factory $GetShareholdersResponseCopyWith(GetShareholdersResponse value, $Res Function(GetShareholdersResponse) _then) = _$GetShareholdersResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, List<Shareholders>? data
});




}
/// @nodoc
class _$GetShareholdersResponseCopyWithImpl<$Res>
    implements $GetShareholdersResponseCopyWith<$Res> {
  _$GetShareholdersResponseCopyWithImpl(this._self, this._then);

  final GetShareholdersResponse _self;
  final $Res Function(GetShareholdersResponse) _then;

/// Create a copy of GetShareholdersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Shareholders>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetShareholdersResponse].
extension GetShareholdersResponsePatterns on GetShareholdersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetShareholdersResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetShareholdersResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetShareholdersResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetShareholdersResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetShareholdersResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetShareholdersResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  List<Shareholders>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetShareholdersResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  List<Shareholders>? data)  $default,) {final _that = this;
switch (_that) {
case _GetShareholdersResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  List<Shareholders>? data)?  $default,) {final _that = this;
switch (_that) {
case _GetShareholdersResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetShareholdersResponse implements GetShareholdersResponse {
  const _GetShareholdersResponse({this.status = "fail", this.message, final  List<Shareholders>? data}): _data = data;
  factory _GetShareholdersResponse.fromJson(Map<String, dynamic> json) => _$GetShareholdersResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
 final  List<Shareholders>? _data;
@override List<Shareholders>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetShareholdersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetShareholdersResponseCopyWith<_GetShareholdersResponse> get copyWith => __$GetShareholdersResponseCopyWithImpl<_GetShareholdersResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetShareholdersResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetShareholdersResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetShareholdersResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetShareholdersResponseCopyWith<$Res> implements $GetShareholdersResponseCopyWith<$Res> {
  factory _$GetShareholdersResponseCopyWith(_GetShareholdersResponse value, $Res Function(_GetShareholdersResponse) _then) = __$GetShareholdersResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, List<Shareholders>? data
});




}
/// @nodoc
class __$GetShareholdersResponseCopyWithImpl<$Res>
    implements _$GetShareholdersResponseCopyWith<$Res> {
  __$GetShareholdersResponseCopyWithImpl(this._self, this._then);

  final _GetShareholdersResponse _self;
  final $Res Function(_GetShareholdersResponse) _then;

/// Create a copy of GetShareholdersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_GetShareholdersResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Shareholders>?,
  ));
}


}

// dart format on
