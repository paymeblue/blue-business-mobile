// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_paid_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecentlyPaidData _$RecentlyPaidDataFromJson(Map<String, dynamic> json) {
  return _RecentlyPaidData.fromJson(json);
}

/// @nodoc
mixin _$RecentlyPaidData {
  List<RecentlyPaidItem> get beneficiaries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentlyPaidDataCopyWith<RecentlyPaidData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyPaidDataCopyWith<$Res> {
  factory $RecentlyPaidDataCopyWith(
          RecentlyPaidData value, $Res Function(RecentlyPaidData) then) =
      _$RecentlyPaidDataCopyWithImpl<$Res, RecentlyPaidData>;
  @useResult
  $Res call({List<RecentlyPaidItem> beneficiaries});
}

/// @nodoc
class _$RecentlyPaidDataCopyWithImpl<$Res, $Val extends RecentlyPaidData>
    implements $RecentlyPaidDataCopyWith<$Res> {
  _$RecentlyPaidDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiaries = null,
  }) {
    return _then(_value.copyWith(
      beneficiaries: null == beneficiaries
          ? _value.beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<RecentlyPaidItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentlyPaidDataImplCopyWith<$Res>
    implements $RecentlyPaidDataCopyWith<$Res> {
  factory _$$RecentlyPaidDataImplCopyWith(_$RecentlyPaidDataImpl value,
          $Res Function(_$RecentlyPaidDataImpl) then) =
      __$$RecentlyPaidDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecentlyPaidItem> beneficiaries});
}

/// @nodoc
class __$$RecentlyPaidDataImplCopyWithImpl<$Res>
    extends _$RecentlyPaidDataCopyWithImpl<$Res, _$RecentlyPaidDataImpl>
    implements _$$RecentlyPaidDataImplCopyWith<$Res> {
  __$$RecentlyPaidDataImplCopyWithImpl(_$RecentlyPaidDataImpl _value,
      $Res Function(_$RecentlyPaidDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiaries = null,
  }) {
    return _then(_$RecentlyPaidDataImpl(
      beneficiaries: null == beneficiaries
          ? _value._beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<RecentlyPaidItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentlyPaidDataImpl implements _RecentlyPaidData {
  const _$RecentlyPaidDataImpl(
      {required final List<RecentlyPaidItem> beneficiaries})
      : _beneficiaries = beneficiaries;

  factory _$RecentlyPaidDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentlyPaidDataImplFromJson(json);

  final List<RecentlyPaidItem> _beneficiaries;
  @override
  List<RecentlyPaidItem> get beneficiaries {
    if (_beneficiaries is EqualUnmodifiableListView) return _beneficiaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beneficiaries);
  }

  @override
  String toString() {
    return 'RecentlyPaidData(beneficiaries: $beneficiaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentlyPaidDataImpl &&
            const DeepCollectionEquality()
                .equals(other._beneficiaries, _beneficiaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_beneficiaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentlyPaidDataImplCopyWith<_$RecentlyPaidDataImpl> get copyWith =>
      __$$RecentlyPaidDataImplCopyWithImpl<_$RecentlyPaidDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentlyPaidDataImplToJson(
      this,
    );
  }
}

abstract class _RecentlyPaidData implements RecentlyPaidData {
  const factory _RecentlyPaidData(
          {required final List<RecentlyPaidItem> beneficiaries}) =
      _$RecentlyPaidDataImpl;

  factory _RecentlyPaidData.fromJson(Map<String, dynamic> json) =
      _$RecentlyPaidDataImpl.fromJson;

  @override
  List<RecentlyPaidItem> get beneficiaries;
  @override
  @JsonKey(ignore: true)
  _$$RecentlyPaidDataImplCopyWith<_$RecentlyPaidDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
