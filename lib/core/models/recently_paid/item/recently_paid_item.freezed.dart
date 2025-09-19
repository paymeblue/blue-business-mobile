// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_paid_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecentlyPaidItem {

 String get uFirstName; String get uLastName; String get wWalletCode; String? get uMiddleName;
/// Create a copy of RecentlyPaidItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlyPaidItemCopyWith<RecentlyPaidItem> get copyWith => _$RecentlyPaidItemCopyWithImpl<RecentlyPaidItem>(this as RecentlyPaidItem, _$identity);

  /// Serializes this RecentlyPaidItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlyPaidItem&&(identical(other.uFirstName, uFirstName) || other.uFirstName == uFirstName)&&(identical(other.uLastName, uLastName) || other.uLastName == uLastName)&&(identical(other.wWalletCode, wWalletCode) || other.wWalletCode == wWalletCode)&&(identical(other.uMiddleName, uMiddleName) || other.uMiddleName == uMiddleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uFirstName,uLastName,wWalletCode,uMiddleName);

@override
String toString() {
  return 'RecentlyPaidItem(uFirstName: $uFirstName, uLastName: $uLastName, wWalletCode: $wWalletCode, uMiddleName: $uMiddleName)';
}


}

/// @nodoc
abstract mixin class $RecentlyPaidItemCopyWith<$Res>  {
  factory $RecentlyPaidItemCopyWith(RecentlyPaidItem value, $Res Function(RecentlyPaidItem) _then) = _$RecentlyPaidItemCopyWithImpl;
@useResult
$Res call({
 String uFirstName, String uLastName, String wWalletCode, String? uMiddleName
});




}
/// @nodoc
class _$RecentlyPaidItemCopyWithImpl<$Res>
    implements $RecentlyPaidItemCopyWith<$Res> {
  _$RecentlyPaidItemCopyWithImpl(this._self, this._then);

  final RecentlyPaidItem _self;
  final $Res Function(RecentlyPaidItem) _then;

/// Create a copy of RecentlyPaidItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uFirstName = null,Object? uLastName = null,Object? wWalletCode = null,Object? uMiddleName = freezed,}) {
  return _then(_self.copyWith(
uFirstName: null == uFirstName ? _self.uFirstName : uFirstName // ignore: cast_nullable_to_non_nullable
as String,uLastName: null == uLastName ? _self.uLastName : uLastName // ignore: cast_nullable_to_non_nullable
as String,wWalletCode: null == wWalletCode ? _self.wWalletCode : wWalletCode // ignore: cast_nullable_to_non_nullable
as String,uMiddleName: freezed == uMiddleName ? _self.uMiddleName : uMiddleName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentlyPaidItem].
extension RecentlyPaidItemPatterns on RecentlyPaidItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentlyPaidItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentlyPaidItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentlyPaidItem value)  $default,){
final _that = this;
switch (_that) {
case _RecentlyPaidItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentlyPaidItem value)?  $default,){
final _that = this;
switch (_that) {
case _RecentlyPaidItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uFirstName,  String uLastName,  String wWalletCode,  String? uMiddleName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentlyPaidItem() when $default != null:
return $default(_that.uFirstName,_that.uLastName,_that.wWalletCode,_that.uMiddleName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uFirstName,  String uLastName,  String wWalletCode,  String? uMiddleName)  $default,) {final _that = this;
switch (_that) {
case _RecentlyPaidItem():
return $default(_that.uFirstName,_that.uLastName,_that.wWalletCode,_that.uMiddleName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uFirstName,  String uLastName,  String wWalletCode,  String? uMiddleName)?  $default,) {final _that = this;
switch (_that) {
case _RecentlyPaidItem() when $default != null:
return $default(_that.uFirstName,_that.uLastName,_that.wWalletCode,_that.uMiddleName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentlyPaidItem implements RecentlyPaidItem {
  const _RecentlyPaidItem({required this.uFirstName, required this.uLastName, required this.wWalletCode, this.uMiddleName});
  factory _RecentlyPaidItem.fromJson(Map<String, dynamic> json) => _$RecentlyPaidItemFromJson(json);

@override final  String uFirstName;
@override final  String uLastName;
@override final  String wWalletCode;
@override final  String? uMiddleName;

/// Create a copy of RecentlyPaidItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentlyPaidItemCopyWith<_RecentlyPaidItem> get copyWith => __$RecentlyPaidItemCopyWithImpl<_RecentlyPaidItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentlyPaidItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlyPaidItem&&(identical(other.uFirstName, uFirstName) || other.uFirstName == uFirstName)&&(identical(other.uLastName, uLastName) || other.uLastName == uLastName)&&(identical(other.wWalletCode, wWalletCode) || other.wWalletCode == wWalletCode)&&(identical(other.uMiddleName, uMiddleName) || other.uMiddleName == uMiddleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uFirstName,uLastName,wWalletCode,uMiddleName);

@override
String toString() {
  return 'RecentlyPaidItem(uFirstName: $uFirstName, uLastName: $uLastName, wWalletCode: $wWalletCode, uMiddleName: $uMiddleName)';
}


}

/// @nodoc
abstract mixin class _$RecentlyPaidItemCopyWith<$Res> implements $RecentlyPaidItemCopyWith<$Res> {
  factory _$RecentlyPaidItemCopyWith(_RecentlyPaidItem value, $Res Function(_RecentlyPaidItem) _then) = __$RecentlyPaidItemCopyWithImpl;
@override @useResult
$Res call({
 String uFirstName, String uLastName, String wWalletCode, String? uMiddleName
});




}
/// @nodoc
class __$RecentlyPaidItemCopyWithImpl<$Res>
    implements _$RecentlyPaidItemCopyWith<$Res> {
  __$RecentlyPaidItemCopyWithImpl(this._self, this._then);

  final _RecentlyPaidItem _self;
  final $Res Function(_RecentlyPaidItem) _then;

/// Create a copy of RecentlyPaidItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uFirstName = null,Object? uLastName = null,Object? wWalletCode = null,Object? uMiddleName = freezed,}) {
  return _then(_RecentlyPaidItem(
uFirstName: null == uFirstName ? _self.uFirstName : uFirstName // ignore: cast_nullable_to_non_nullable
as String,uLastName: null == uLastName ? _self.uLastName : uLastName // ignore: cast_nullable_to_non_nullable
as String,wWalletCode: null == wWalletCode ? _self.wWalletCode : wWalletCode // ignore: cast_nullable_to_non_nullable
as String,uMiddleName: freezed == uMiddleName ? _self.uMiddleName : uMiddleName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
