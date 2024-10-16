// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_link_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentLinkData _$PaymentLinkDataFromJson(Map<String, dynamic> json) {
  return _PaymentLinkData.fromJson(json);
}

/// @nodoc
mixin _$PaymentLinkData {
  String get total => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<PaymentLinkItem> get data => throw _privateConstructorUsedError;
  bool get loadMore => throw _privateConstructorUsedError;

  /// Serializes this PaymentLinkData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentLinkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentLinkDataCopyWith<PaymentLinkData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentLinkDataCopyWith<$Res> {
  factory $PaymentLinkDataCopyWith(
          PaymentLinkData value, $Res Function(PaymentLinkData) then) =
      _$PaymentLinkDataCopyWithImpl<$Res, PaymentLinkData>;
  @useResult
  $Res call(
      {String total,
      int limit,
      int page,
      List<PaymentLinkItem> data,
      bool loadMore});
}

/// @nodoc
class _$PaymentLinkDataCopyWithImpl<$Res, $Val extends PaymentLinkData>
    implements $PaymentLinkDataCopyWith<$Res> {
  _$PaymentLinkDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentLinkData
  /// with the given fields replaced by the non-null parameter values.
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
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaymentLinkItem>,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentLinkDataImplCopyWith<$Res>
    implements $PaymentLinkDataCopyWith<$Res> {
  factory _$$PaymentLinkDataImplCopyWith(_$PaymentLinkDataImpl value,
          $Res Function(_$PaymentLinkDataImpl) then) =
      __$$PaymentLinkDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      int limit,
      int page,
      List<PaymentLinkItem> data,
      bool loadMore});
}

/// @nodoc
class __$$PaymentLinkDataImplCopyWithImpl<$Res>
    extends _$PaymentLinkDataCopyWithImpl<$Res, _$PaymentLinkDataImpl>
    implements _$$PaymentLinkDataImplCopyWith<$Res> {
  __$$PaymentLinkDataImplCopyWithImpl(
      _$PaymentLinkDataImpl _value, $Res Function(_$PaymentLinkDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentLinkData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? data = null,
    Object? loadMore = null,
  }) {
    return _then(_$PaymentLinkDataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<PaymentLinkItem>,
      loadMore: null == loadMore
          ? _value.loadMore
          : loadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentLinkDataImpl implements _PaymentLinkData {
  const _$PaymentLinkDataImpl(
      {required this.total,
      required this.limit,
      required this.page,
      final List<PaymentLinkItem> data = const [],
      this.loadMore = false})
      : _data = data;

  factory _$PaymentLinkDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentLinkDataImplFromJson(json);

  @override
  final String total;
  @override
  final int limit;
  @override
  final int page;
  final List<PaymentLinkItem> _data;
  @override
  @JsonKey()
  List<PaymentLinkItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final bool loadMore;

  @override
  String toString() {
    return 'PaymentLinkData(total: $total, limit: $limit, page: $page, data: $data, loadMore: $loadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentLinkDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.loadMore, loadMore) ||
                other.loadMore == loadMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, limit, page,
      const DeepCollectionEquality().hash(_data), loadMore);

  /// Create a copy of PaymentLinkData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentLinkDataImplCopyWith<_$PaymentLinkDataImpl> get copyWith =>
      __$$PaymentLinkDataImplCopyWithImpl<_$PaymentLinkDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentLinkDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentLinkData implements PaymentLinkData {
  const factory _PaymentLinkData(
      {required final String total,
      required final int limit,
      required final int page,
      final List<PaymentLinkItem> data,
      final bool loadMore}) = _$PaymentLinkDataImpl;

  factory _PaymentLinkData.fromJson(Map<String, dynamic> json) =
      _$PaymentLinkDataImpl.fromJson;

  @override
  String get total;
  @override
  int get limit;
  @override
  int get page;
  @override
  List<PaymentLinkItem> get data;
  @override
  bool get loadMore;

  /// Create a copy of PaymentLinkData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentLinkDataImplCopyWith<_$PaymentLinkDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
