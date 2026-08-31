// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_withdrawal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AutoWithdrawalRequest {

 bool get autoWithdrawalEnabled;
/// Create a copy of AutoWithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutoWithdrawalRequestCopyWith<AutoWithdrawalRequest> get copyWith => _$AutoWithdrawalRequestCopyWithImpl<AutoWithdrawalRequest>(this as AutoWithdrawalRequest, _$identity);

  /// Serializes this AutoWithdrawalRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutoWithdrawalRequest&&(identical(other.autoWithdrawalEnabled, autoWithdrawalEnabled) || other.autoWithdrawalEnabled == autoWithdrawalEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoWithdrawalEnabled);

@override
String toString() {
  return 'AutoWithdrawalRequest(autoWithdrawalEnabled: $autoWithdrawalEnabled)';
}


}

/// @nodoc
abstract mixin class $AutoWithdrawalRequestCopyWith<$Res>  {
  factory $AutoWithdrawalRequestCopyWith(AutoWithdrawalRequest value, $Res Function(AutoWithdrawalRequest) _then) = _$AutoWithdrawalRequestCopyWithImpl;
@useResult
$Res call({
 bool autoWithdrawalEnabled
});




}
/// @nodoc
class _$AutoWithdrawalRequestCopyWithImpl<$Res>
    implements $AutoWithdrawalRequestCopyWith<$Res> {
  _$AutoWithdrawalRequestCopyWithImpl(this._self, this._then);

  final AutoWithdrawalRequest _self;
  final $Res Function(AutoWithdrawalRequest) _then;

/// Create a copy of AutoWithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? autoWithdrawalEnabled = null,}) {
  return _then(_self.copyWith(
autoWithdrawalEnabled: null == autoWithdrawalEnabled ? _self.autoWithdrawalEnabled : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AutoWithdrawalRequest].
extension AutoWithdrawalRequestPatterns on AutoWithdrawalRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutoWithdrawalRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutoWithdrawalRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutoWithdrawalRequest value)  $default,){
final _that = this;
switch (_that) {
case _AutoWithdrawalRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutoWithdrawalRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AutoWithdrawalRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool autoWithdrawalEnabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutoWithdrawalRequest() when $default != null:
return $default(_that.autoWithdrawalEnabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool autoWithdrawalEnabled)  $default,) {final _that = this;
switch (_that) {
case _AutoWithdrawalRequest():
return $default(_that.autoWithdrawalEnabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool autoWithdrawalEnabled)?  $default,) {final _that = this;
switch (_that) {
case _AutoWithdrawalRequest() when $default != null:
return $default(_that.autoWithdrawalEnabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AutoWithdrawalRequest implements AutoWithdrawalRequest {
  const _AutoWithdrawalRequest({required this.autoWithdrawalEnabled});
  factory _AutoWithdrawalRequest.fromJson(Map<String, dynamic> json) => _$AutoWithdrawalRequestFromJson(json);

@override final  bool autoWithdrawalEnabled;

/// Create a copy of AutoWithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutoWithdrawalRequestCopyWith<_AutoWithdrawalRequest> get copyWith => __$AutoWithdrawalRequestCopyWithImpl<_AutoWithdrawalRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutoWithdrawalRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutoWithdrawalRequest&&(identical(other.autoWithdrawalEnabled, autoWithdrawalEnabled) || other.autoWithdrawalEnabled == autoWithdrawalEnabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoWithdrawalEnabled);

@override
String toString() {
  return 'AutoWithdrawalRequest(autoWithdrawalEnabled: $autoWithdrawalEnabled)';
}


}

/// @nodoc
abstract mixin class _$AutoWithdrawalRequestCopyWith<$Res> implements $AutoWithdrawalRequestCopyWith<$Res> {
  factory _$AutoWithdrawalRequestCopyWith(_AutoWithdrawalRequest value, $Res Function(_AutoWithdrawalRequest) _then) = __$AutoWithdrawalRequestCopyWithImpl;
@override @useResult
$Res call({
 bool autoWithdrawalEnabled
});




}
/// @nodoc
class __$AutoWithdrawalRequestCopyWithImpl<$Res>
    implements _$AutoWithdrawalRequestCopyWith<$Res> {
  __$AutoWithdrawalRequestCopyWithImpl(this._self, this._then);

  final _AutoWithdrawalRequest _self;
  final $Res Function(_AutoWithdrawalRequest) _then;

/// Create a copy of AutoWithdrawalRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? autoWithdrawalEnabled = null,}) {
  return _then(_AutoWithdrawalRequest(
autoWithdrawalEnabled: null == autoWithdrawalEnabled ? _self.autoWithdrawalEnabled : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AutoWithdrawalResponse {

 String get status; String? get message;
/// Create a copy of AutoWithdrawalResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AutoWithdrawalResponseCopyWith<AutoWithdrawalResponse> get copyWith => _$AutoWithdrawalResponseCopyWithImpl<AutoWithdrawalResponse>(this as AutoWithdrawalResponse, _$identity);

  /// Serializes this AutoWithdrawalResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AutoWithdrawalResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'AutoWithdrawalResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $AutoWithdrawalResponseCopyWith<$Res>  {
  factory $AutoWithdrawalResponseCopyWith(AutoWithdrawalResponse value, $Res Function(AutoWithdrawalResponse) _then) = _$AutoWithdrawalResponseCopyWithImpl;
@useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class _$AutoWithdrawalResponseCopyWithImpl<$Res>
    implements $AutoWithdrawalResponseCopyWith<$Res> {
  _$AutoWithdrawalResponseCopyWithImpl(this._self, this._then);

  final AutoWithdrawalResponse _self;
  final $Res Function(AutoWithdrawalResponse) _then;

/// Create a copy of AutoWithdrawalResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AutoWithdrawalResponse].
extension AutoWithdrawalResponsePatterns on AutoWithdrawalResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AutoWithdrawalResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AutoWithdrawalResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AutoWithdrawalResponse value)  $default,){
final _that = this;
switch (_that) {
case _AutoWithdrawalResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AutoWithdrawalResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AutoWithdrawalResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AutoWithdrawalResponse() when $default != null:
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String? message)  $default,) {final _that = this;
switch (_that) {
case _AutoWithdrawalResponse():
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _AutoWithdrawalResponse() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AutoWithdrawalResponse implements AutoWithdrawalResponse {
  const _AutoWithdrawalResponse({this.status = 'fail', this.message});
  factory _AutoWithdrawalResponse.fromJson(Map<String, dynamic> json) => _$AutoWithdrawalResponseFromJson(json);

@override@JsonKey() final  String status;
@override final  String? message;

/// Create a copy of AutoWithdrawalResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AutoWithdrawalResponseCopyWith<_AutoWithdrawalResponse> get copyWith => __$AutoWithdrawalResponseCopyWithImpl<_AutoWithdrawalResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AutoWithdrawalResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AutoWithdrawalResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'AutoWithdrawalResponse(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$AutoWithdrawalResponseCopyWith<$Res> implements $AutoWithdrawalResponseCopyWith<$Res> {
  factory _$AutoWithdrawalResponseCopyWith(_AutoWithdrawalResponse value, $Res Function(_AutoWithdrawalResponse) _then) = __$AutoWithdrawalResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String? message
});




}
/// @nodoc
class __$AutoWithdrawalResponseCopyWithImpl<$Res>
    implements _$AutoWithdrawalResponseCopyWith<$Res> {
  __$AutoWithdrawalResponseCopyWithImpl(this._self, this._then);

  final _AutoWithdrawalResponse _self;
  final $Res Function(_AutoWithdrawalResponse) _then;

/// Create a copy of AutoWithdrawalResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = freezed,}) {
  return _then(_AutoWithdrawalResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
