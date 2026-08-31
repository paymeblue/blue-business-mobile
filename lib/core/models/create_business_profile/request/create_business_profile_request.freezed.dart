// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_business_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateBusinessProfileRequest {

 int get userId; String get name; int get categoryId; String get cacNumber; String get staffSize;
/// Create a copy of CreateBusinessProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBusinessProfileRequestCopyWith<CreateBusinessProfileRequest> get copyWith => _$CreateBusinessProfileRequestCopyWithImpl<CreateBusinessProfileRequest>(this as CreateBusinessProfileRequest, _$identity);

  /// Serializes this CreateBusinessProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBusinessProfileRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.cacNumber, cacNumber) || other.cacNumber == cacNumber)&&(identical(other.staffSize, staffSize) || other.staffSize == staffSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,categoryId,cacNumber,staffSize);

@override
String toString() {
  return 'CreateBusinessProfileRequest(userId: $userId, name: $name, categoryId: $categoryId, cacNumber: $cacNumber, staffSize: $staffSize)';
}


}

/// @nodoc
abstract mixin class $CreateBusinessProfileRequestCopyWith<$Res>  {
  factory $CreateBusinessProfileRequestCopyWith(CreateBusinessProfileRequest value, $Res Function(CreateBusinessProfileRequest) _then) = _$CreateBusinessProfileRequestCopyWithImpl;
@useResult
$Res call({
 int userId, String name, int categoryId, String cacNumber, String staffSize
});




}
/// @nodoc
class _$CreateBusinessProfileRequestCopyWithImpl<$Res>
    implements $CreateBusinessProfileRequestCopyWith<$Res> {
  _$CreateBusinessProfileRequestCopyWithImpl(this._self, this._then);

  final CreateBusinessProfileRequest _self;
  final $Res Function(CreateBusinessProfileRequest) _then;

/// Create a copy of CreateBusinessProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? name = null,Object? categoryId = null,Object? cacNumber = null,Object? staffSize = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,cacNumber: null == cacNumber ? _self.cacNumber : cacNumber // ignore: cast_nullable_to_non_nullable
as String,staffSize: null == staffSize ? _self.staffSize : staffSize // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateBusinessProfileRequest].
extension CreateBusinessProfileRequestPatterns on CreateBusinessProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBusinessProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBusinessProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBusinessProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateBusinessProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBusinessProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBusinessProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String name,  int categoryId,  String cacNumber,  String staffSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBusinessProfileRequest() when $default != null:
return $default(_that.userId,_that.name,_that.categoryId,_that.cacNumber,_that.staffSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String name,  int categoryId,  String cacNumber,  String staffSize)  $default,) {final _that = this;
switch (_that) {
case _CreateBusinessProfileRequest():
return $default(_that.userId,_that.name,_that.categoryId,_that.cacNumber,_that.staffSize);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String name,  int categoryId,  String cacNumber,  String staffSize)?  $default,) {final _that = this;
switch (_that) {
case _CreateBusinessProfileRequest() when $default != null:
return $default(_that.userId,_that.name,_that.categoryId,_that.cacNumber,_that.staffSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBusinessProfileRequest implements CreateBusinessProfileRequest {
  const _CreateBusinessProfileRequest({required this.userId, required this.name, required this.categoryId, required this.cacNumber, required this.staffSize});
  factory _CreateBusinessProfileRequest.fromJson(Map<String, dynamic> json) => _$CreateBusinessProfileRequestFromJson(json);

@override final  int userId;
@override final  String name;
@override final  int categoryId;
@override final  String cacNumber;
@override final  String staffSize;

/// Create a copy of CreateBusinessProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBusinessProfileRequestCopyWith<_CreateBusinessProfileRequest> get copyWith => __$CreateBusinessProfileRequestCopyWithImpl<_CreateBusinessProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBusinessProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBusinessProfileRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.cacNumber, cacNumber) || other.cacNumber == cacNumber)&&(identical(other.staffSize, staffSize) || other.staffSize == staffSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,name,categoryId,cacNumber,staffSize);

@override
String toString() {
  return 'CreateBusinessProfileRequest(userId: $userId, name: $name, categoryId: $categoryId, cacNumber: $cacNumber, staffSize: $staffSize)';
}


}

/// @nodoc
abstract mixin class _$CreateBusinessProfileRequestCopyWith<$Res> implements $CreateBusinessProfileRequestCopyWith<$Res> {
  factory _$CreateBusinessProfileRequestCopyWith(_CreateBusinessProfileRequest value, $Res Function(_CreateBusinessProfileRequest) _then) = __$CreateBusinessProfileRequestCopyWithImpl;
@override @useResult
$Res call({
 int userId, String name, int categoryId, String cacNumber, String staffSize
});




}
/// @nodoc
class __$CreateBusinessProfileRequestCopyWithImpl<$Res>
    implements _$CreateBusinessProfileRequestCopyWith<$Res> {
  __$CreateBusinessProfileRequestCopyWithImpl(this._self, this._then);

  final _CreateBusinessProfileRequest _self;
  final $Res Function(_CreateBusinessProfileRequest) _then;

/// Create a copy of CreateBusinessProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? name = null,Object? categoryId = null,Object? cacNumber = null,Object? staffSize = null,}) {
  return _then(_CreateBusinessProfileRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,cacNumber: null == cacNumber ? _self.cacNumber : cacNumber // ignore: cast_nullable_to_non_nullable
as String,staffSize: null == staffSize ? _self.staffSize : staffSize // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
