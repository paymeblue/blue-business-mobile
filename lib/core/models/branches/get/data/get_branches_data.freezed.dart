// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_branches_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBranchesData {

 int get total; int get page; int get limit; List<Branch> get data; bool get loadMore; int? get perPage;
/// Create a copy of GetBranchesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBranchesDataCopyWith<GetBranchesData> get copyWith => _$GetBranchesDataCopyWithImpl<GetBranchesData>(this as GetBranchesData, _$identity);

  /// Serializes this GetBranchesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBranchesData&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(data),loadMore,perPage);

@override
String toString() {
  return 'GetBranchesData(total: $total, page: $page, limit: $limit, data: $data, loadMore: $loadMore, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $GetBranchesDataCopyWith<$Res>  {
  factory $GetBranchesDataCopyWith(GetBranchesData value, $Res Function(GetBranchesData) _then) = _$GetBranchesDataCopyWithImpl;
@useResult
$Res call({
 int total, int page, int limit, List<Branch> data, bool loadMore, int? perPage
});




}
/// @nodoc
class _$GetBranchesDataCopyWithImpl<$Res>
    implements $GetBranchesDataCopyWith<$Res> {
  _$GetBranchesDataCopyWithImpl(this._self, this._then);

  final GetBranchesData _self;
  final $Res Function(GetBranchesData) _then;

/// Create a copy of GetBranchesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,Object? loadMore = null,Object? perPage = freezed,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Branch>,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBranchesData].
extension GetBranchesDataPatterns on GetBranchesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBranchesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBranchesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBranchesData value)  $default,){
final _that = this;
switch (_that) {
case _GetBranchesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBranchesData value)?  $default,){
final _that = this;
switch (_that) {
case _GetBranchesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<Branch> data,  bool loadMore,  int? perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBranchesData() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data,_that.loadMore,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int limit,  List<Branch> data,  bool loadMore,  int? perPage)  $default,) {final _that = this;
switch (_that) {
case _GetBranchesData():
return $default(_that.total,_that.page,_that.limit,_that.data,_that.loadMore,_that.perPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int limit,  List<Branch> data,  bool loadMore,  int? perPage)?  $default,) {final _that = this;
switch (_that) {
case _GetBranchesData() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.data,_that.loadMore,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBranchesData implements GetBranchesData {
  const _GetBranchesData({this.total = 0, this.page = 1, this.limit = 1, final  List<Branch> data = const [], this.loadMore = false, this.perPage}): _data = data;
  factory _GetBranchesData.fromJson(Map<String, dynamic> json) => _$GetBranchesDataFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int limit;
 final  List<Branch> _data;
@override@JsonKey() List<Branch> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  bool loadMore;
@override final  int? perPage;

/// Create a copy of GetBranchesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBranchesDataCopyWith<_GetBranchesData> get copyWith => __$GetBranchesDataCopyWithImpl<_GetBranchesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBranchesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBranchesData&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,const DeepCollectionEquality().hash(_data),loadMore,perPage);

@override
String toString() {
  return 'GetBranchesData(total: $total, page: $page, limit: $limit, data: $data, loadMore: $loadMore, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetBranchesDataCopyWith<$Res> implements $GetBranchesDataCopyWith<$Res> {
  factory _$GetBranchesDataCopyWith(_GetBranchesData value, $Res Function(_GetBranchesData) _then) = __$GetBranchesDataCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int limit, List<Branch> data, bool loadMore, int? perPage
});




}
/// @nodoc
class __$GetBranchesDataCopyWithImpl<$Res>
    implements _$GetBranchesDataCopyWith<$Res> {
  __$GetBranchesDataCopyWithImpl(this._self, this._then);

  final _GetBranchesData _self;
  final $Res Function(_GetBranchesData) _then;

/// Create a copy of GetBranchesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? limit = null,Object? data = null,Object? loadMore = null,Object? perPage = freezed,}) {
  return _then(_GetBranchesData(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Branch>,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
