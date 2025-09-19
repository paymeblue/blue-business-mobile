// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KycStatusResponse {

 String get status; String? get message; KycStatusData? get data;
/// Create a copy of KycStatusResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KycStatusResponseCopyWith<KycStatusResponse> get copyWith => _$KycStatusResponseCopyWithImpl<KycStatusResponse>(this as KycStatusResponse, _$identity);

  /// Serializes this KycStatusResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KycStatusResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'KycStatusResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $KycStatusResponseCopyWith<$Res>  {
  factory $KycStatusResponseCopyWith(KycStatusResponse value, $Res Function(KycStatusResponse) _then) = _$KycStatusResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, KycStatusData? data
});


$KycStatusDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$KycStatusResponseCopyWithImpl<$Res>
    implements $KycStatusResponseCopyWith<$Res> {
  _$KycStatusResponseCopyWithImpl(this._self, this._then);

  final KycStatusResponse _self;
  final $Res Function(KycStatusResponse) _then;

/// Create a copy of KycStatusResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as KycStatusData?,
  ));
}
/// Create a copy of KycStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KycStatusDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $KycStatusDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [KycStatusResponse].
extension KycStatusResponsePatterns on KycStatusResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KycStatusResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KycStatusResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KycStatusResponse value)  $default,){
final _that = this;
switch (_that) {
case _KycStatusResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KycStatusResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KycStatusResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  KycStatusData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KycStatusResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  KycStatusData? data)  $default,) {final _that = this;
switch (_that) {
case _KycStatusResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  KycStatusData? data)?  $default,) {final _that = this;
switch (_that) {
case _KycStatusResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KycStatusResponse implements KycStatusResponse {
  const _KycStatusResponse({this.status = "fail", this.message, this.data});
  factory _KycStatusResponse.fromJson(Map<String, dynamic> json) => _$KycStatusResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  KycStatusData? data;

/// Create a copy of KycStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KycStatusResponseCopyWith<_KycStatusResponse> get copyWith => __$KycStatusResponseCopyWithImpl<_KycStatusResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KycStatusResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KycStatusResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'KycStatusResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$KycStatusResponseCopyWith<$Res> implements $KycStatusResponseCopyWith<$Res> {
  factory _$KycStatusResponseCopyWith(_KycStatusResponse value, $Res Function(_KycStatusResponse) _then) = __$KycStatusResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, KycStatusData? data
});


@override $KycStatusDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$KycStatusResponseCopyWithImpl<$Res>
    implements _$KycStatusResponseCopyWith<$Res> {
  __$KycStatusResponseCopyWithImpl(this._self, this._then);

  final _KycStatusResponse _self;
  final $Res Function(_KycStatusResponse) _then;

/// Create a copy of KycStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_KycStatusResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as KycStatusData?,
  ));
}

/// Create a copy of KycStatusResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KycStatusDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $KycStatusDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
