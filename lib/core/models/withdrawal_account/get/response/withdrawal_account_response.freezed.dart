// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_account_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalAccountResponse {

 String get status; String? get message; WithdrawalAccount? get data;
/// Create a copy of WithdrawalAccountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalAccountResponseCopyWith<WithdrawalAccountResponse> get copyWith => _$WithdrawalAccountResponseCopyWithImpl<WithdrawalAccountResponse>(this as WithdrawalAccountResponse, _$identity);

  /// Serializes this WithdrawalAccountResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalAccountResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'WithdrawalAccountResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $WithdrawalAccountResponseCopyWith<$Res>  {
  factory $WithdrawalAccountResponseCopyWith(WithdrawalAccountResponse value, $Res Function(WithdrawalAccountResponse) _then) = _$WithdrawalAccountResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message, WithdrawalAccount? data
});


$WithdrawalAccountCopyWith<$Res>? get data;

}
/// @nodoc
class _$WithdrawalAccountResponseCopyWithImpl<$Res>
    implements $WithdrawalAccountResponseCopyWith<$Res> {
  _$WithdrawalAccountResponseCopyWithImpl(this._self, this._then);

  final WithdrawalAccountResponse _self;
  final $Res Function(WithdrawalAccountResponse) _then;

/// Create a copy of WithdrawalAccountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WithdrawalAccount?,
  ));
}
/// Create a copy of WithdrawalAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WithdrawalAccountCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $WithdrawalAccountCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [WithdrawalAccountResponse].
extension WithdrawalAccountResponsePatterns on WithdrawalAccountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalAccountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalAccountResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalAccountResponse value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalAccountResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalAccountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalAccountResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message,  WithdrawalAccount? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalAccountResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message,  WithdrawalAccount? data)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalAccountResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message,  WithdrawalAccount? data)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalAccountResponse() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WithdrawalAccountResponse implements WithdrawalAccountResponse {
  const _WithdrawalAccountResponse({this.status = "fail", this.message, this.data});
  factory _WithdrawalAccountResponse.fromJson(Map<String, dynamic> json) => _$WithdrawalAccountResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;
@override final  WithdrawalAccount? data;

/// Create a copy of WithdrawalAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalAccountResponseCopyWith<_WithdrawalAccountResponse> get copyWith => __$WithdrawalAccountResponseCopyWithImpl<_WithdrawalAccountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WithdrawalAccountResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalAccountResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'WithdrawalAccountResponse(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalAccountResponseCopyWith<$Res> implements $WithdrawalAccountResponseCopyWith<$Res> {
  factory _$WithdrawalAccountResponseCopyWith(_WithdrawalAccountResponse value, $Res Function(_WithdrawalAccountResponse) _then) = __$WithdrawalAccountResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message, WithdrawalAccount? data
});


@override $WithdrawalAccountCopyWith<$Res>? get data;

}
/// @nodoc
class __$WithdrawalAccountResponseCopyWithImpl<$Res>
    implements _$WithdrawalAccountResponseCopyWith<$Res> {
  __$WithdrawalAccountResponseCopyWithImpl(this._self, this._then);

  final _WithdrawalAccountResponse _self;
  final $Res Function(_WithdrawalAccountResponse) _then;

/// Create a copy of WithdrawalAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,Object? data = freezed,}) {
  return _then(_WithdrawalAccountResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as WithdrawalAccount?,
  ));
}

/// Create a copy of WithdrawalAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WithdrawalAccountCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $WithdrawalAccountCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
