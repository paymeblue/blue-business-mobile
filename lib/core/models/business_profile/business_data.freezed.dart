// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessData {

 String get name; String get cacNumber; String get category;
/// Create a copy of BusinessData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessDataCopyWith<BusinessData> get copyWith => _$BusinessDataCopyWithImpl<BusinessData>(this as BusinessData, _$identity);

  /// Serializes this BusinessData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessData&&(identical(other.name, name) || other.name == name)&&(identical(other.cacNumber, cacNumber) || other.cacNumber == cacNumber)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cacNumber,category);

@override
String toString() {
  return 'BusinessData(name: $name, cacNumber: $cacNumber, category: $category)';
}


}

/// @nodoc
abstract mixin class $BusinessDataCopyWith<$Res>  {
  factory $BusinessDataCopyWith(BusinessData value, $Res Function(BusinessData) _then) = _$BusinessDataCopyWithImpl;
@useResult
$Res call({
 String name, String cacNumber, String category
});




}
/// @nodoc
class _$BusinessDataCopyWithImpl<$Res>
    implements $BusinessDataCopyWith<$Res> {
  _$BusinessDataCopyWithImpl(this._self, this._then);

  final BusinessData _self;
  final $Res Function(BusinessData) _then;

/// Create a copy of BusinessData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? cacNumber = null,Object? category = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cacNumber: null == cacNumber ? _self.cacNumber : cacNumber // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BusinessData].
extension BusinessDataPatterns on BusinessData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusinessData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusinessData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusinessData value)  $default,){
final _that = this;
switch (_that) {
case _BusinessData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusinessData value)?  $default,){
final _that = this;
switch (_that) {
case _BusinessData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String cacNumber,  String category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusinessData() when $default != null:
return $default(_that.name,_that.cacNumber,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String cacNumber,  String category)  $default,) {final _that = this;
switch (_that) {
case _BusinessData():
return $default(_that.name,_that.cacNumber,_that.category);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String cacNumber,  String category)?  $default,) {final _that = this;
switch (_that) {
case _BusinessData() when $default != null:
return $default(_that.name,_that.cacNumber,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BusinessData implements BusinessData {
  const _BusinessData({required this.name, required this.cacNumber, required this.category});
  factory _BusinessData.fromJson(Map<String, dynamic> json) => _$BusinessDataFromJson(json);

@override final  String name;
@override final  String cacNumber;
@override final  String category;

/// Create a copy of BusinessData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusinessDataCopyWith<_BusinessData> get copyWith => __$BusinessDataCopyWithImpl<_BusinessData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BusinessDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusinessData&&(identical(other.name, name) || other.name == name)&&(identical(other.cacNumber, cacNumber) || other.cacNumber == cacNumber)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,cacNumber,category);

@override
String toString() {
  return 'BusinessData(name: $name, cacNumber: $cacNumber, category: $category)';
}


}

/// @nodoc
abstract mixin class _$BusinessDataCopyWith<$Res> implements $BusinessDataCopyWith<$Res> {
  factory _$BusinessDataCopyWith(_BusinessData value, $Res Function(_BusinessData) _then) = __$BusinessDataCopyWithImpl;
@override @useResult
$Res call({
 String name, String cacNumber, String category
});




}
/// @nodoc
class __$BusinessDataCopyWithImpl<$Res>
    implements _$BusinessDataCopyWith<$Res> {
  __$BusinessDataCopyWithImpl(this._self, this._then);

  final _BusinessData _self;
  final $Res Function(_BusinessData) _then;

/// Create a copy of BusinessData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? cacNumber = null,Object? category = null,}) {
  return _then(_BusinessData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cacNumber: null == cacNumber ? _self.cacNumber : cacNumber // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
