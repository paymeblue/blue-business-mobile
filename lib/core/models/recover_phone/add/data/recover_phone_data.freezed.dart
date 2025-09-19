// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_phone_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendNewPhoneData {

 String get reference; String get newPhone;
/// Create a copy of SendNewPhoneData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendNewPhoneDataCopyWith<SendNewPhoneData> get copyWith => _$SendNewPhoneDataCopyWithImpl<SendNewPhoneData>(this as SendNewPhoneData, _$identity);

  /// Serializes this SendNewPhoneData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendNewPhoneData&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.newPhone, newPhone) || other.newPhone == newPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,newPhone);

@override
String toString() {
  return 'SendNewPhoneData(reference: $reference, newPhone: $newPhone)';
}


}

/// @nodoc
abstract mixin class $SendNewPhoneDataCopyWith<$Res>  {
  factory $SendNewPhoneDataCopyWith(SendNewPhoneData value, $Res Function(SendNewPhoneData) _then) = _$SendNewPhoneDataCopyWithImpl;
@useResult
$Res call({
 String reference, String newPhone
});




}
/// @nodoc
class _$SendNewPhoneDataCopyWithImpl<$Res>
    implements $SendNewPhoneDataCopyWith<$Res> {
  _$SendNewPhoneDataCopyWithImpl(this._self, this._then);

  final SendNewPhoneData _self;
  final $Res Function(SendNewPhoneData) _then;

/// Create a copy of SendNewPhoneData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reference = null,Object? newPhone = null,}) {
  return _then(_self.copyWith(
reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,newPhone: null == newPhone ? _self.newPhone : newPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SendNewPhoneData].
extension SendNewPhoneDataPatterns on SendNewPhoneData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendNewPhoneData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendNewPhoneData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendNewPhoneData value)  $default,){
final _that = this;
switch (_that) {
case _SendNewPhoneData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendNewPhoneData value)?  $default,){
final _that = this;
switch (_that) {
case _SendNewPhoneData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reference,  String newPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendNewPhoneData() when $default != null:
return $default(_that.reference,_that.newPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reference,  String newPhone)  $default,) {final _that = this;
switch (_that) {
case _SendNewPhoneData():
return $default(_that.reference,_that.newPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reference,  String newPhone)?  $default,) {final _that = this;
switch (_that) {
case _SendNewPhoneData() when $default != null:
return $default(_that.reference,_that.newPhone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendNewPhoneData implements SendNewPhoneData {
  const _SendNewPhoneData({required this.reference, required this.newPhone});
  factory _SendNewPhoneData.fromJson(Map<String, dynamic> json) => _$SendNewPhoneDataFromJson(json);

@override final  String reference;
@override final  String newPhone;

/// Create a copy of SendNewPhoneData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendNewPhoneDataCopyWith<_SendNewPhoneData> get copyWith => __$SendNewPhoneDataCopyWithImpl<_SendNewPhoneData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendNewPhoneDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendNewPhoneData&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.newPhone, newPhone) || other.newPhone == newPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reference,newPhone);

@override
String toString() {
  return 'SendNewPhoneData(reference: $reference, newPhone: $newPhone)';
}


}

/// @nodoc
abstract mixin class _$SendNewPhoneDataCopyWith<$Res> implements $SendNewPhoneDataCopyWith<$Res> {
  factory _$SendNewPhoneDataCopyWith(_SendNewPhoneData value, $Res Function(_SendNewPhoneData) _then) = __$SendNewPhoneDataCopyWithImpl;
@override @useResult
$Res call({
 String reference, String newPhone
});




}
/// @nodoc
class __$SendNewPhoneDataCopyWithImpl<$Res>
    implements _$SendNewPhoneDataCopyWith<$Res> {
  __$SendNewPhoneDataCopyWithImpl(this._self, this._then);

  final _SendNewPhoneData _self;
  final $Res Function(_SendNewPhoneData) _then;

/// Create a copy of SendNewPhoneData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reference = null,Object? newPhone = null,}) {
  return _then(_SendNewPhoneData(
reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,newPhone: null == newPhone ? _self.newPhone : newPhone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
