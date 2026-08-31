// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_shareholders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddShareholdersRequest {

 String get bvn; int get shareholderId; int get userId;
/// Create a copy of AddShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddShareholdersRequestCopyWith<AddShareholdersRequest> get copyWith => _$AddShareholdersRequestCopyWithImpl<AddShareholdersRequest>(this as AddShareholdersRequest, _$identity);

  /// Serializes this AddShareholdersRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddShareholdersRequest&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.shareholderId, shareholderId) || other.shareholderId == shareholderId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bvn,shareholderId,userId);

@override
String toString() {
  return 'AddShareholdersRequest(bvn: $bvn, shareholderId: $shareholderId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $AddShareholdersRequestCopyWith<$Res>  {
  factory $AddShareholdersRequestCopyWith(AddShareholdersRequest value, $Res Function(AddShareholdersRequest) _then) = _$AddShareholdersRequestCopyWithImpl;
@useResult
$Res call({
 String bvn, int shareholderId, int userId
});




}
/// @nodoc
class _$AddShareholdersRequestCopyWithImpl<$Res>
    implements $AddShareholdersRequestCopyWith<$Res> {
  _$AddShareholdersRequestCopyWithImpl(this._self, this._then);

  final AddShareholdersRequest _self;
  final $Res Function(AddShareholdersRequest) _then;

/// Create a copy of AddShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bvn = null,Object? shareholderId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
bvn: null == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String,shareholderId: null == shareholderId ? _self.shareholderId : shareholderId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddShareholdersRequest].
extension AddShareholdersRequestPatterns on AddShareholdersRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddShareholdersRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddShareholdersRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddShareholdersRequest value)  $default,){
final _that = this;
switch (_that) {
case _AddShareholdersRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddShareholdersRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AddShareholdersRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String bvn,  int shareholderId,  int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddShareholdersRequest() when $default != null:
return $default(_that.bvn,_that.shareholderId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String bvn,  int shareholderId,  int userId)  $default,) {final _that = this;
switch (_that) {
case _AddShareholdersRequest():
return $default(_that.bvn,_that.shareholderId,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String bvn,  int shareholderId,  int userId)?  $default,) {final _that = this;
switch (_that) {
case _AddShareholdersRequest() when $default != null:
return $default(_that.bvn,_that.shareholderId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddShareholdersRequest implements AddShareholdersRequest {
  const _AddShareholdersRequest({required this.bvn, required this.shareholderId, required this.userId});
  factory _AddShareholdersRequest.fromJson(Map<String, dynamic> json) => _$AddShareholdersRequestFromJson(json);

@override final  String bvn;
@override final  int shareholderId;
@override final  int userId;

/// Create a copy of AddShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddShareholdersRequestCopyWith<_AddShareholdersRequest> get copyWith => __$AddShareholdersRequestCopyWithImpl<_AddShareholdersRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddShareholdersRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddShareholdersRequest&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.shareholderId, shareholderId) || other.shareholderId == shareholderId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bvn,shareholderId,userId);

@override
String toString() {
  return 'AddShareholdersRequest(bvn: $bvn, shareholderId: $shareholderId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$AddShareholdersRequestCopyWith<$Res> implements $AddShareholdersRequestCopyWith<$Res> {
  factory _$AddShareholdersRequestCopyWith(_AddShareholdersRequest value, $Res Function(_AddShareholdersRequest) _then) = __$AddShareholdersRequestCopyWithImpl;
@override @useResult
$Res call({
 String bvn, int shareholderId, int userId
});




}
/// @nodoc
class __$AddShareholdersRequestCopyWithImpl<$Res>
    implements _$AddShareholdersRequestCopyWith<$Res> {
  __$AddShareholdersRequestCopyWithImpl(this._self, this._then);

  final _AddShareholdersRequest _self;
  final $Res Function(_AddShareholdersRequest) _then;

/// Create a copy of AddShareholdersRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bvn = null,Object? shareholderId = null,Object? userId = null,}) {
  return _then(_AddShareholdersRequest(
bvn: null == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String,shareholderId: null == shareholderId ? _self.shareholderId : shareholderId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
