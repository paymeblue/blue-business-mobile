// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_branches_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBranchesData _$GetBranchesDataFromJson(Map<String, dynamic> json) {
  return _GetBranchesData.fromJson(json);
}

/// @nodoc
mixin _$GetBranchesData {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<Branch> get data => throw _privateConstructorUsedError;
  bool get loadMore => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;

  /// Serializes this GetBranchesData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBranchesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBranchesDataCopyWith<GetBranchesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBranchesDataCopyWith<$Res> {
  factory $GetBranchesDataCopyWith(
          GetBranchesData value, $Res Function(GetBranchesData) then) =
      _$GetBranchesDataCopyWithImpl<$Res, GetBranchesData>;
  @useResult
  $Res call(
      {int total,
      int page,
      int limit,
      List<Branch> data,
      bool loadMore,
      int? perPage});
}

/// @nodoc
class _$GetBranchesDataCopyWithImpl<$Res, $Val extends GetBranchesData>
    implements $GetBranchesDataCopyWith<$Res> {
  _$GetBranchesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBranchesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? data = null,
    Object? loadMore = null,
    Object? perPage = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
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
abstract class _$$GetBranchesDataImplCopyWith<$Res>
    implements $GetBranchesDataCopyWith<$Res> {
  factory _$$GetBranchesDataImplCopyWith(_$GetBranchesDataImpl value,
          $Res Function(_$GetBranchesDataImpl) then) =
      __$$GetBranchesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int page,
      int limit,
      List<Branch> data,
      bool loadMore,
      int? perPage});
}

/// @nodoc
class __$$GetBranchesDataImplCopyWithImpl<$Res>
    extends _$GetBranchesDataCopyWithImpl<$Res, _$GetBranchesDataImpl>
    implements _$$GetBranchesDataImplCopyWith<$Res> {
  __$$GetBranchesDataImplCopyWithImpl(
      _$GetBranchesDataImpl _value, $Res Function(_$GetBranchesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBranchesData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? data = null,
    Object? loadMore = null,
    Object? perPage = freezed,
  }) {
    return _then(_$GetBranchesDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
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
class _$GetBranchesDataImpl implements _GetBranchesData {
  const _$GetBranchesDataImpl(
      {this.total = 0,
      this.page = 1,
      this.limit = 1,
      final List<Branch> data = const [],
      this.loadMore = false,
      this.perPage})
      : _data = data;

  factory _$GetBranchesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBranchesDataImplFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  final List<Branch> _data;
  @override
  @JsonKey()
  List<Branch> get data {
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
    return 'GetBranchesData(total: $total, page: $page, limit: $limit, data: $data, loadMore: $loadMore, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBranchesDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, limit,
      const DeepCollectionEquality().hash(_data), loadMore, perPage);

  /// Create a copy of GetBranchesData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBranchesDataImplCopyWith<_$GetBranchesDataImpl> get copyWith =>
      __$$GetBranchesDataImplCopyWithImpl<_$GetBranchesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBranchesDataImplToJson(
      this,
    );
  }
}

abstract class _GetBranchesData implements GetBranchesData {
  const factory _GetBranchesData(
      {final int total,
      final int page,
      final int limit,
      final List<Branch> data,
      final bool loadMore,
      final int? perPage}) = _$GetBranchesDataImpl;

  factory _GetBranchesData.fromJson(Map<String, dynamic> json) =
      _$GetBranchesDataImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  List<Branch> get data;
  @override
  bool get loadMore;
  @override
  int? get perPage;

  /// Create a copy of GetBranchesData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBranchesDataImplCopyWith<_$GetBranchesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
