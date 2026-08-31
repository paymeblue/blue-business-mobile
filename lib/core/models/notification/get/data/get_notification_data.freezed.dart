// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetNotificationData {

 bool get notificationStatus;
/// Create a copy of GetNotificationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetNotificationDataCopyWith<GetNotificationData> get copyWith => _$GetNotificationDataCopyWithImpl<GetNotificationData>(this as GetNotificationData, _$identity);

  /// Serializes this GetNotificationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNotificationData&&(identical(other.notificationStatus, notificationStatus) || other.notificationStatus == notificationStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationStatus);

@override
String toString() {
  return 'GetNotificationData(notificationStatus: $notificationStatus)';
}


}

/// @nodoc
abstract mixin class $GetNotificationDataCopyWith<$Res>  {
  factory $GetNotificationDataCopyWith(GetNotificationData value, $Res Function(GetNotificationData) _then) = _$GetNotificationDataCopyWithImpl;
@useResult
$Res call({
 bool notificationStatus
});




}
/// @nodoc
class _$GetNotificationDataCopyWithImpl<$Res>
    implements $GetNotificationDataCopyWith<$Res> {
  _$GetNotificationDataCopyWithImpl(this._self, this._then);

  final GetNotificationData _self;
  final $Res Function(GetNotificationData) _then;

/// Create a copy of GetNotificationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notificationStatus = null,}) {
  return _then(_self.copyWith(
notificationStatus: null == notificationStatus ? _self.notificationStatus : notificationStatus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetNotificationData].
extension GetNotificationDataPatterns on GetNotificationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetNotificationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetNotificationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetNotificationData value)  $default,){
final _that = this;
switch (_that) {
case _GetNotificationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetNotificationData value)?  $default,){
final _that = this;
switch (_that) {
case _GetNotificationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool notificationStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetNotificationData() when $default != null:
return $default(_that.notificationStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool notificationStatus)  $default,) {final _that = this;
switch (_that) {
case _GetNotificationData():
return $default(_that.notificationStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool notificationStatus)?  $default,) {final _that = this;
switch (_that) {
case _GetNotificationData() when $default != null:
return $default(_that.notificationStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetNotificationData implements GetNotificationData {
  const _GetNotificationData({this.notificationStatus = false});
  factory _GetNotificationData.fromJson(Map<String, dynamic> json) => _$GetNotificationDataFromJson(json);

@override@JsonKey() final  bool notificationStatus;

/// Create a copy of GetNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetNotificationDataCopyWith<_GetNotificationData> get copyWith => __$GetNotificationDataCopyWithImpl<_GetNotificationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetNotificationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetNotificationData&&(identical(other.notificationStatus, notificationStatus) || other.notificationStatus == notificationStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notificationStatus);

@override
String toString() {
  return 'GetNotificationData(notificationStatus: $notificationStatus)';
}


}

/// @nodoc
abstract mixin class _$GetNotificationDataCopyWith<$Res> implements $GetNotificationDataCopyWith<$Res> {
  factory _$GetNotificationDataCopyWith(_GetNotificationData value, $Res Function(_GetNotificationData) _then) = __$GetNotificationDataCopyWithImpl;
@override @useResult
$Res call({
 bool notificationStatus
});




}
/// @nodoc
class __$GetNotificationDataCopyWithImpl<$Res>
    implements _$GetNotificationDataCopyWith<$Res> {
  __$GetNotificationDataCopyWithImpl(this._self, this._then);

  final _GetNotificationData _self;
  final $Res Function(_GetNotificationData) _then;

/// Create a copy of GetNotificationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notificationStatus = null,}) {
  return _then(_GetNotificationData(
notificationStatus: null == notificationStatus ? _self.notificationStatus : notificationStatus // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
