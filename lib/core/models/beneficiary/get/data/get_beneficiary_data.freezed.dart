// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_beneficiary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBeneficiaryData _$GetBeneficiaryDataFromJson(Map<String, dynamic> json) {
  return _GetBeneficiaryData.fromJson(json);
}

/// @nodoc
mixin _$GetBeneficiaryData {
  String get total => throw _privateConstructorUsedError;
  String get limit => throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;
  List<BlueBeneficiary> get data => throw _privateConstructorUsedError;
  bool get loadMore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBeneficiaryDataCopyWith<GetBeneficiaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBeneficiaryDataCopyWith<$Res> {
  factory $GetBeneficiaryDataCopyWith(
          GetBeneficiaryData value, $Res Function(GetBeneficiaryData) then) =
      _$GetBeneficiaryDataCopyWithImpl<$Res, GetBeneficiaryData>;
  @useResult
  $Res call(
      {String total,
      String limit,
      String page,
      List<BlueBeneficiary> data,
      bool loadMore});
}

/// @nodoc
class _$GetBeneficiaryDataCopyWithImpl<$Res, $Val extends GetBeneficiaryData>
    implements $GetBeneficiaryDataCopyWith<$Res> {
  _$GetBeneficiaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? data = null,
    Object? loadMore = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BlueBeneficiary>,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBeneficiaryDataImplCopyWith<$Res>
    implements $GetBeneficiaryDataCopyWith<$Res> {
  factory _$$GetBeneficiaryDataImplCopyWith(_$GetBeneficiaryDataImpl value,
          $Res Function(_$GetBeneficiaryDataImpl) then) =
      __$$GetBeneficiaryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      String limit,
      String page,
      List<BlueBeneficiary> data,
      bool loadMore});
}

/// @nodoc
class __$$GetBeneficiaryDataImplCopyWithImpl<$Res>
    extends _$GetBeneficiaryDataCopyWithImpl<$Res, _$GetBeneficiaryDataImpl>
    implements _$$GetBeneficiaryDataImplCopyWith<$Res> {
  __$$GetBeneficiaryDataImplCopyWithImpl(_$GetBeneficiaryDataImpl _value,
      $Res Function(_$GetBeneficiaryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? data = null,
    Object? loadMore = null,
  }) {
    return _then(_$GetBeneficiaryDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BlueBeneficiary>,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBeneficiaryDataImpl implements _GetBeneficiaryData {
  const _$GetBeneficiaryDataImpl(
      {required this.total,
      required this.limit,
      required this.page,
      final List<BlueBeneficiary> data = const [],
      this.loadMore = false})
      : _data = data;

  factory _$GetBeneficiaryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBeneficiaryDataImplFromJson(json);

  @override
  final String total;
  @override
  final String limit;
  @override
  final String page;
  final List<BlueBeneficiary> _data;
  @override
  @JsonKey()
  List<BlueBeneficiary> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool loadMore;

  @override
  String toString() {
    return 'GetBeneficiaryData(total: $total, limit: $limit, page: $page, data: $data, loadMore: $loadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBeneficiaryDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, limit, page,
      const DeepCollectionEquality().hash(_data), loadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBeneficiaryDataImplCopyWith<_$GetBeneficiaryDataImpl> get copyWith =>
      __$$GetBeneficiaryDataImplCopyWithImpl<_$GetBeneficiaryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBeneficiaryDataImplToJson(
      this,
    );
  }
}

abstract class _GetBeneficiaryData implements GetBeneficiaryData {
  const factory _GetBeneficiaryData(
      {required final String total,
      required final String limit,
      required final String page,
      final List<BlueBeneficiary> data,
      final bool loadMore}) = _$GetBeneficiaryDataImpl;

  factory _GetBeneficiaryData.fromJson(Map<String, dynamic> json) =
      _$GetBeneficiaryDataImpl.fromJson;

  @override
  String get total;
  @override
  String get limit;
  @override
  String get page;
  @override
  List<BlueBeneficiary> get data;
  @override
  bool get loadMore;
  @override
  @JsonKey(ignore: true)
  _$$GetBeneficiaryDataImplCopyWith<_$GetBeneficiaryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
