// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_branch_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateBranchRequest {

 String get name; String get staffSize; String get location;
/// Create a copy of CreateBranchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBranchRequestCopyWith<CreateBranchRequest> get copyWith => _$CreateBranchRequestCopyWithImpl<CreateBranchRequest>(this as CreateBranchRequest, _$identity);

  /// Serializes this CreateBranchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBranchRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.staffSize, staffSize) || other.staffSize == staffSize)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,staffSize,location);

@override
String toString() {
  return 'CreateBranchRequest(name: $name, staffSize: $staffSize, location: $location)';
}


}

/// @nodoc
abstract mixin class $CreateBranchRequestCopyWith<$Res>  {
  factory $CreateBranchRequestCopyWith(CreateBranchRequest value, $Res Function(CreateBranchRequest) _then) = _$CreateBranchRequestCopyWithImpl;
@useResult
$Res call({
 String name, String staffSize, String location
});




}
/// @nodoc
class _$CreateBranchRequestCopyWithImpl<$Res>
    implements $CreateBranchRequestCopyWith<$Res> {
  _$CreateBranchRequestCopyWithImpl(this._self, this._then);

  final CreateBranchRequest _self;
  final $Res Function(CreateBranchRequest) _then;

/// Create a copy of CreateBranchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? staffSize = null,Object? location = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,staffSize: null == staffSize ? _self.staffSize : staffSize // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateBranchRequest].
extension CreateBranchRequestPatterns on CreateBranchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBranchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBranchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBranchRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateBranchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBranchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBranchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String staffSize,  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBranchRequest() when $default != null:
return $default(_that.name,_that.staffSize,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String staffSize,  String location)  $default,) {final _that = this;
switch (_that) {
case _CreateBranchRequest():
return $default(_that.name,_that.staffSize,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String staffSize,  String location)?  $default,) {final _that = this;
switch (_that) {
case _CreateBranchRequest() when $default != null:
return $default(_that.name,_that.staffSize,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBranchRequest implements CreateBranchRequest {
  const _CreateBranchRequest({required this.name, required this.staffSize, required this.location});
  factory _CreateBranchRequest.fromJson(Map<String, dynamic> json) => _$CreateBranchRequestFromJson(json);

@override final  String name;
@override final  String staffSize;
@override final  String location;

/// Create a copy of CreateBranchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBranchRequestCopyWith<_CreateBranchRequest> get copyWith => __$CreateBranchRequestCopyWithImpl<_CreateBranchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBranchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBranchRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.staffSize, staffSize) || other.staffSize == staffSize)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,staffSize,location);

@override
String toString() {
  return 'CreateBranchRequest(name: $name, staffSize: $staffSize, location: $location)';
}


}

/// @nodoc
abstract mixin class _$CreateBranchRequestCopyWith<$Res> implements $CreateBranchRequestCopyWith<$Res> {
  factory _$CreateBranchRequestCopyWith(_CreateBranchRequest value, $Res Function(_CreateBranchRequest) _then) = __$CreateBranchRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, String staffSize, String location
});




}
/// @nodoc
class __$CreateBranchRequestCopyWithImpl<$Res>
    implements _$CreateBranchRequestCopyWith<$Res> {
  __$CreateBranchRequestCopyWithImpl(this._self, this._then);

  final _CreateBranchRequest _self;
  final $Res Function(_CreateBranchRequest) _then;

/// Create a copy of CreateBranchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? staffSize = null,Object? location = null,}) {
  return _then(_CreateBranchRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,staffSize: null == staffSize ? _self.staffSize : staffSize // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
