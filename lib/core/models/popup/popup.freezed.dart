// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopupModel {

 String get title; Widget? get icon; Function get onTap;
/// Create a copy of PopupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PopupModelCopyWith<PopupModel> get copyWith => _$PopupModelCopyWithImpl<PopupModel>(this as PopupModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PopupModel&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,title,icon,onTap);

@override
String toString() {
  return 'PopupModel(title: $title, icon: $icon, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class $PopupModelCopyWith<$Res>  {
  factory $PopupModelCopyWith(PopupModel value, $Res Function(PopupModel) _then) = _$PopupModelCopyWithImpl;
@useResult
$Res call({
 String title, Widget? icon, Function onTap
});




}
/// @nodoc
class _$PopupModelCopyWithImpl<$Res>
    implements $PopupModelCopyWith<$Res> {
  _$PopupModelCopyWithImpl(this._self, this._then);

  final PopupModel _self;
  final $Res Function(PopupModel) _then;

/// Create a copy of PopupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? icon = freezed,Object? onTap = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget?,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as Function,
  ));
}

}


/// Adds pattern-matching-related methods to [PopupModel].
extension PopupModelPatterns on PopupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PopupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PopupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PopupModel value)  $default,){
final _that = this;
switch (_that) {
case _PopupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PopupModel value)?  $default,){
final _that = this;
switch (_that) {
case _PopupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  Widget? icon,  Function onTap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PopupModel() when $default != null:
return $default(_that.title,_that.icon,_that.onTap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  Widget? icon,  Function onTap)  $default,) {final _that = this;
switch (_that) {
case _PopupModel():
return $default(_that.title,_that.icon,_that.onTap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  Widget? icon,  Function onTap)?  $default,) {final _that = this;
switch (_that) {
case _PopupModel() when $default != null:
return $default(_that.title,_that.icon,_that.onTap);case _:
  return null;

}
}

}

/// @nodoc


class _PopupModel implements PopupModel {
  const _PopupModel({required this.title, this.icon, required this.onTap});
  

@override final  String title;
@override final  Widget? icon;
@override final  Function onTap;

/// Create a copy of PopupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PopupModelCopyWith<_PopupModel> get copyWith => __$PopupModelCopyWithImpl<_PopupModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PopupModel&&(identical(other.title, title) || other.title == title)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,title,icon,onTap);

@override
String toString() {
  return 'PopupModel(title: $title, icon: $icon, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class _$PopupModelCopyWith<$Res> implements $PopupModelCopyWith<$Res> {
  factory _$PopupModelCopyWith(_PopupModel value, $Res Function(_PopupModel) _then) = __$PopupModelCopyWithImpl;
@override @useResult
$Res call({
 String title, Widget? icon, Function onTap
});




}
/// @nodoc
class __$PopupModelCopyWithImpl<$Res>
    implements _$PopupModelCopyWith<$Res> {
  __$PopupModelCopyWithImpl(this._self, this._then);

  final _PopupModel _self;
  final $Res Function(_PopupModel) _then;

/// Create a copy of PopupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? icon = freezed,Object? onTap = null,}) {
  return _then(_PopupModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget?,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as Function,
  ));
}


}

// dart format on
