// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_link_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentLinkData {

 String get total; int get limit; int get page; List<PaymentLinkItem> get data; bool get loadMore;
/// Create a copy of PaymentLinkData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentLinkDataCopyWith<PaymentLinkData> get copyWith => _$PaymentLinkDataCopyWithImpl<PaymentLinkData>(this as PaymentLinkData, _$identity);

  /// Serializes this PaymentLinkData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentLinkData&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,page,const DeepCollectionEquality().hash(data),loadMore);

@override
String toString() {
  return 'PaymentLinkData(total: $total, limit: $limit, page: $page, data: $data, loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class $PaymentLinkDataCopyWith<$Res>  {
  factory $PaymentLinkDataCopyWith(PaymentLinkData value, $Res Function(PaymentLinkData) _then) = _$PaymentLinkDataCopyWithImpl;
@useResult
$Res call({
 String total, int limit, int page, List<PaymentLinkItem> data, bool loadMore
});




}
/// @nodoc
class _$PaymentLinkDataCopyWithImpl<$Res>
    implements $PaymentLinkDataCopyWith<$Res> {
  _$PaymentLinkDataCopyWithImpl(this._self, this._then);

  final PaymentLinkData _self;
  final $Res Function(PaymentLinkData) _then;

/// Create a copy of PaymentLinkData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? limit = null,Object? page = null,Object? data = null,Object? loadMore = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PaymentLinkItem>,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentLinkData].
extension PaymentLinkDataPatterns on PaymentLinkData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentLinkData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentLinkData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentLinkData value)  $default,){
final _that = this;
switch (_that) {
case _PaymentLinkData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentLinkData value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentLinkData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String total,  int limit,  int page,  List<PaymentLinkItem> data,  bool loadMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentLinkData() when $default != null:
return $default(_that.total,_that.limit,_that.page,_that.data,_that.loadMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String total,  int limit,  int page,  List<PaymentLinkItem> data,  bool loadMore)  $default,) {final _that = this;
switch (_that) {
case _PaymentLinkData():
return $default(_that.total,_that.limit,_that.page,_that.data,_that.loadMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String total,  int limit,  int page,  List<PaymentLinkItem> data,  bool loadMore)?  $default,) {final _that = this;
switch (_that) {
case _PaymentLinkData() when $default != null:
return $default(_that.total,_that.limit,_that.page,_that.data,_that.loadMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentLinkData implements PaymentLinkData {
  const _PaymentLinkData({required this.total, required this.limit, required this.page, final  List<PaymentLinkItem> data = const [], this.loadMore = false}): _data = data;
  factory _PaymentLinkData.fromJson(Map<String, dynamic> json) => _$PaymentLinkDataFromJson(json);

@override final  String total;
@override final  int limit;
@override final  int page;
 final  List<PaymentLinkItem> _data;
@override@JsonKey() List<PaymentLinkItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  bool loadMore;

/// Create a copy of PaymentLinkData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentLinkDataCopyWith<_PaymentLinkData> get copyWith => __$PaymentLinkDataCopyWithImpl<_PaymentLinkData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentLinkDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentLinkData&&(identical(other.total, total) || other.total == total)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,limit,page,const DeepCollectionEquality().hash(_data),loadMore);

@override
String toString() {
  return 'PaymentLinkData(total: $total, limit: $limit, page: $page, data: $data, loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class _$PaymentLinkDataCopyWith<$Res> implements $PaymentLinkDataCopyWith<$Res> {
  factory _$PaymentLinkDataCopyWith(_PaymentLinkData value, $Res Function(_PaymentLinkData) _then) = __$PaymentLinkDataCopyWithImpl;
@override @useResult
$Res call({
 String total, int limit, int page, List<PaymentLinkItem> data, bool loadMore
});




}
/// @nodoc
class __$PaymentLinkDataCopyWithImpl<$Res>
    implements _$PaymentLinkDataCopyWith<$Res> {
  __$PaymentLinkDataCopyWithImpl(this._self, this._then);

  final _PaymentLinkData _self;
  final $Res Function(_PaymentLinkData) _then;

/// Create a copy of PaymentLinkData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? limit = null,Object? page = null,Object? data = null,Object? loadMore = null,}) {
  return _then(_PaymentLinkData(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PaymentLinkItem>,loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
