// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_receiver_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatResponseData {

 String get firstName; String get lastName; String? get displayPic; String get walletCode; String get fcmToken;
/// Create a copy of ChatResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatResponseDataCopyWith<ChatResponseData> get copyWith => _$ChatResponseDataCopyWithImpl<ChatResponseData>(this as ChatResponseData, _$identity);

  /// Serializes this ChatResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatResponseData&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.displayPic, displayPic) || other.displayPic == displayPic)&&(identical(other.walletCode, walletCode) || other.walletCode == walletCode)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,displayPic,walletCode,fcmToken);

@override
String toString() {
  return 'ChatResponseData(firstName: $firstName, lastName: $lastName, displayPic: $displayPic, walletCode: $walletCode, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class $ChatResponseDataCopyWith<$Res>  {
  factory $ChatResponseDataCopyWith(ChatResponseData value, $Res Function(ChatResponseData) _then) = _$ChatResponseDataCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String? displayPic, String walletCode, String fcmToken
});




}
/// @nodoc
class _$ChatResponseDataCopyWithImpl<$Res>
    implements $ChatResponseDataCopyWith<$Res> {
  _$ChatResponseDataCopyWithImpl(this._self, this._then);

  final ChatResponseData _self;
  final $Res Function(ChatResponseData) _then;

/// Create a copy of ChatResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? displayPic = freezed,Object? walletCode = null,Object? fcmToken = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,displayPic: freezed == displayPic ? _self.displayPic : displayPic // ignore: cast_nullable_to_non_nullable
as String?,walletCode: null == walletCode ? _self.walletCode : walletCode // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatResponseData].
extension ChatResponseDataPatterns on ChatResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatResponseData value)  $default,){
final _that = this;
switch (_that) {
case _ChatResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _ChatResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String? displayPic,  String walletCode,  String fcmToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatResponseData() when $default != null:
return $default(_that.firstName,_that.lastName,_that.displayPic,_that.walletCode,_that.fcmToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String? displayPic,  String walletCode,  String fcmToken)  $default,) {final _that = this;
switch (_that) {
case _ChatResponseData():
return $default(_that.firstName,_that.lastName,_that.displayPic,_that.walletCode,_that.fcmToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String? displayPic,  String walletCode,  String fcmToken)?  $default,) {final _that = this;
switch (_that) {
case _ChatResponseData() when $default != null:
return $default(_that.firstName,_that.lastName,_that.displayPic,_that.walletCode,_that.fcmToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatResponseData implements ChatResponseData {
  const _ChatResponseData({required this.firstName, required this.lastName, this.displayPic, required this.walletCode, required this.fcmToken});
  factory _ChatResponseData.fromJson(Map<String, dynamic> json) => _$ChatResponseDataFromJson(json);

@override final  String firstName;
@override final  String lastName;
@override final  String? displayPic;
@override final  String walletCode;
@override final  String fcmToken;

/// Create a copy of ChatResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatResponseDataCopyWith<_ChatResponseData> get copyWith => __$ChatResponseDataCopyWithImpl<_ChatResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatResponseData&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.displayPic, displayPic) || other.displayPic == displayPic)&&(identical(other.walletCode, walletCode) || other.walletCode == walletCode)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,displayPic,walletCode,fcmToken);

@override
String toString() {
  return 'ChatResponseData(firstName: $firstName, lastName: $lastName, displayPic: $displayPic, walletCode: $walletCode, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class _$ChatResponseDataCopyWith<$Res> implements $ChatResponseDataCopyWith<$Res> {
  factory _$ChatResponseDataCopyWith(_ChatResponseData value, $Res Function(_ChatResponseData) _then) = __$ChatResponseDataCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String? displayPic, String walletCode, String fcmToken
});




}
/// @nodoc
class __$ChatResponseDataCopyWithImpl<$Res>
    implements _$ChatResponseDataCopyWith<$Res> {
  __$ChatResponseDataCopyWithImpl(this._self, this._then);

  final _ChatResponseData _self;
  final $Res Function(_ChatResponseData) _then;

/// Create a copy of ChatResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? displayPic = freezed,Object? walletCode = null,Object? fcmToken = null,}) {
  return _then(_ChatResponseData(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,displayPic: freezed == displayPic ? _self.displayPic : displayPic // ignore: cast_nullable_to_non_nullable
as String?,walletCode: null == walletCode ? _self.walletCode : walletCode // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
