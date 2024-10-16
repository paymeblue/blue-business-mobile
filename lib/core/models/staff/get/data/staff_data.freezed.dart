// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStaffData _$GetStaffDataFromJson(Map<String, dynamic> json) {
  return _GetStaffData.fromJson(json);
}

/// @nodoc
mixin _$GetStaffData {
  int get total => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<Staff> get data => throw _privateConstructorUsedError;
  bool get loadMore => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;

  /// Serializes this GetStaffData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetStaffData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStaffDataCopyWith<GetStaffData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStaffDataCopyWith<$Res> {
  factory $GetStaffDataCopyWith(
          GetStaffData value, $Res Function(GetStaffData) then) =
      _$GetStaffDataCopyWithImpl<$Res, GetStaffData>;
  @useResult
  $Res call(
      {int total,
      int limit,
      int page,
      List<Staff> data,
      bool loadMore,
      int? perPage});
}

/// @nodoc
class _$GetStaffDataCopyWithImpl<$Res, $Val extends GetStaffData>
    implements $GetStaffDataCopyWith<$Res> {
  _$GetStaffDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStaffData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? data = null,
    Object? loadMore = null,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStaffDataImplCopyWith<$Res>
    implements $GetStaffDataCopyWith<$Res> {
  factory _$$GetStaffDataImplCopyWith(
          _$GetStaffDataImpl value, $Res Function(_$GetStaffDataImpl) then) =
      __$$GetStaffDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int limit,
      int page,
      List<Staff> data,
      bool loadMore,
      int? perPage});
}

/// @nodoc
class __$$GetStaffDataImplCopyWithImpl<$Res>
    extends _$GetStaffDataCopyWithImpl<$Res, _$GetStaffDataImpl>
    implements _$$GetStaffDataImplCopyWith<$Res> {
  __$$GetStaffDataImplCopyWithImpl(
      _$GetStaffDataImpl _value, $Res Function(_$GetStaffDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetStaffData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? data = null,
    Object? loadMore = null,
    Object? perPage = freezed,
  }) {
    return _then(_$GetStaffDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Staff>,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStaffDataImpl implements _GetStaffData {
  const _$GetStaffDataImpl(
      {required this.total,
      required this.limit,
      required this.page,
      final List<Staff> data = const [],
      this.loadMore = false,
      this.perPage})
      : _data = data;

  factory _$GetStaffDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStaffDataImplFromJson(json);

  @override
  final int total;
  @override
  final int limit;
  @override
  final int page;
  final List<Staff> _data;
  @override
  @JsonKey()
  List<Staff> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool loadMore;
  @override
  final int? perPage;

  @override
  String toString() {
    return 'GetStaffData(total: $total, limit: $limit, page: $page, data: $data, loadMore: $loadMore, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, limit, page,
      const DeepCollectionEquality().hash(_data), loadMore, perPage);

  /// Create a copy of GetStaffData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffDataImplCopyWith<_$GetStaffDataImpl> get copyWith =>
      __$$GetStaffDataImplCopyWithImpl<_$GetStaffDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStaffDataImplToJson(
      this,
    );
  }
}

abstract class _GetStaffData implements GetStaffData {
  const factory _GetStaffData(
      {required final int total,
      required final int limit,
      required final int page,
      final List<Staff> data,
      final bool loadMore,
      final int? perPage}) = _$GetStaffDataImpl;

  factory _GetStaffData.fromJson(Map<String, dynamic> json) =
      _$GetStaffDataImpl.fromJson;

  @override
  int get total;
  @override
  int get limit;
  @override
  int get page;
  @override
  List<Staff> get data;
  @override
  bool get loadMore;
  @override
  int? get perPage;

  /// Create a copy of GetStaffData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStaffDataImplCopyWith<_$GetStaffDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
