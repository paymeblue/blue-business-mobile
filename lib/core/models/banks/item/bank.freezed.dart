// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankItem _$BankItemFromJson(Map<String, dynamic> json) {
  return _BankItem.fromJson(json);
}

/// @nodoc
mixin _$BankItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;

  /// Serializes this BankItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BankItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BankItemCopyWith<BankItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankItemCopyWith<$Res> {
  factory $BankItemCopyWith(BankItem value, $Res Function(BankItem) then) =
      _$BankItemCopyWithImpl<$Res, BankItem>;
  @useResult
  $Res call({int id, String name, String? logoUrl});
}

/// @nodoc
class _$BankItemCopyWithImpl<$Res, $Val extends BankItem>
    implements $BankItemCopyWith<$Res> {
  _$BankItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BankItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = freezed,
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
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankItemImplCopyWith<$Res>
    implements $BankItemCopyWith<$Res> {
  factory _$$BankItemImplCopyWith(
          _$BankItemImpl value, $Res Function(_$BankItemImpl) then) =
      __$$BankItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? logoUrl});
}

/// @nodoc
class __$$BankItemImplCopyWithImpl<$Res>
    extends _$BankItemCopyWithImpl<$Res, _$BankItemImpl>
    implements _$$BankItemImplCopyWith<$Res> {
  __$$BankItemImplCopyWithImpl(
      _$BankItemImpl _value, $Res Function(_$BankItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of BankItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = freezed,
  }) {
    return _then(_$BankItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankItemImpl implements _BankItem {
  const _$BankItemImpl({required this.id, required this.name, this.logoUrl});

  factory _$BankItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankItemImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? logoUrl;

  @override
  String toString() {
    return 'BankItem(id: $id, name: $name, logoUrl: $logoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoUrl);

  /// Create a copy of BankItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BankItemImplCopyWith<_$BankItemImpl> get copyWith =>
      __$$BankItemImplCopyWithImpl<_$BankItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankItemImplToJson(
      this,
    );
  }
}

abstract class _BankItem implements BankItem {
  const factory _BankItem(
      {required final int id,
      required final String name,
      final String? logoUrl}) = _$BankItemImpl;

  factory _BankItem.fromJson(Map<String, dynamic> json) =
      _$BankItemImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get logoUrl;

  /// Create a copy of BankItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BankItemImplCopyWith<_$BankItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
