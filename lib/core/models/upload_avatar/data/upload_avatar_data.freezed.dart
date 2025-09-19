// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_avatar_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadAvatarResponseData {

 UserImage get user;
/// Create a copy of UploadAvatarResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadAvatarResponseDataCopyWith<UploadAvatarResponseData> get copyWith => _$UploadAvatarResponseDataCopyWithImpl<UploadAvatarResponseData>(this as UploadAvatarResponseData, _$identity);

  /// Serializes this UploadAvatarResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadAvatarResponseData&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UploadAvatarResponseData(user: $user)';
}


}

/// @nodoc
abstract mixin class $UploadAvatarResponseDataCopyWith<$Res>  {
  factory $UploadAvatarResponseDataCopyWith(UploadAvatarResponseData value, $Res Function(UploadAvatarResponseData) _then) = _$UploadAvatarResponseDataCopyWithImpl;
@useResult
$Res call({
 UserImage user
});


$UserImageCopyWith<$Res> get user;

}
/// @nodoc
class _$UploadAvatarResponseDataCopyWithImpl<$Res>
    implements $UploadAvatarResponseDataCopyWith<$Res> {
  _$UploadAvatarResponseDataCopyWithImpl(this._self, this._then);

  final UploadAvatarResponseData _self;
  final $Res Function(UploadAvatarResponseData) _then;

/// Create a copy of UploadAvatarResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserImage,
  ));
}
/// Create a copy of UploadAvatarResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserImageCopyWith<$Res> get user {
  
  return $UserImageCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [UploadAvatarResponseData].
extension UploadAvatarResponseDataPatterns on UploadAvatarResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadAvatarResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadAvatarResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadAvatarResponseData value)  $default,){
final _that = this;
switch (_that) {
case _UploadAvatarResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadAvatarResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _UploadAvatarResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserImage user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadAvatarResponseData() when $default != null:
return $default(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserImage user)  $default,) {final _that = this;
switch (_that) {
case _UploadAvatarResponseData():
return $default(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserImage user)?  $default,) {final _that = this;
switch (_that) {
case _UploadAvatarResponseData() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadAvatarResponseData implements UploadAvatarResponseData {
  const _UploadAvatarResponseData({required this.user});
  factory _UploadAvatarResponseData.fromJson(Map<String, dynamic> json) => _$UploadAvatarResponseDataFromJson(json);

@override final  UserImage user;

/// Create a copy of UploadAvatarResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadAvatarResponseDataCopyWith<_UploadAvatarResponseData> get copyWith => __$UploadAvatarResponseDataCopyWithImpl<_UploadAvatarResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadAvatarResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadAvatarResponseData&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UploadAvatarResponseData(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UploadAvatarResponseDataCopyWith<$Res> implements $UploadAvatarResponseDataCopyWith<$Res> {
  factory _$UploadAvatarResponseDataCopyWith(_UploadAvatarResponseData value, $Res Function(_UploadAvatarResponseData) _then) = __$UploadAvatarResponseDataCopyWithImpl;
@override @useResult
$Res call({
 UserImage user
});


@override $UserImageCopyWith<$Res> get user;

}
/// @nodoc
class __$UploadAvatarResponseDataCopyWithImpl<$Res>
    implements _$UploadAvatarResponseDataCopyWith<$Res> {
  __$UploadAvatarResponseDataCopyWithImpl(this._self, this._then);

  final _UploadAvatarResponseData _self;
  final $Res Function(_UploadAvatarResponseData) _then;

/// Create a copy of UploadAvatarResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_UploadAvatarResponseData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserImage,
  ));
}

/// Create a copy of UploadAvatarResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserImageCopyWith<$Res> get user {
  
  return $UserImageCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
