// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_staff_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateStaffRequest {

 String? get name; String? get phone; String? get password; String? get role; int? get branchId;
/// Create a copy of UpdateStaffRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateStaffRequestCopyWith<UpdateStaffRequest> get copyWith => _$UpdateStaffRequestCopyWithImpl<UpdateStaffRequest>(this as UpdateStaffRequest, _$identity);

  /// Serializes this UpdateStaffRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStaffRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,password,role,branchId);

@override
String toString() {
  return 'UpdateStaffRequest(name: $name, phone: $phone, password: $password, role: $role, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class $UpdateStaffRequestCopyWith<$Res>  {
  factory $UpdateStaffRequestCopyWith(UpdateStaffRequest value, $Res Function(UpdateStaffRequest) _then) = _$UpdateStaffRequestCopyWithImpl;
@useResult
$Res call({
 String? name, String? phone, String? password, String? role, int? branchId
});




}
/// @nodoc
class _$UpdateStaffRequestCopyWithImpl<$Res>
    implements $UpdateStaffRequestCopyWith<$Res> {
  _$UpdateStaffRequestCopyWithImpl(this._self, this._then);

  final UpdateStaffRequest _self;
  final $Res Function(UpdateStaffRequest) _then;

/// Create a copy of UpdateStaffRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? phone = freezed,Object? password = freezed,Object? role = freezed,Object? branchId = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateStaffRequest].
extension UpdateStaffRequestPatterns on UpdateStaffRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateStaffRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateStaffRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateStaffRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateStaffRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateStaffRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateStaffRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? phone,  String? password,  String? role,  int? branchId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateStaffRequest() when $default != null:
return $default(_that.name,_that.phone,_that.password,_that.role,_that.branchId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? phone,  String? password,  String? role,  int? branchId)  $default,) {final _that = this;
switch (_that) {
case _UpdateStaffRequest():
return $default(_that.name,_that.phone,_that.password,_that.role,_that.branchId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? phone,  String? password,  String? role,  int? branchId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateStaffRequest() when $default != null:
return $default(_that.name,_that.phone,_that.password,_that.role,_that.branchId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateStaffRequest implements UpdateStaffRequest {
  const _UpdateStaffRequest({this.name, this.phone, this.password, this.role, this.branchId});
  factory _UpdateStaffRequest.fromJson(Map<String, dynamic> json) => _$UpdateStaffRequestFromJson(json);

@override final  String? name;
@override final  String? phone;
@override final  String? password;
@override final  String? role;
@override final  int? branchId;

/// Create a copy of UpdateStaffRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateStaffRequestCopyWith<_UpdateStaffRequest> get copyWith => __$UpdateStaffRequestCopyWithImpl<_UpdateStaffRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateStaffRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStaffRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role)&&(identical(other.branchId, branchId) || other.branchId == branchId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,phone,password,role,branchId);

@override
String toString() {
  return 'UpdateStaffRequest(name: $name, phone: $phone, password: $password, role: $role, branchId: $branchId)';
}


}

/// @nodoc
abstract mixin class _$UpdateStaffRequestCopyWith<$Res> implements $UpdateStaffRequestCopyWith<$Res> {
  factory _$UpdateStaffRequestCopyWith(_UpdateStaffRequest value, $Res Function(_UpdateStaffRequest) _then) = __$UpdateStaffRequestCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? phone, String? password, String? role, int? branchId
});




}
/// @nodoc
class __$UpdateStaffRequestCopyWithImpl<$Res>
    implements _$UpdateStaffRequestCopyWith<$Res> {
  __$UpdateStaffRequestCopyWithImpl(this._self, this._then);

  final _UpdateStaffRequest _self;
  final $Res Function(_UpdateStaffRequest) _then;

/// Create a copy of UpdateStaffRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? phone = freezed,Object? password = freezed,Object? role = freezed,Object? branchId = freezed,}) {
  return _then(_UpdateStaffRequest(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
