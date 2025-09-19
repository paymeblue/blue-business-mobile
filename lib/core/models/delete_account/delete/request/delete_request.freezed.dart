// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteRequest {

 String get reasonId;
/// Create a copy of DeleteRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteRequestCopyWith<DeleteRequest> get copyWith => _$DeleteRequestCopyWithImpl<DeleteRequest>(this as DeleteRequest, _$identity);

  /// Serializes this DeleteRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteRequest&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reasonId);

@override
String toString() {
  return 'DeleteRequest(reasonId: $reasonId)';
}


}

/// @nodoc
abstract mixin class $DeleteRequestCopyWith<$Res>  {
  factory $DeleteRequestCopyWith(DeleteRequest value, $Res Function(DeleteRequest) _then) = _$DeleteRequestCopyWithImpl;
@useResult
$Res call({
 String reasonId
});




}
/// @nodoc
class _$DeleteRequestCopyWithImpl<$Res>
    implements $DeleteRequestCopyWith<$Res> {
  _$DeleteRequestCopyWithImpl(this._self, this._then);

  final DeleteRequest _self;
  final $Res Function(DeleteRequest) _then;

/// Create a copy of DeleteRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reasonId = null,}) {
  return _then(_self.copyWith(
reasonId: null == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteRequest].
extension DeleteRequestPatterns on DeleteRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteRequest value)  $default,){
final _that = this;
switch (_that) {
case _DeleteRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reasonId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteRequest() when $default != null:
return $default(_that.reasonId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reasonId)  $default,) {final _that = this;
switch (_that) {
case _DeleteRequest():
return $default(_that.reasonId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reasonId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteRequest() when $default != null:
return $default(_that.reasonId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteRequest implements DeleteRequest {
  const _DeleteRequest({required this.reasonId});
  factory _DeleteRequest.fromJson(Map<String, dynamic> json) => _$DeleteRequestFromJson(json);

@override final  String reasonId;

/// Create a copy of DeleteRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteRequestCopyWith<_DeleteRequest> get copyWith => __$DeleteRequestCopyWithImpl<_DeleteRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteRequest&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reasonId);

@override
String toString() {
  return 'DeleteRequest(reasonId: $reasonId)';
}


}

/// @nodoc
abstract mixin class _$DeleteRequestCopyWith<$Res> implements $DeleteRequestCopyWith<$Res> {
  factory _$DeleteRequestCopyWith(_DeleteRequest value, $Res Function(_DeleteRequest) _then) = __$DeleteRequestCopyWithImpl;
@override @useResult
$Res call({
 String reasonId
});




}
/// @nodoc
class __$DeleteRequestCopyWithImpl<$Res>
    implements _$DeleteRequestCopyWith<$Res> {
  __$DeleteRequestCopyWithImpl(this._self, this._then);

  final _DeleteRequest _self;
  final $Res Function(_DeleteRequest) _then;

/// Create a copy of DeleteRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reasonId = null,}) {
  return _then(_DeleteRequest(
reasonId: null == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
