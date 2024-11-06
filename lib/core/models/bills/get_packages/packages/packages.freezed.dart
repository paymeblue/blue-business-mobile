// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillPackage _$BillPackageFromJson(Map<String, dynamic> json) {
  return _BillPackage.fromJson(json);
}

/// @nodoc
mixin _$BillPackage {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  /// Serializes this BillPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillPackageCopyWith<BillPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillPackageCopyWith<$Res> {
  factory $BillPackageCopyWith(
          BillPackage value, $Res Function(BillPackage) then) =
      _$BillPackageCopyWithImpl<$Res, BillPackage>;
  @useResult
  $Res call({int id, String name, String amount});
}

/// @nodoc
class _$BillPackageCopyWithImpl<$Res, $Val extends BillPackage>
    implements $BillPackageCopyWith<$Res> {
  _$BillPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillPackageImplCopyWith<$Res>
    implements $BillPackageCopyWith<$Res> {
  factory _$$BillPackageImplCopyWith(
          _$BillPackageImpl value, $Res Function(_$BillPackageImpl) then) =
      __$$BillPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String amount});
}

/// @nodoc
class __$$BillPackageImplCopyWithImpl<$Res>
    extends _$BillPackageCopyWithImpl<$Res, _$BillPackageImpl>
    implements _$$BillPackageImplCopyWith<$Res> {
  __$$BillPackageImplCopyWithImpl(
      _$BillPackageImpl _value, $Res Function(_$BillPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_$BillPackageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillPackageImpl implements _BillPackage {
  const _$BillPackageImpl(
      {required this.id, required this.name, required this.amount});

  factory _$BillPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillPackageImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String amount;

  @override
  String toString() {
    return 'BillPackage(id: $id, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillPackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount);

  /// Create a copy of BillPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillPackageImplCopyWith<_$BillPackageImpl> get copyWith =>
      __$$BillPackageImplCopyWithImpl<_$BillPackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillPackageImplToJson(
      this,
    );
  }
}

abstract class _BillPackage implements BillPackage {
  const factory _BillPackage(
      {required final int id,
      required final String name,
      required final String amount}) = _$BillPackageImpl;

  factory _BillPackage.fromJson(Map<String, dynamic> json) =
      _$BillPackageImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get amount;

  /// Create a copy of BillPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillPackageImplCopyWith<_$BillPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
