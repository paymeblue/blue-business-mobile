// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionOption {

 Widget get icon; String get title; VoidCallback? get onTap; String? get subtitle; Widget? get trailing;
/// Create a copy of SectionOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionOptionCopyWith<SectionOption> get copyWith => _$SectionOptionCopyWithImpl<SectionOption>(this as SectionOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionOption&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.onTap, onTap) || other.onTap == onTap)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.trailing, trailing) || other.trailing == trailing));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,onTap,subtitle,trailing);

@override
String toString() {
  return 'SectionOption(icon: $icon, title: $title, onTap: $onTap, subtitle: $subtitle, trailing: $trailing)';
}


}

/// @nodoc
abstract mixin class $SectionOptionCopyWith<$Res>  {
  factory $SectionOptionCopyWith(SectionOption value, $Res Function(SectionOption) _then) = _$SectionOptionCopyWithImpl;
@useResult
$Res call({
 Widget icon, String title, VoidCallback? onTap, String? subtitle, Widget? trailing
});




}
/// @nodoc
class _$SectionOptionCopyWithImpl<$Res>
    implements $SectionOptionCopyWith<$Res> {
  _$SectionOptionCopyWithImpl(this._self, this._then);

  final SectionOption _self;
  final $Res Function(SectionOption) _then;

/// Create a copy of SectionOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? title = null,Object? onTap = freezed,Object? subtitle = freezed,Object? trailing = freezed,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,onTap: freezed == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,trailing: freezed == trailing ? _self.trailing : trailing // ignore: cast_nullable_to_non_nullable
as Widget?,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionOption].
extension SectionOptionPatterns on SectionOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionOption value)  $default,){
final _that = this;
switch (_that) {
case _SectionOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionOption value)?  $default,){
final _that = this;
switch (_that) {
case _SectionOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Widget icon,  String title,  VoidCallback? onTap,  String? subtitle,  Widget? trailing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionOption() when $default != null:
return $default(_that.icon,_that.title,_that.onTap,_that.subtitle,_that.trailing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Widget icon,  String title,  VoidCallback? onTap,  String? subtitle,  Widget? trailing)  $default,) {final _that = this;
switch (_that) {
case _SectionOption():
return $default(_that.icon,_that.title,_that.onTap,_that.subtitle,_that.trailing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Widget icon,  String title,  VoidCallback? onTap,  String? subtitle,  Widget? trailing)?  $default,) {final _that = this;
switch (_that) {
case _SectionOption() when $default != null:
return $default(_that.icon,_that.title,_that.onTap,_that.subtitle,_that.trailing);case _:
  return null;

}
}

}

/// @nodoc


class _SectionOption implements SectionOption {
  const _SectionOption({required this.icon, required this.title, this.onTap, this.subtitle, this.trailing});
  

@override final  Widget icon;
@override final  String title;
@override final  VoidCallback? onTap;
@override final  String? subtitle;
@override final  Widget? trailing;

/// Create a copy of SectionOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionOptionCopyWith<_SectionOption> get copyWith => __$SectionOptionCopyWithImpl<_SectionOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionOption&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.onTap, onTap) || other.onTap == onTap)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.trailing, trailing) || other.trailing == trailing));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,onTap,subtitle,trailing);

@override
String toString() {
  return 'SectionOption(icon: $icon, title: $title, onTap: $onTap, subtitle: $subtitle, trailing: $trailing)';
}


}

/// @nodoc
abstract mixin class _$SectionOptionCopyWith<$Res> implements $SectionOptionCopyWith<$Res> {
  factory _$SectionOptionCopyWith(_SectionOption value, $Res Function(_SectionOption) _then) = __$SectionOptionCopyWithImpl;
@override @useResult
$Res call({
 Widget icon, String title, VoidCallback? onTap, String? subtitle, Widget? trailing
});




}
/// @nodoc
class __$SectionOptionCopyWithImpl<$Res>
    implements _$SectionOptionCopyWith<$Res> {
  __$SectionOptionCopyWithImpl(this._self, this._then);

  final _SectionOption _self;
  final $Res Function(_SectionOption) _then;

/// Create a copy of SectionOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? title = null,Object? onTap = freezed,Object? subtitle = freezed,Object? trailing = freezed,}) {
  return _then(_SectionOption(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,onTap: freezed == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,trailing: freezed == trailing ? _self.trailing : trailing // ignore: cast_nullable_to_non_nullable
as Widget?,
  ));
}


}

// dart format on
