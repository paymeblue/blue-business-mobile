// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetStaffData {

 int get total; int get limit; int get page; List<Staff> get data; bool get loadMore; int? get perPage;
/// Create a copy of GetStaffData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStaffDataCopyWith<GetStaffData> get copyWith => _$GetStaffDataCopyWithImpl<GetStaffData>(this as GetStaffData, _$identity);

  /// Serializes this GetStaffData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStaffData&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,page,const DeepCollectionEquality().hash(data),loadMore,perPage);

@override
String toString() {
  return 'GetStaffData(total: $total, limit: $limit, page: $page, data: $data, loadMore: $loadMore, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class $GetStaffDataCopyWith<$Res>  {
  factory $GetStaffDataCopyWith(GetStaffData value, $Res Function(GetStaffData) _then) = _$GetStaffDataCopyWithImpl;
@useResult
$Res call({
 int total, int limit, int page, List<Staff> data, bool loadMore, int? perPage
});




}
/// @nodoc
class _$GetStaffDataCopyWithImpl<$Res>
    implements $GetStaffDataCopyWith<$Res> {
  _$GetStaffDataCopyWithImpl(this._self, this._then);

  final GetStaffData _self;
  final $Res Function(GetStaffData) _then;

/// Create a copy of GetStaffData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? limit = null,Object? page = null,Object? data = null,Object? loadMore = null,Object? perPage = freezed,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Staff>,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetStaffData].
extension GetStaffDataPatterns on GetStaffData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetStaffData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetStaffData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetStaffData value)  $default,){
final _that = this;
switch (_that) {
case _GetStaffData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetStaffData value)?  $default,){
final _that = this;
switch (_that) {
case _GetStaffData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int limit,  int page,  List<Staff> data,  bool loadMore,  int? perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetStaffData() when $default != null:
return $default(_that.total,_that.limit,_that.page,_that.data,_that.loadMore,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int limit,  int page,  List<Staff> data,  bool loadMore,  int? perPage)  $default,) {final _that = this;
switch (_that) {
case _GetStaffData():
return $default(_that.total,_that.limit,_that.page,_that.data,_that.loadMore,_that.perPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int limit,  int page,  List<Staff> data,  bool loadMore,  int? perPage)?  $default,) {final _that = this;
switch (_that) {
case _GetStaffData() when $default != null:
return $default(_that.total,_that.limit,_that.page,_that.data,_that.loadMore,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetStaffData implements GetStaffData {
  const _GetStaffData({required this.total, required this.limit, required this.page, final  List<Staff> data = const [], this.loadMore = false, this.perPage}): _data = data;
  factory _GetStaffData.fromJson(Map<String, dynamic> json) => _$GetStaffDataFromJson(json);

@override final  int total;
@override final  int limit;
@override final  int page;
 final  List<Staff> _data;
@override@JsonKey() List<Staff> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  bool loadMore;
@override final  int? perPage;

/// Create a copy of GetStaffData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStaffDataCopyWith<_GetStaffData> get copyWith => __$GetStaffDataCopyWithImpl<_GetStaffData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetStaffDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStaffData&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,page,const DeepCollectionEquality().hash(_data),loadMore,perPage);

@override
String toString() {
  return 'GetStaffData(total: $total, limit: $limit, page: $page, data: $data, loadMore: $loadMore, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetStaffDataCopyWith<$Res> implements $GetStaffDataCopyWith<$Res> {
  factory _$GetStaffDataCopyWith(_GetStaffData value, $Res Function(_GetStaffData) _then) = __$GetStaffDataCopyWithImpl;
@override @useResult
$Res call({
 int total, int limit, int page, List<Staff> data, bool loadMore, int? perPage
});




}
/// @nodoc
class __$GetStaffDataCopyWithImpl<$Res>
    implements _$GetStaffDataCopyWith<$Res> {
  __$GetStaffDataCopyWithImpl(this._self, this._then);

  final _GetStaffData _self;
  final $Res Function(_GetStaffData) _then;

/// Create a copy of GetStaffData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? limit = null,Object? page = null,Object? data = null,Object? loadMore = null,Object? perPage = freezed,}) {
  return _then(_GetStaffData(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Staff>,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
