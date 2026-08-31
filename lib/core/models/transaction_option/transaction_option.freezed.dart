// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionOption {

 Widget get icon; String get title; VoidCallback get onTap;
/// Create a copy of TransactionOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionOptionCopyWith<TransactionOption> get copyWith => _$TransactionOptionCopyWithImpl<TransactionOption>(this as TransactionOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionOption&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,onTap);

@override
String toString() {
  return 'TransactionOption(icon: $icon, title: $title, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class $TransactionOptionCopyWith<$Res>  {
  factory $TransactionOptionCopyWith(TransactionOption value, $Res Function(TransactionOption) _then) = _$TransactionOptionCopyWithImpl;
@useResult
$Res call({
 Widget icon, String title, VoidCallback onTap
});




}
/// @nodoc
class _$TransactionOptionCopyWithImpl<$Res>
    implements $TransactionOptionCopyWith<$Res> {
  _$TransactionOptionCopyWithImpl(this._self, this._then);

  final TransactionOption _self;
  final $Res Function(TransactionOption) _then;

/// Create a copy of TransactionOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = null,Object? title = null,Object? onTap = null,}) {
  return _then(_self.copyWith(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionOption].
extension TransactionOptionPatterns on TransactionOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionOption value)  $default,){
final _that = this;
switch (_that) {
case _TransactionOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionOption value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Widget icon,  String title,  VoidCallback onTap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionOption() when $default != null:
return $default(_that.icon,_that.title,_that.onTap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Widget icon,  String title,  VoidCallback onTap)  $default,) {final _that = this;
switch (_that) {
case _TransactionOption():
return $default(_that.icon,_that.title,_that.onTap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Widget icon,  String title,  VoidCallback onTap)?  $default,) {final _that = this;
switch (_that) {
case _TransactionOption() when $default != null:
return $default(_that.icon,_that.title,_that.onTap);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionOption implements TransactionOption {
  const _TransactionOption({required this.icon, required this.title, required this.onTap});
  

@override final  Widget icon;
@override final  String title;
@override final  VoidCallback onTap;

/// Create a copy of TransactionOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionOptionCopyWith<_TransactionOption> get copyWith => __$TransactionOptionCopyWithImpl<_TransactionOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionOption&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.title, title) || other.title == title)&&(identical(other.onTap, onTap) || other.onTap == onTap));
}


@override
int get hashCode => Object.hash(runtimeType,icon,title,onTap);

@override
String toString() {
  return 'TransactionOption(icon: $icon, title: $title, onTap: $onTap)';
}


}

/// @nodoc
abstract mixin class _$TransactionOptionCopyWith<$Res> implements $TransactionOptionCopyWith<$Res> {
  factory _$TransactionOptionCopyWith(_TransactionOption value, $Res Function(_TransactionOption) _then) = __$TransactionOptionCopyWithImpl;
@override @useResult
$Res call({
 Widget icon, String title, VoidCallback onTap
});




}
/// @nodoc
class __$TransactionOptionCopyWithImpl<$Res>
    implements _$TransactionOptionCopyWith<$Res> {
  __$TransactionOptionCopyWithImpl(this._self, this._then);

  final _TransactionOption _self;
  final $Res Function(_TransactionOption) _then;

/// Create a copy of TransactionOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = null,Object? title = null,Object? onTap = null,}) {
  return _then(_TransactionOption(
icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as Widget,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,onTap: null == onTap ? _self.onTap : onTap // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}


}

// dart format on
