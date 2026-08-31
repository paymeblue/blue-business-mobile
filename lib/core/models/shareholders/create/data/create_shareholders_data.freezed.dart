// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_shareholders_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateShareholdersData {

 String get name; String get bvn; int get id; bool get verified; String? get createdAt;
/// Create a copy of CreateShareholdersData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateShareholdersDataCopyWith<CreateShareholdersData> get copyWith => _$CreateShareholdersDataCopyWithImpl<CreateShareholdersData>(this as CreateShareholdersData, _$identity);

  /// Serializes this CreateShareholdersData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateShareholdersData&&(identical(other.name, name) || other.name == name)&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.id, id) || other.id == id)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,bvn,id,verified,createdAt);

@override
String toString() {
  return 'CreateShareholdersData(name: $name, bvn: $bvn, id: $id, verified: $verified, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CreateShareholdersDataCopyWith<$Res>  {
  factory $CreateShareholdersDataCopyWith(CreateShareholdersData value, $Res Function(CreateShareholdersData) _then) = _$CreateShareholdersDataCopyWithImpl;
@useResult
$Res call({
 String name, String bvn, int id, bool verified, String? createdAt
});




}
/// @nodoc
class _$CreateShareholdersDataCopyWithImpl<$Res>
    implements $CreateShareholdersDataCopyWith<$Res> {
  _$CreateShareholdersDataCopyWithImpl(this._self, this._then);

  final CreateShareholdersData _self;
  final $Res Function(CreateShareholdersData) _then;

/// Create a copy of CreateShareholdersData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? bvn = null,Object? id = null,Object? verified = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bvn: null == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateShareholdersData].
extension CreateShareholdersDataPatterns on CreateShareholdersData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateShareholdersData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateShareholdersData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateShareholdersData value)  $default,){
final _that = this;
switch (_that) {
case _CreateShareholdersData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateShareholdersData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateShareholdersData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String bvn,  int id,  bool verified,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateShareholdersData() when $default != null:
return $default(_that.name,_that.bvn,_that.id,_that.verified,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String bvn,  int id,  bool verified,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CreateShareholdersData():
return $default(_that.name,_that.bvn,_that.id,_that.verified,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String bvn,  int id,  bool verified,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CreateShareholdersData() when $default != null:
return $default(_that.name,_that.bvn,_that.id,_that.verified,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateShareholdersData implements CreateShareholdersData {
  const _CreateShareholdersData({required this.name, required this.bvn, required this.id, this.verified = false, this.createdAt});
  factory _CreateShareholdersData.fromJson(Map<String, dynamic> json) => _$CreateShareholdersDataFromJson(json);

@override final  String name;
@override final  String bvn;
@override final  int id;
@override@JsonKey() final  bool verified;
@override final  String? createdAt;

/// Create a copy of CreateShareholdersData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateShareholdersDataCopyWith<_CreateShareholdersData> get copyWith => __$CreateShareholdersDataCopyWithImpl<_CreateShareholdersData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateShareholdersDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateShareholdersData&&(identical(other.name, name) || other.name == name)&&(identical(other.bvn, bvn) || other.bvn == bvn)&&(identical(other.id, id) || other.id == id)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,bvn,id,verified,createdAt);

@override
String toString() {
  return 'CreateShareholdersData(name: $name, bvn: $bvn, id: $id, verified: $verified, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CreateShareholdersDataCopyWith<$Res> implements $CreateShareholdersDataCopyWith<$Res> {
  factory _$CreateShareholdersDataCopyWith(_CreateShareholdersData value, $Res Function(_CreateShareholdersData) _then) = __$CreateShareholdersDataCopyWithImpl;
@override @useResult
$Res call({
 String name, String bvn, int id, bool verified, String? createdAt
});




}
/// @nodoc
class __$CreateShareholdersDataCopyWithImpl<$Res>
    implements _$CreateShareholdersDataCopyWith<$Res> {
  __$CreateShareholdersDataCopyWithImpl(this._self, this._then);

  final _CreateShareholdersData _self;
  final $Res Function(_CreateShareholdersData) _then;

/// Create a copy of CreateShareholdersData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? bvn = null,Object? id = null,Object? verified = null,Object? createdAt = freezed,}) {
  return _then(_CreateShareholdersData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bvn: null == bvn ? _self.bvn : bvn // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
