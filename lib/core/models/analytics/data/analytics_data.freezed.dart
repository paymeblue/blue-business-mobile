// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticsData _$AnalyticsDataFromJson(Map<String, dynamic> json) {
  return _AnalyticsData.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsData {
  AnalyticsItem get desktop => throw _privateConstructorUsedError;
  AnalyticsItem get mobile => throw _privateConstructorUsedError;

  /// Serializes this AnalyticsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsDataCopyWith<AnalyticsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsDataCopyWith<$Res> {
  factory $AnalyticsDataCopyWith(
          AnalyticsData value, $Res Function(AnalyticsData) then) =
      _$AnalyticsDataCopyWithImpl<$Res, AnalyticsData>;
  @useResult
  $Res call({AnalyticsItem desktop, AnalyticsItem mobile});

  $AnalyticsItemCopyWith<$Res> get desktop;
  $AnalyticsItemCopyWith<$Res> get mobile;
}

/// @nodoc
class _$AnalyticsDataCopyWithImpl<$Res, $Val extends AnalyticsData>
    implements $AnalyticsDataCopyWith<$Res> {
  _$AnalyticsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desktop = null,
    Object? mobile = null,
  }) {
    return _then(_value.copyWith(
      desktop: null == desktop
          ? _value.desktop
          : desktop // ignore: cast_nullable_to_non_nullable
              as AnalyticsItem,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as AnalyticsItem,
    ) as $Val);
  }

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsItemCopyWith<$Res> get desktop {
    return $AnalyticsItemCopyWith<$Res>(_value.desktop, (value) {
      return _then(_value.copyWith(desktop: value) as $Val);
    });
  }

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AnalyticsItemCopyWith<$Res> get mobile {
    return $AnalyticsItemCopyWith<$Res>(_value.mobile, (value) {
      return _then(_value.copyWith(mobile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsDataImplCopyWith<$Res>
    implements $AnalyticsDataCopyWith<$Res> {
  factory _$$AnalyticsDataImplCopyWith(
          _$AnalyticsDataImpl value, $Res Function(_$AnalyticsDataImpl) then) =
      __$$AnalyticsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AnalyticsItem desktop, AnalyticsItem mobile});

  @override
  $AnalyticsItemCopyWith<$Res> get desktop;
  @override
  $AnalyticsItemCopyWith<$Res> get mobile;
}

/// @nodoc
class __$$AnalyticsDataImplCopyWithImpl<$Res>
    extends _$AnalyticsDataCopyWithImpl<$Res, _$AnalyticsDataImpl>
    implements _$$AnalyticsDataImplCopyWith<$Res> {
  __$$AnalyticsDataImplCopyWithImpl(
      _$AnalyticsDataImpl _value, $Res Function(_$AnalyticsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desktop = null,
    Object? mobile = null,
  }) {
    return _then(_$AnalyticsDataImpl(
      desktop: null == desktop
          ? _value.desktop
          : desktop // ignore: cast_nullable_to_non_nullable
              as AnalyticsItem,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as AnalyticsItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsDataImpl implements _AnalyticsData {
  const _$AnalyticsDataImpl({required this.desktop, required this.mobile});

  factory _$AnalyticsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsDataImplFromJson(json);

  @override
  final AnalyticsItem desktop;
  @override
  final AnalyticsItem mobile;

  @override
  String toString() {
    return 'AnalyticsData(desktop: $desktop, mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsDataImpl &&
            (identical(other.desktop, desktop) || other.desktop == desktop) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, desktop, mobile);

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsDataImplCopyWith<_$AnalyticsDataImpl> get copyWith =>
      __$$AnalyticsDataImplCopyWithImpl<_$AnalyticsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsDataImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsData implements AnalyticsData {
  const factory _AnalyticsData(
      {required final AnalyticsItem desktop,
      required final AnalyticsItem mobile}) = _$AnalyticsDataImpl;

  factory _AnalyticsData.fromJson(Map<String, dynamic> json) =
      _$AnalyticsDataImpl.fromJson;

  @override
  AnalyticsItem get desktop;
  @override
  AnalyticsItem get mobile;

  /// Create a copy of AnalyticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsDataImplCopyWith<_$AnalyticsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
