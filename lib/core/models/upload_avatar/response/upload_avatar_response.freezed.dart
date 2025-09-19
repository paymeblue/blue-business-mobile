// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_avatar_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadAvatarResponse {

 String get status; String? get message; UserImage? get data;
/// Create a copy of UploadAvatarResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadAvatarResponseCopyWith<UploadAvatarResponse> get copyWith => _$UploadAvatarResponseCopyWithImpl<UploadAvatarResponse>(this as UploadAvatarResponse, _$identity);

  /// Serializes this UploadAvatarResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadAvatarResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'UploadAvatarResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $UploadAvatarResponseCopyWith<$Res>  {
  factory $UploadAvatarResponseCopyWith(UploadAvatarResponse value, $Res Function(UploadAvatarResponse) _then) = _$UploadAvatarResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, UserImage? data
});


$UserImageCopyWith<$Res>? get data;

}
/// @nodoc
class _$UploadAvatarResponseCopyWithImpl<$Res>
    implements $UploadAvatarResponseCopyWith<$Res> {
  _$UploadAvatarResponseCopyWithImpl(this._self, this._then);

  final UploadAvatarResponse _self;
  final $Res Function(UploadAvatarResponse) _then;

/// Create a copy of UploadAvatarResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserImage?,
  ));
}
/// Create a copy of UploadAvatarResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserImageCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserImageCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UploadAvatarResponse].
extension UploadAvatarResponsePatterns on UploadAvatarResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadAvatarResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadAvatarResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadAvatarResponse value)  $default,){
final _that = this;
switch (_that) {
case _UploadAvatarResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadAvatarResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UploadAvatarResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  UserImage? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadAvatarResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  UserImage? data)  $default,) {final _that = this;
switch (_that) {
case _UploadAvatarResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  UserImage? data)?  $default,) {final _that = this;
switch (_that) {
case _UploadAvatarResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadAvatarResponse implements UploadAvatarResponse {
  const _UploadAvatarResponse({this.status = "fail", this.message, this.data});
  factory _UploadAvatarResponse.fromJson(Map<String, dynamic> json) => _$UploadAvatarResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  UserImage? data;

/// Create a copy of UploadAvatarResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadAvatarResponseCopyWith<_UploadAvatarResponse> get copyWith => __$UploadAvatarResponseCopyWithImpl<_UploadAvatarResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadAvatarResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadAvatarResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'UploadAvatarResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$UploadAvatarResponseCopyWith<$Res> implements $UploadAvatarResponseCopyWith<$Res> {
  factory _$UploadAvatarResponseCopyWith(_UploadAvatarResponse value, $Res Function(_UploadAvatarResponse) _then) = __$UploadAvatarResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, UserImage? data
});


@override $UserImageCopyWith<$Res>? get data;

}
/// @nodoc
class __$UploadAvatarResponseCopyWithImpl<$Res>
    implements _$UploadAvatarResponseCopyWith<$Res> {
  __$UploadAvatarResponseCopyWithImpl(this._self, this._then);

  final _UploadAvatarResponse _self;
  final $Res Function(_UploadAvatarResponse) _then;

/// Create a copy of UploadAvatarResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_UploadAvatarResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserImage?,
  ));
}

/// Create a copy of UploadAvatarResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserImageCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserImageCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
