// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_paid_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecentlyPaidItem _$RecentlyPaidItemFromJson(Map<String, dynamic> json) {
  return _RecentlyPaidItem.fromJson(json);
}

/// @nodoc
mixin _$RecentlyPaidItem {
  String get uFirstName => throw _privateConstructorUsedError;
  String get uLastName => throw _privateConstructorUsedError;
  String get wWalletCode => throw _privateConstructorUsedError;
  String? get uMiddleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentlyPaidItemCopyWith<RecentlyPaidItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyPaidItemCopyWith<$Res> {
  factory $RecentlyPaidItemCopyWith(
          RecentlyPaidItem value, $Res Function(RecentlyPaidItem) then) =
      _$RecentlyPaidItemCopyWithImpl<$Res, RecentlyPaidItem>;
  @useResult
  $Res call(
      {String uFirstName,
      String uLastName,
      String wWalletCode,
      String? uMiddleName});
}

/// @nodoc
class _$RecentlyPaidItemCopyWithImpl<$Res, $Val extends RecentlyPaidItem>
    implements $RecentlyPaidItemCopyWith<$Res> {
  _$RecentlyPaidItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uFirstName = null,
    Object? uLastName = null,
    Object? wWalletCode = null,
    Object? uMiddleName = freezed,
  }) {
    return _then(_value.copyWith(
      uFirstName: null == uFirstName
          ? _value.uFirstName
          : uFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      uLastName: null == uLastName
          ? _value.uLastName
          : uLastName // ignore: cast_nullable_to_non_nullable
              as String,
      wWalletCode: null == wWalletCode
          ? _value.wWalletCode
          : wWalletCode // ignore: cast_nullable_to_non_nullable
              as String,
      uMiddleName: freezed == uMiddleName
          ? _value.uMiddleName
          : uMiddleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentlyPaidItemImplCopyWith<$Res>
    implements $RecentlyPaidItemCopyWith<$Res> {
  factory _$$RecentlyPaidItemImplCopyWith(_$RecentlyPaidItemImpl value,
          $Res Function(_$RecentlyPaidItemImpl) then) =
      __$$RecentlyPaidItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uFirstName,
      String uLastName,
      String wWalletCode,
      String? uMiddleName});
}

/// @nodoc
class __$$RecentlyPaidItemImplCopyWithImpl<$Res>
    extends _$RecentlyPaidItemCopyWithImpl<$Res, _$RecentlyPaidItemImpl>
    implements _$$RecentlyPaidItemImplCopyWith<$Res> {
  __$$RecentlyPaidItemImplCopyWithImpl(_$RecentlyPaidItemImpl _value,
      $Res Function(_$RecentlyPaidItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uFirstName = null,
    Object? uLastName = null,
    Object? wWalletCode = null,
    Object? uMiddleName = freezed,
  }) {
    return _then(_$RecentlyPaidItemImpl(
      uFirstName: null == uFirstName
          ? _value.uFirstName
          : uFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      uLastName: null == uLastName
          ? _value.uLastName
          : uLastName // ignore: cast_nullable_to_non_nullable
              as String,
      wWalletCode: null == wWalletCode
          ? _value.wWalletCode
          : wWalletCode // ignore: cast_nullable_to_non_nullable
              as String,
      uMiddleName: freezed == uMiddleName
          ? _value.uMiddleName
          : uMiddleName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecentlyPaidItemImpl implements _RecentlyPaidItem {
  const _$RecentlyPaidItemImpl(
      {required this.uFirstName,
      required this.uLastName,
      required this.wWalletCode,
      this.uMiddleName});

  factory _$RecentlyPaidItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecentlyPaidItemImplFromJson(json);

  @override
  final String uFirstName;
  @override
  final String uLastName;
  @override
  final String wWalletCode;
  @override
  final String? uMiddleName;

  @override
  String toString() {
    return 'RecentlyPaidItem(uFirstName: $uFirstName, uLastName: $uLastName, wWalletCode: $wWalletCode, uMiddleName: $uMiddleName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentlyPaidItemImpl &&
            (identical(other.uFirstName, uFirstName) ||
                other.uFirstName == uFirstName) &&
            (identical(other.uLastName, uLastName) ||
                other.uLastName == uLastName) &&
            (identical(other.wWalletCode, wWalletCode) ||
                other.wWalletCode == wWalletCode) &&
            (identical(other.uMiddleName, uMiddleName) ||
                other.uMiddleName == uMiddleName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uFirstName, uLastName, wWalletCode, uMiddleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentlyPaidItemImplCopyWith<_$RecentlyPaidItemImpl> get copyWith =>
      __$$RecentlyPaidItemImplCopyWithImpl<_$RecentlyPaidItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecentlyPaidItemImplToJson(
      this,
    );
  }
}

abstract class _RecentlyPaidItem implements RecentlyPaidItem {
  const factory _RecentlyPaidItem(
      {required final String uFirstName,
      required final String uLastName,
      required final String wWalletCode,
      final String? uMiddleName}) = _$RecentlyPaidItemImpl;

  factory _RecentlyPaidItem.fromJson(Map<String, dynamic> json) =
      _$RecentlyPaidItemImpl.fromJson;

  @override
  String get uFirstName;
  @override
  String get uLastName;
  @override
  String get wWalletCode;
  @override
  String? get uMiddleName;
  @override
  @JsonKey(ignore: true)
  _$$RecentlyPaidItemImplCopyWith<_$RecentlyPaidItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
