// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_shareholders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateShareholdersRequest {

 String get name; String get bvn; int get businessId; int get userId;
/// Create a copy of CreateShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateShareholdersRequestCopyWith<CreateShareholdersRequest> get copyWith => _$CreateShareholdersRequestCopyWithImpl<CreateShareholdersRequest>(this as CreateShareholdersRequest, _$identity);

  /// Serializes this CreateShareholdersRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateShareholdersRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,bvn,businessId,userId);

@override
String toString() {
  return 'CreateShareholdersRequest(name: $name, bvn: $bvn, businessId: $businessId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CreateShareholdersRequestCopyWith<$Res>  {
  factory $CreateShareholdersRequestCopyWith(CreateShareholdersRequest value, $Res Function(CreateShareholdersRequest) _then) = _$CreateShareholdersRequestCopyWithImpl;
@useResult
$Res call({
 String name, String bvn, int businessId, int userId
});




}
/// @nodoc
class _$CreateShareholdersRequestCopyWithImpl<$Res>
    implements $CreateShareholdersRequestCopyWith<$Res> {
  _$CreateShareholdersRequestCopyWithImpl(this._self, this._then);

  final CreateShareholdersRequest _self;
  final $Res Function(CreateShareholdersRequest) _then;

/// Create a copy of CreateShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? bvn = null,Object? businessId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bvn: null == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateShareholdersRequest].
extension CreateShareholdersRequestPatterns on CreateShareholdersRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateShareholdersRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateShareholdersRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateShareholdersRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateShareholdersRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateShareholdersRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateShareholdersRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String bvn,  int businessId,  int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateShareholdersRequest() when $default != null:
return $default(_that.name,_that.bvn,_that.businessId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String bvn,  int businessId,  int userId)  $default,) {final _that = this;
switch (_that) {
case _CreateShareholdersRequest():
return $default(_that.name,_that.bvn,_that.businessId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String bvn,  int businessId,  int userId)?  $default,) {final _that = this;
switch (_that) {
case _CreateShareholdersRequest() when $default != null:
return $default(_that.name,_that.bvn,_that.businessId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateShareholdersRequest implements CreateShareholdersRequest {
  const _CreateShareholdersRequest({required this.name, required this.bvn, required this.businessId, required this.userId});
  factory _CreateShareholdersRequest.fromJson(Map<String, dynamic> json) => _$CreateShareholdersRequestFromJson(json);

@override final  String name;
@override final  String bvn;
@override final  int businessId;
@override final  int userId;

/// Create a copy of CreateShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateShareholdersRequestCopyWith<_CreateShareholdersRequest> get copyWith => __$CreateShareholdersRequestCopyWithImpl<_CreateShareholdersRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateShareholdersRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateShareholdersRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,bvn,businessId,userId);

@override
String toString() {
  return 'CreateShareholdersRequest(name: $name, bvn: $bvn, businessId: $businessId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CreateShareholdersRequestCopyWith<$Res> implements $CreateShareholdersRequestCopyWith<$Res> {
  factory _$CreateShareholdersRequestCopyWith(_CreateShareholdersRequest value, $Res Function(_CreateShareholdersRequest) _then) = __$CreateShareholdersRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, String bvn, int businessId, int userId
});




}
/// @nodoc
class __$CreateShareholdersRequestCopyWithImpl<$Res>
    implements _$CreateShareholdersRequestCopyWith<$Res> {
  __$CreateShareholdersRequestCopyWithImpl(this._self, this._then);

  final _CreateShareholdersRequest _self;
  final $Res Function(_CreateShareholdersRequest) _then;

/// Create a copy of CreateShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? bvn = null,Object? businessId = null,Object? userId = null,}) {
  return _then(_CreateShareholdersRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bvn: null == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String,businessId: null == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
