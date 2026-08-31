// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankData {

 List<BankItem> get banks;
/// Create a copy of BankData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankDataCopyWith<BankData> get copyWith => _$BankDataCopyWithImpl<BankData>(this as BankData, _$identity);

  /// Serializes this BankData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankData&&const DeepCollectionEquality().equals(other.banks, banks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(banks));

@override
String toString() {
  return 'BankData(banks: $banks)';
}


}

/// @nodoc
abstract mixin class $BankDataCopyWith<$Res>  {
  factory $BankDataCopyWith(BankData value, $Res Function(BankData) _then) = _$BankDataCopyWithImpl;
@useResult
$Res call({
 List<BankItem> banks
});




}
/// @nodoc
class _$BankDataCopyWithImpl<$Res>
    implements $BankDataCopyWith<$Res> {
  _$BankDataCopyWithImpl(this._self, this._then);

  final BankData _self;
  final $Res Function(BankData) _then;

/// Create a copy of BankData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? banks = null,}) {
  return _then(_self.copyWith(
banks: null == banks ? _self.banks : banks // ignore: cast_nullable_to_non_nullable
as List<BankItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [BankData].
extension BankDataPatterns on BankData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankData value)  $default,){
final _that = this;
switch (_that) {
case _BankData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankData value)?  $default,){
final _that = this;
switch (_that) {
case _BankData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BankItem> banks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankData() when $default != null:
return $default(_that.banks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BankItem> banks)  $default,) {final _that = this;
switch (_that) {
case _BankData():
return $default(_that.banks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BankItem> banks)?  $default,) {final _that = this;
switch (_that) {
case _BankData() when $default != null:
return $default(_that.banks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankData implements BankData {
  const _BankData({required final  List<BankItem> banks}): _banks = banks;
  factory _BankData.fromJson(Map<String, dynamic> json) => _$BankDataFromJson(json);

 final  List<BankItem> _banks;
@override List<BankItem> get banks {
  if (_banks is EqualUnmodifiableListView) return _banks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_banks);
}


/// Create a copy of BankData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankDataCopyWith<_BankData> get copyWith => __$BankDataCopyWithImpl<_BankData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankData&&const DeepCollectionEquality().equals(other._banks, _banks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_banks));

@override
String toString() {
  return 'BankData(banks: $banks)';
}


}

/// @nodoc
abstract mixin class _$BankDataCopyWith<$Res> implements $BankDataCopyWith<$Res> {
  factory _$BankDataCopyWith(_BankData value, $Res Function(_BankData) _then) = __$BankDataCopyWithImpl;
@override @useResult
$Res call({
 List<BankItem> banks
});




}
/// @nodoc
class __$BankDataCopyWithImpl<$Res>
    implements _$BankDataCopyWith<$Res> {
  __$BankDataCopyWithImpl(this._self, this._then);

  final _BankData _self;
  final $Res Function(_BankData) _then;

/// Create a copy of BankData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? banks = null,}) {
  return _then(_BankData(
banks: null == banks ? _self._banks : banks // ignore: cast_nullable_to_non_nullable
as List<BankItem>,
  ));
}


}

// dart format on
