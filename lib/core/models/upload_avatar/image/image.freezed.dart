// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserImage {

 int get id; String get displayPicture;
/// Create a copy of UserImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserImageCopyWith<UserImage> get copyWith => _$UserImageCopyWithImpl<UserImage>(this as UserImage, _$identity);

  /// Serializes this UserImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserImage&&(identical(other.id, id) || other.id == id)&&(identical(other.displayPicture, displayPicture) || other.displayPicture == displayPicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayPicture);

@override
String toString() {
  return 'UserImage(id: $id, displayPicture: $displayPicture)';
}


}

/// @nodoc
abstract mixin class $UserImageCopyWith<$Res>  {
  factory $UserImageCopyWith(UserImage value, $Res Function(UserImage) _then) = _$UserImageCopyWithImpl;
@useResult
$Res call({
 int id, String displayPicture
});




}
/// @nodoc
class _$UserImageCopyWithImpl<$Res>
    implements $UserImageCopyWith<$Res> {
  _$UserImageCopyWithImpl(this._self, this._then);

  final UserImage _self;
  final $Res Function(UserImage) _then;

/// Create a copy of UserImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? displayPicture = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,displayPicture: null == displayPicture ? _self.displayPicture : displayPicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserImage].
extension UserImagePatterns on UserImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserImage value)  $default,){
final _that = this;
switch (_that) {
case _UserImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserImage value)?  $default,){
final _that = this;
switch (_that) {
case _UserImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String displayPicture)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserImage() when $default != null:
return $default(_that.id,_that.displayPicture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String displayPicture)  $default,) {final _that = this;
switch (_that) {
case _UserImage():
return $default(_that.id,_that.displayPicture);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String displayPicture)?  $default,) {final _that = this;
switch (_that) {
case _UserImage() when $default != null:
return $default(_that.id,_that.displayPicture);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserImage implements UserImage {
  const _UserImage({required this.id, required this.displayPicture});
  factory _UserImage.fromJson(Map<String, dynamic> json) => _$UserImageFromJson(json);

@override final  int id;
@override final  String displayPicture;

/// Create a copy of UserImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserImageCopyWith<_UserImage> get copyWith => __$UserImageCopyWithImpl<_UserImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserImageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserImage&&(identical(other.id, id) || other.id == id)&&(identical(other.displayPicture, displayPicture) || other.displayPicture == displayPicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayPicture);

@override
String toString() {
  return 'UserImage(id: $id, displayPicture: $displayPicture)';
}


}

/// @nodoc
abstract mixin class _$UserImageCopyWith<$Res> implements $UserImageCopyWith<$Res> {
  factory _$UserImageCopyWith(_UserImage value, $Res Function(_UserImage) _then) = __$UserImageCopyWithImpl;
@override @useResult
$Res call({
 int id, String displayPicture
});




}
/// @nodoc
class __$UserImageCopyWithImpl<$Res>
    implements _$UserImageCopyWith<$Res> {
  __$UserImageCopyWithImpl(this._self, this._then);

  final _UserImage _self;
  final $Res Function(_UserImage) _then;

/// Create a copy of UserImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayPicture = null,}) {
  return _then(_UserImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,displayPicture: null == displayPicture ? _self.displayPicture : displayPicture // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
