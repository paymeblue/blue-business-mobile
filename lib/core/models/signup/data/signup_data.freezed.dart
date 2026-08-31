// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupData {

 int get id; String get phone; int get level; bool get businessProfileCompleted; bool get businessDetailsCompleted; bool get businessKycCompleted; int? get businessId; String? get createdAt;
/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupDataCopyWith<SignupData> get copyWith => _$SignupDataCopyWithImpl<SignupData>(this as SignupData, _$identity);

  /// Serializes this SignupData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupData&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.level, level) || other.level == level)&&(identical(other.businessProfileCompleted, businessProfileCompleted) || other.businessProfileCompleted == businessProfileCompleted)&&(identical(other.businessDetailsCompleted, businessDetailsCompleted) || other.businessDetailsCompleted == businessDetailsCompleted)&&(identical(other.businessKycCompleted, businessKycCompleted) || other.businessKycCompleted == businessKycCompleted)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,level,businessProfileCompleted,businessDetailsCompleted,businessKycCompleted,businessId,createdAt);

@override
String toString() {
  return 'SignupData(id: $id, phone: $phone, level: $level, businessProfileCompleted: $businessProfileCompleted, businessDetailsCompleted: $businessDetailsCompleted, businessKycCompleted: $businessKycCompleted, businessId: $businessId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SignupDataCopyWith<$Res>  {
  factory $SignupDataCopyWith(SignupData value, $Res Function(SignupData) _then) = _$SignupDataCopyWithImpl;
@useResult
$Res call({
 int id, String phone, int level, bool businessProfileCompleted, bool businessDetailsCompleted, bool businessKycCompleted, int? businessId, String? createdAt
});




}
/// @nodoc
class _$SignupDataCopyWithImpl<$Res>
    implements $SignupDataCopyWith<$Res> {
  _$SignupDataCopyWithImpl(this._self, this._then);

  final SignupData _self;
  final $Res Function(SignupData) _then;

/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? level = null,Object? businessProfileCompleted = null,Object? businessDetailsCompleted = null,Object? businessKycCompleted = null,Object? businessId = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,businessProfileCompleted: null == businessProfileCompleted ? _self.businessProfileCompleted : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessDetailsCompleted: null == businessDetailsCompleted ? _self.businessDetailsCompleted : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessKycCompleted: null == businessKycCompleted ? _self.businessKycCompleted : businessKycCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupData].
extension SignupDataPatterns on SignupData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupData value)  $default,){
final _that = this;
switch (_that) {
case _SignupData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupData value)?  $default,){
final _that = this;
switch (_that) {
case _SignupData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String phone,  int level,  bool businessProfileCompleted,  bool businessDetailsCompleted,  bool businessKycCompleted,  int? businessId,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupData() when $default != null:
return $default(_that.id,_that.phone,_that.level,_that.businessProfileCompleted,_that.businessDetailsCompleted,_that.businessKycCompleted,_that.businessId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String phone,  int level,  bool businessProfileCompleted,  bool businessDetailsCompleted,  bool businessKycCompleted,  int? businessId,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _SignupData():
return $default(_that.id,_that.phone,_that.level,_that.businessProfileCompleted,_that.businessDetailsCompleted,_that.businessKycCompleted,_that.businessId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String phone,  int level,  bool businessProfileCompleted,  bool businessDetailsCompleted,  bool businessKycCompleted,  int? businessId,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SignupData() when $default != null:
return $default(_that.id,_that.phone,_that.level,_that.businessProfileCompleted,_that.businessDetailsCompleted,_that.businessKycCompleted,_that.businessId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupData implements SignupData {
  const _SignupData({required this.id, required this.phone, required this.level, this.businessProfileCompleted = false, this.businessDetailsCompleted = false, this.businessKycCompleted = false, this.businessId, this.createdAt});
  factory _SignupData.fromJson(Map<String, dynamic> json) => _$SignupDataFromJson(json);

@override final  int id;
@override final  String phone;
@override final  int level;
@override@JsonKey() final  bool businessProfileCompleted;
@override@JsonKey() final  bool businessDetailsCompleted;
@override@JsonKey() final  bool businessKycCompleted;
@override final  int? businessId;
@override final  String? createdAt;

/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupDataCopyWith<_SignupData> get copyWith => __$SignupDataCopyWithImpl<_SignupData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupData&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.level, level) || other.level == level)&&(identical(other.businessProfileCompleted, businessProfileCompleted) || other.businessProfileCompleted == businessProfileCompleted)&&(identical(other.businessDetailsCompleted, businessDetailsCompleted) || other.businessDetailsCompleted == businessDetailsCompleted)&&(identical(other.businessKycCompleted, businessKycCompleted) || other.businessKycCompleted == businessKycCompleted)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,level,businessProfileCompleted,businessDetailsCompleted,businessKycCompleted,businessId,createdAt);

@override
String toString() {
  return 'SignupData(id: $id, phone: $phone, level: $level, businessProfileCompleted: $businessProfileCompleted, businessDetailsCompleted: $businessDetailsCompleted, businessKycCompleted: $businessKycCompleted, businessId: $businessId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SignupDataCopyWith<$Res> implements $SignupDataCopyWith<$Res> {
  factory _$SignupDataCopyWith(_SignupData value, $Res Function(_SignupData) _then) = __$SignupDataCopyWithImpl;
@override @useResult
$Res call({
 int id, String phone, int level, bool businessProfileCompleted, bool businessDetailsCompleted, bool businessKycCompleted, int? businessId, String? createdAt
});




}
/// @nodoc
class __$SignupDataCopyWithImpl<$Res>
    implements _$SignupDataCopyWith<$Res> {
  __$SignupDataCopyWithImpl(this._self, this._then);

  final _SignupData _self;
  final $Res Function(_SignupData) _then;

/// Create a copy of SignupData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? level = null,Object? businessProfileCompleted = null,Object? businessDetailsCompleted = null,Object? businessKycCompleted = null,Object? businessId = freezed,Object? createdAt = freezed,}) {
  return _then(_SignupData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,businessProfileCompleted: null == businessProfileCompleted ? _self.businessProfileCompleted : businessProfileCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessDetailsCompleted: null == businessDetailsCompleted ? _self.businessDetailsCompleted : businessDetailsCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessKycCompleted: null == businessKycCompleted ? _self.businessKycCompleted : businessKycCompleted // ignore: cast_nullable_to_non_nullable
as bool,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
