// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetQuestionData {

 int get id; int get userId; String get question; String? get createdAt;
/// Create a copy of GetQuestionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetQuestionDataCopyWith<GetQuestionData> get copyWith => _$GetQuestionDataCopyWithImpl<GetQuestionData>(this as GetQuestionData, _$identity);

  /// Serializes this GetQuestionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetQuestionData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.question, question) || other.question == question)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,question,createdAt);

@override
String toString() {
  return 'GetQuestionData(id: $id, userId: $userId, question: $question, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $GetQuestionDataCopyWith<$Res>  {
  factory $GetQuestionDataCopyWith(GetQuestionData value, $Res Function(GetQuestionData) _then) = _$GetQuestionDataCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String question, String? createdAt
});




}
/// @nodoc
class _$GetQuestionDataCopyWithImpl<$Res>
    implements $GetQuestionDataCopyWith<$Res> {
  _$GetQuestionDataCopyWithImpl(this._self, this._then);

  final GetQuestionData _self;
  final $Res Function(GetQuestionData) _then;

/// Create a copy of GetQuestionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? question = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetQuestionData].
extension GetQuestionDataPatterns on GetQuestionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetQuestionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetQuestionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetQuestionData value)  $default,){
final _that = this;
switch (_that) {
case _GetQuestionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetQuestionData value)?  $default,){
final _that = this;
switch (_that) {
case _GetQuestionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String question,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetQuestionData() when $default != null:
return $default(_that.id,_that.userId,_that.question,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String question,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _GetQuestionData():
return $default(_that.id,_that.userId,_that.question,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String question,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _GetQuestionData() when $default != null:
return $default(_that.id,_that.userId,_that.question,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetQuestionData implements GetQuestionData {
  const _GetQuestionData({required this.id, required this.userId, required this.question, this.createdAt});
  factory _GetQuestionData.fromJson(Map<String, dynamic> json) => _$GetQuestionDataFromJson(json);

@override final  int id;
@override final  int userId;
@override final  String question;
@override final  String? createdAt;

/// Create a copy of GetQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetQuestionDataCopyWith<_GetQuestionData> get copyWith => __$GetQuestionDataCopyWithImpl<_GetQuestionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetQuestionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetQuestionData&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.question, question) || other.question == question)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,question,createdAt);

@override
String toString() {
  return 'GetQuestionData(id: $id, userId: $userId, question: $question, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$GetQuestionDataCopyWith<$Res> implements $GetQuestionDataCopyWith<$Res> {
  factory _$GetQuestionDataCopyWith(_GetQuestionData value, $Res Function(_GetQuestionData) _then) = __$GetQuestionDataCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String question, String? createdAt
});




}
/// @nodoc
class __$GetQuestionDataCopyWithImpl<$Res>
    implements _$GetQuestionDataCopyWith<$Res> {
  __$GetQuestionDataCopyWithImpl(this._self, this._then);

  final _GetQuestionData _self;
  final $Res Function(_GetQuestionData) _then;

/// Create a copy of GetQuestionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? question = null,Object? createdAt = freezed,}) {
  return _then(_GetQuestionData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
