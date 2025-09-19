// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateQuestionRequest {

 String get question; String get answer; String get password;
/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateQuestionRequestCopyWith<CreateQuestionRequest> get copyWith => _$CreateQuestionRequestCopyWithImpl<CreateQuestionRequest>(this as CreateQuestionRequest, _$identity);

  /// Serializes this CreateQuestionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateQuestionRequest&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer,password);

@override
String toString() {
  return 'CreateQuestionRequest(question: $question, answer: $answer, password: $password)';
}


}

/// @nodoc
abstract mixin class $CreateQuestionRequestCopyWith<$Res>  {
  factory $CreateQuestionRequestCopyWith(CreateQuestionRequest value, $Res Function(CreateQuestionRequest) _then) = _$CreateQuestionRequestCopyWithImpl;
@useResult
$Res call({
 String question, String answer, String password
});




}
/// @nodoc
class _$CreateQuestionRequestCopyWithImpl<$Res>
    implements $CreateQuestionRequestCopyWith<$Res> {
  _$CreateQuestionRequestCopyWithImpl(this._self, this._then);

  final CreateQuestionRequest _self;
  final $Res Function(CreateQuestionRequest) _then;

/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? question = null,Object? answer = null,Object? password = null,}) {
  return _then(_self.copyWith(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateQuestionRequest].
extension CreateQuestionRequestPatterns on CreateQuestionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateQuestionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateQuestionRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateQuestionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateQuestionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String question,  String answer,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
return $default(_that.question,_that.answer,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String question,  String answer,  String password)  $default,) {final _that = this;
switch (_that) {
case _CreateQuestionRequest():
return $default(_that.question,_that.answer,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String question,  String answer,  String password)?  $default,) {final _that = this;
switch (_that) {
case _CreateQuestionRequest() when $default != null:
return $default(_that.question,_that.answer,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateQuestionRequest implements CreateQuestionRequest {
  const _CreateQuestionRequest({required this.question, required this.answer, required this.password});
  factory _CreateQuestionRequest.fromJson(Map<String, dynamic> json) => _$CreateQuestionRequestFromJson(json);

@override final  String question;
@override final  String answer;
@override final  String password;

/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateQuestionRequestCopyWith<_CreateQuestionRequest> get copyWith => __$CreateQuestionRequestCopyWithImpl<_CreateQuestionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateQuestionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateQuestionRequest&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,question,answer,password);

@override
String toString() {
  return 'CreateQuestionRequest(question: $question, answer: $answer, password: $password)';
}


}

/// @nodoc
abstract mixin class _$CreateQuestionRequestCopyWith<$Res> implements $CreateQuestionRequestCopyWith<$Res> {
  factory _$CreateQuestionRequestCopyWith(_CreateQuestionRequest value, $Res Function(_CreateQuestionRequest) _then) = __$CreateQuestionRequestCopyWithImpl;
@override @useResult
$Res call({
 String question, String answer, String password
});




}
/// @nodoc
class __$CreateQuestionRequestCopyWithImpl<$Res>
    implements _$CreateQuestionRequestCopyWith<$Res> {
  __$CreateQuestionRequestCopyWithImpl(this._self, this._then);

  final _CreateQuestionRequest _self;
  final $Res Function(_CreateQuestionRequest) _then;

/// Create a copy of CreateQuestionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? question = null,Object? answer = null,Object? password = null,}) {
  return _then(_CreateQuestionRequest(
question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
