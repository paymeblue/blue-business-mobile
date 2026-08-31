// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_beneficiary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBeneficiaryData {

 int get total; int get limit; int get page; bool get loadMore;
/// Create a copy of GetBeneficiaryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBeneficiaryDataCopyWith<GetBeneficiaryData> get copyWith => _$GetBeneficiaryDataCopyWithImpl<GetBeneficiaryData>(this as GetBeneficiaryData, _$identity);

  /// Serializes this GetBeneficiaryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBeneficiaryData&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.page, page) || other.page == page)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,page,loadMore);

@override
String toString() {
  return 'GetBeneficiaryData(total: $total, limit: $limit, page: $page, loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class $GetBeneficiaryDataCopyWith<$Res>  {
  factory $GetBeneficiaryDataCopyWith(GetBeneficiaryData value, $Res Function(GetBeneficiaryData) _then) = _$GetBeneficiaryDataCopyWithImpl;
@useResult
$Res call({
 int total, int limit, int page, bool loadMore
});




}
/// @nodoc
class _$GetBeneficiaryDataCopyWithImpl<$Res>
    implements $GetBeneficiaryDataCopyWith<$Res> {
  _$GetBeneficiaryDataCopyWithImpl(this._self, this._then);

  final GetBeneficiaryData _self;
  final $Res Function(GetBeneficiaryData) _then;

/// Create a copy of GetBeneficiaryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? limit = null,Object? page = null,Object? loadMore = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBeneficiaryData].
extension GetBeneficiaryDataPatterns on GetBeneficiaryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBeneficiaryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBeneficiaryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBeneficiaryData value)  $default,){
final _that = this;
switch (_that) {
case _GetBeneficiaryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBeneficiaryData value)?  $default,){
final _that = this;
switch (_that) {
case _GetBeneficiaryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int limit,  int page,  bool loadMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBeneficiaryData() when $default != null:
return $default(_that.total,_that.limit,_that.page,_that.loadMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int limit,  int page,  bool loadMore)  $default,) {final _that = this;
switch (_that) {
case _GetBeneficiaryData():
return $default(_that.total,_that.limit,_that.page,_that.loadMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int limit,  int page,  bool loadMore)?  $default,) {final _that = this;
switch (_that) {
case _GetBeneficiaryData() when $default != null:
return $default(_that.total,_that.limit,_that.page,_that.loadMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBeneficiaryData implements GetBeneficiaryData {
  const _GetBeneficiaryData({required this.total, required this.limit, required this.page, this.loadMore = false});
  factory _GetBeneficiaryData.fromJson(Map<String, dynamic> json) => _$GetBeneficiaryDataFromJson(json);

@override final  int total;
@override final  int limit;
@override final  int page;
@override@JsonKey() final  bool loadMore;

/// Create a copy of GetBeneficiaryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBeneficiaryDataCopyWith<_GetBeneficiaryData> get copyWith => __$GetBeneficiaryDataCopyWithImpl<_GetBeneficiaryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBeneficiaryDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBeneficiaryData&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.page, page) || other.page == page)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,page,loadMore);

@override
String toString() {
  return 'GetBeneficiaryData(total: $total, limit: $limit, page: $page, loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class _$GetBeneficiaryDataCopyWith<$Res> implements $GetBeneficiaryDataCopyWith<$Res> {
  factory _$GetBeneficiaryDataCopyWith(_GetBeneficiaryData value, $Res Function(_GetBeneficiaryData) _then) = __$GetBeneficiaryDataCopyWithImpl;
@override @useResult
$Res call({
 int total, int limit, int page, bool loadMore
});




}
/// @nodoc
class __$GetBeneficiaryDataCopyWithImpl<$Res>
    implements _$GetBeneficiaryDataCopyWith<$Res> {
  __$GetBeneficiaryDataCopyWithImpl(this._self, this._then);

  final _GetBeneficiaryData _self;
  final $Res Function(_GetBeneficiaryData) _then;

/// Create a copy of GetBeneficiaryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? limit = null,Object? page = null,Object? loadMore = null,}) {
  return _then(_GetBeneficiaryData(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
