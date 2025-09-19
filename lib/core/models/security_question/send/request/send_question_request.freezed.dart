// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_question_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendQuestionRequest {

 String get phone; String get answer;
/// Create a copy of SendQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendQuestionRequestCopyWith<SendQuestionRequest> get copyWith => _$SendQuestionRequestCopyWithImpl<SendQuestionRequest>(this as SendQuestionRequest, _$identity);

  /// Serializes this SendQuestionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendQuestionRequest&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,answer);

@override
String toString() {
  return 'SendQuestionRequest(phone: $phone, answer: $answer)';
}


}

/// @nodoc
abstract mixin class $SendQuestionRequestCopyWith<$Res>  {
  factory $SendQuestionRequestCopyWith(SendQuestionRequest value, $Res Function(SendQuestionRequest) _then) = _$SendQuestionRequestCopyWithImpl;
@useResult
$Res call({
 String phone, String answer
});




}
/// @nodoc
class _$SendQuestionRequestCopyWithImpl<$Res>
    implements $SendQuestionRequestCopyWith<$Res> {
  _$SendQuestionRequestCopyWithImpl(this._self, this._then);

  final SendQuestionRequest _self;
  final $Res Function(SendQuestionRequest) _then;

/// Create a copy of SendQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? answer = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SendQuestionRequest].
extension SendQuestionRequestPatterns on SendQuestionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendQuestionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendQuestionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendQuestionRequest value)  $default,){
final _that = this;
switch (_that) {
case _SendQuestionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendQuestionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SendQuestionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  String answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendQuestionRequest() when $default != null:
return $default(_that.phone,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  String answer)  $default,) {final _that = this;
switch (_that) {
case _SendQuestionRequest():
return $default(_that.phone,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  String answer)?  $default,) {final _that = this;
switch (_that) {
case _SendQuestionRequest() when $default != null:
return $default(_that.phone,_that.answer);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendQuestionRequest implements SendQuestionRequest {
  const _SendQuestionRequest({required this.phone, required this.answer});
  factory _SendQuestionRequest.fromJson(Map<String, dynamic> json) => _$SendQuestionRequestFromJson(json);

@override final  String phone;
@override final  String answer;

/// Create a copy of SendQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendQuestionRequestCopyWith<_SendQuestionRequest> get copyWith => __$SendQuestionRequestCopyWithImpl<_SendQuestionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendQuestionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendQuestionRequest&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.answer, answer) || other.answer == answer));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,answer);

@override
String toString() {
  return 'SendQuestionRequest(phone: $phone, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$SendQuestionRequestCopyWith<$Res> implements $SendQuestionRequestCopyWith<$Res> {
  factory _$SendQuestionRequestCopyWith(_SendQuestionRequest value, $Res Function(_SendQuestionRequest) _then) = __$SendQuestionRequestCopyWithImpl;
@override @useResult
$Res call({
 String phone, String answer
});




}
/// @nodoc
class __$SendQuestionRequestCopyWithImpl<$Res>
    implements _$SendQuestionRequestCopyWith<$Res> {
  __$SendQuestionRequestCopyWithImpl(this._self, this._then);

  final _SendQuestionRequest _self;
  final $Res Function(_SendQuestionRequest) _then;

/// Create a copy of SendQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? answer = null,}) {
  return _then(_SendQuestionRequest(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
